import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/core/routes/i_dynamic_link_serivce.dart';
import 'package:vybrnt_mvp/features/organization/domain/i_org_service.dart';

part 'org_bloc.freezed.dart';
part 'org_event.dart';
part 'org_state.dart';

@injectable
class OrgBloc extends Bloc<OrgEvent, OrgState> {
  final IOrgService _orgService;
  final IDynamicLinkService _dynamicLinkService;

  OrgBloc(this._orgService, this._dynamicLinkService)
      : super(OrgState.initial());

  StreamSubscription<KtList<String>> _adminsStreamSubscription;
  StreamSubscription<KtList<String>> _membersStreamSubscription;

  @override
  Stream<OrgState> mapEventToState(
    OrgEvent event,
  ) async* {
    yield* event.map(getData: (e) async* {
      final isFollowing = await _orgService.isFollowing(e.orgID);
      final isNotified = await _orgService.isNotified(e.orgID);
      final postCount = await _orgService.postCount(e.orgID);
      final photoCount = await _orgService.photoCount(e.orgID);
      final isBlocking = await _orgService.isBlocking(e.orgID);
      final shareLink = await _dynamicLinkService.createOrgLink(e.orgID);

      yield state.copyWith(
          isFollowing: isFollowing,
          isNotified: isNotified,
          postCount: postCount,
          photoCount: photoCount,
          isBlocking: isBlocking,
          shareLink: shareLink);
      await _adminsStreamSubscription?.cancel();
      _adminsStreamSubscription = _orgService.admins(e.orgID).listen(
          (admins) => add(OrgEvent.adminsReceived(admins, e.currentUserID)));

      await _membersStreamSubscription?.cancel();
      _membersStreamSubscription = _orgService.members(e.orgID).listen(
          (userIDList) =>
              add(OrgEvent.membersReceived(userIDList, e.currentUserID)));
    }, adminsReceived: (e) async* {
      final isAdmin = e.admins.contains(e.currentUserID);
      yield state.copyWith(
        isAdmin: isAdmin,
      );
    }, membersReceived: (e) async* {
      yield state.copyWith(
          userIDList: e.userIDList,
          memberCount: e.userIDList.size,
          isFollowing: e.userIDList.contains(e.currentUserID));
    }, addFollower: (e) async* {
      await _orgService.followOrg(e.orgID);
    }, removeFollower: (e) async* {
      await _orgService.unfollowOrg(e.orgID);
    }, addUserToNotify: (e) async* {
      await _orgService.addUserToNotify(e.orgID);
      yield state.copyWith(isNotified: true);
    }, removeUserFromNotify: (e) async* {
      await _orgService.removeUserFromNotify(e.orgID);
      yield state.copyWith(isNotified: false);
    }, blockOrg: (e) async* {
      await _orgService.blockOrg(e.orgID);
      yield state.copyWith(isBlocking: true);
    }, unBlockOrg: (e) async* {
      await _orgService.unblockOrg(e.orgID);
      yield state.copyWith(isBlocking: false);
    });
  }

  @override
  Future<void> close() async {
    await _adminsStreamSubscription.cancel();
    await _membersStreamSubscription.cancel();
    return super.close();
  }
}
