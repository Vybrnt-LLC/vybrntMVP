import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';
import 'package:vybrnt_mvp/features/organization/domain/i_org_service.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_list_model.dart';

part 'user_list_bloc.freezed.dart';
part 'user_list_event.dart';
part 'user_list_state.dart';

@injectable
class UserListBloc extends Bloc<UserListEvent, UserListState> {
  final IOrgService _orgService;

  UserListBloc(this._orgService) : super(UserListState.initial());

  @override
  Stream<UserListState> mapEventToState(
    UserListEvent event,
  ) async* {
    yield* event.map(
      getUserData: (e) async* {
        final userList = await _orgService.getUserKtList(e.userIDList);
        yield state.copyWith(
          isOrgList: false,
          users: userList,
        );
      },
      getOrgData: (e) async* {
        final orgList = await _orgService.getOrgKtList(e.orgIDList);
        yield state.copyWith(
          isOrgList: true,
          orgs: orgList,
        );
      },
    );
  }
}
