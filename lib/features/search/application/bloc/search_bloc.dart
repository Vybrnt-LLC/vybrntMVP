import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';
import 'package:vybrnt_mvp/features/organization/domain/i_org_service.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_list_model.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IOrgService _orgService;

  SearchBloc(this._orgService) : super(SearchState.initial());

  StreamSubscription<KtList<UserList>> _userSearchStreamSubscription;
  StreamSubscription<KtList<OrgList>> _orgSearchStreamSubscription;
  StreamSubscription<KtList<OrgList>> _verifiedOrgSearchStreamSubscription;

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map(
      getUserSearch: (e) async* {
        await _userSearchStreamSubscription?.cancel();
        _userSearchStreamSubscription = _orgService
            .searchUser(e.name)
            .listen((users) => add(SearchEvent.usersReceived(users)));
      },
      usersReceived: (e) async* {
        yield state.copyWith(
          users: e.users,
        );
      },
      getOrgSearch: (e) async* {
        await _orgSearchStreamSubscription?.cancel();
        _orgSearchStreamSubscription = _orgService
            .searchOrg(e.name)
            .listen((orgs) => add(SearchEvent.orgsReceived(orgs)));
      },
      orgsReceived: (e) async* {
        yield state.copyWith(
          orgs: e.orgs,
        );
      },
      getVerifiedOrgSearch: (e) async* {
        await _verifiedOrgSearchStreamSubscription?.cancel();
        _verifiedOrgSearchStreamSubscription = _orgService
            .searchVerifiedOrg(e.name)
            .listen((verifiedOrgs) =>
                add(SearchEvent.verifiedOrgsReceived(verifiedOrgs)));
      },
      verifiedOrgsReceived: (e) async* {
        yield state.copyWith(
          verifiedOrgs: e.verifiedOrgs,
        );
      },
      getSearch: (e) async* {
        await _userSearchStreamSubscription?.cancel();
        _userSearchStreamSubscription = _orgService
            .searchUser(e.name)
            .listen((users) => add(SearchEvent.usersReceived(users)));
        await _orgSearchStreamSubscription?.cancel();
        _orgSearchStreamSubscription = _orgService
            .searchOrg(e.name)
            .listen((orgs) => add(SearchEvent.orgsReceived(orgs)));
        await _verifiedOrgSearchStreamSubscription?.cancel();
        _verifiedOrgSearchStreamSubscription = _orgService
            .searchVerifiedOrg(e.name)
            .listen((verifiedOrgs) =>
                add(SearchEvent.verifiedOrgsReceived(verifiedOrgs)));
      },
    );
  }

  @override
  Future<void> close() async {
    await _userSearchStreamSubscription.cancel();
    await _verifiedOrgSearchStreamSubscription.cancel();
    await _orgSearchStreamSubscription.cancel();

    return super.close();
  }
}
