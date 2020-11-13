import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:meta/meta.dart';

import 'package:vybrnt_mvp/features/user/domain/i_user_service.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';

part 'edit_user_bloc.freezed.dart';
part 'edit_user_event.dart';
part 'edit_user_state.dart';

@injectable
class EditUserBloc extends Bloc<EditUserEvent, EditUserState> {
  final IUserService _userService;

  EditUserBloc(this._userService) : super(EditUserState.initial());

  @override
  Stream<EditUserState> mapEventToState(
    EditUserEvent event,
  ) async* {
    yield* event.map(getData: (e) async* {
      yield state.copyWith(
        user: e.user,
      );
    }, saveUser: (e) async* {
      await _userService.updateUser(state.user);
    }, userProfileImageChanged: (e) async* {
      String profileImageUrl =
          await _userService.uploadUserProfileImage(e.url, e.image);
      yield state.copyWith(
        user: state.user.copyWith(profileImageUrl: profileImageUrl),
      );
    }, userBannerImageChanged: (e) async* {
      String bannerImageUrl =
          await _userService.uploadUserBannerImage(e.url, e.image);
      yield state.copyWith(
        user: state.user.copyWith(bannerImageUrl: bannerImageUrl),
      );
    }, nameChanged: (e) async* {
      yield state.copyWith(
        user: state.user.copyWith(profileName: e.profileName),
      );
    }, majorChanged: (e) async* {
      yield state.copyWith(
        user: state.user.copyWith(major: e.major),
      );
    }, bioChanged: (e) async* {
      yield state.copyWith(
        user: state.user.copyWith(bio: e.bio),
      );
    }, emailChanged: (e) async* {
      yield state.copyWith(
        user: state.user.copyWith(email: e.email),
      );
    }, primaryColorChanged: (e) async* {
      yield state.copyWith(
        user: state.user.copyWith(primaryColor: e.primaryColor),
      );
    }, secondaryColorChanged: (e) async* {
      yield state.copyWith(
        user: state.user.copyWith(secondaryColor: e.secondaryColor),
      );
    });
  }
}
