import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/core/routes/i_dynamic_link_serivce.dart';

import 'package:vybrnt_mvp/features/user/domain/i_user_service.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserService _userService;
  final IDynamicLinkService _dynamicLinkService;

  UserBloc(this._userService, this._dynamicLinkService)
      : super(UserState.initial());

  StreamSubscription<KtList<String>> _followingStreamSubscription;
  StreamSubscription<KtList<String>> _followersStreamSubscription;
  StreamSubscription<KtList<String>> _followedOrgsStreamSubscription;
  StreamSubscription<KtList<String>> _photoStreamSubscription;

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    yield* event.map(getData: (e) async* {
      final isFollowing = await _userService.isFollowing(e.userID);
      final isNotified = await _userService.isNotified(e.userID);
      final isBlocking = await _userService.isBlocking(e.userID);
      final shareLink = await _dynamicLinkService.createUserLink(e.userID);

      yield state.copyWith(
          shareLink: shareLink,
          isFollowing: isFollowing,
          isNotified: isNotified,
          isBlocking: isBlocking);
      await _followingStreamSubscription?.cancel();
      _followingStreamSubscription = _userService.following(e.userID).listen(
          (followingIDs) =>
              add(UserEvent.followingReceived(followingIDs, e.currentUserID)));

      await _followersStreamSubscription?.cancel();
      _followersStreamSubscription = _userService.followers(e.userID).listen(
          (followerIDs) =>
              add(UserEvent.followersReceived(followerIDs, e.currentUserID)));

      await _followedOrgsStreamSubscription?.cancel();
      _followedOrgsStreamSubscription = _userService
          .followedOrgs(e.userID)
          .listen((followedOrgIDs) => add(
              UserEvent.followedOrgsReceived(followedOrgIDs, e.currentUserID)));

      await _photoStreamSubscription?.cancel();
      _photoStreamSubscription = _userService.followedOrgs(e.userID).listen(
          (photos) => add(UserEvent.photosReceived(photos, e.currentUserID)));
    }, photosReceived: (e) async* {
      yield state.copyWith(
        photoCount: e.photos.size,
        photos: e.photos,
      );
    }, followingReceived: (e) async* {
      yield state.copyWith(
        followingCount: e.followingIDs.size,
        followingIDs: e.followingIDs,
      );
    }, followersReceived: (e) async* {
      yield state.copyWith(
        followerCount: e.followerIDs.size,
        followerIDs: e.followerIDs,
        isFollowing: e.followerIDs.contains(e.currentUserID),
      );
    }, followedOrgsReceived: (e) async* {
      yield state.copyWith(
        followedOrgIDs: e.followedOrgIDs,
      );
    }, addFollower: (e) async* {
      await _userService.followUser(e.userID);
    }, removeFollower: (e) async* {
      await _userService.unfollowUser(e.userID);
    }, addUserToNotify: (e) async* {
      await _userService.addUserToNotify(e.userID);
      yield state.copyWith(isNotified: true);
    }, removeUserFromNotify: (e) async* {
      await _userService.removeUserFromNotify(e.userID);
      yield state.copyWith(isNotified: false);
    }, blockUser: (e) async* {
      await _userService.blockUser(e.userID);
      yield state.copyWith(isBlocking: true);
    }, unBlockUser: (e) async* {
      await _userService.unblockUser(e.userID);
      yield state.copyWith(isBlocking: false);
    });
  }

  @override
  Future<void> close() async {
    await _followingStreamSubscription.cancel();
    await _followersStreamSubscription.cancel();
    await _followedOrgsStreamSubscription.cancel();
    await _photoStreamSubscription.cancel();
    return super.close();
  }
}
