import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/models/university.dart';
import 'package:vybrnt_mvp/features/user/domain/i_user_service.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_failure.dart';

part 'onboarding_info_event.dart';
part 'onboarding_info_state.dart';
part 'onboarding_info_bloc.freezed.dart';

@injectable
class OnboardingInfoBloc
    extends Bloc<OnboardingInfoEvent, OnboardingInfoState> {
  final IUserService _userService;
  OnboardingInfoBloc(this._userService) : super(OnboardingInfoState.initial());

  @override
  Stream<OnboardingInfoState> mapEventToState(
    OnboardingInfoEvent event,
  ) async* {
    yield* event.map(started: (e) async* {
      final user = await _userService.getUserWithColor(e.currentUserID);
      final listOfUniversities = await _userService.getUniversities();
      yield state.copyWith(user: user, listOfUniversities: listOfUniversities);
    }, uploadUserProfileImage: (e) async* {
      final String profileImageUrl =
          await _userService.uploadUserProfileImage(e.url, e.imageFile);
      yield state.copyWith(
        user: state.user.copyWith(profileImageUrl: profileImageUrl),
      );
    }, usernameChanged: (e) async* {
      final isUsernameTaken = await _userService.isUsernameTaken(e.usernameStr);
      yield state.copyWith(isUsernameTaken: isUsernameTaken);
    }, universitySelected: (e) async* {
      final listOfColleges = await _userService
          .getColleges(e.university.universityID.getOrCrash());
      final listOfCampuses = await _userService
          .getCampuses(e.university.universityID.getOrCrash());
      yield state.copyWith(
          university: e.university,
          listOfColleges: listOfColleges,
          listOfCampuses: listOfCampuses);
    }, collegesUpdated: (e) async* {
      final listOfMajors = await _userService.getMajors(
          state.university.universityID.getOrCrash(), e.listOfColleges);
      yield state.copyWith(listOfMajors: listOfMajors);
    }, saveOnboardingInfo: (e) async* {
      yield state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      );
      final failureOrSuccess =
          await _userService.saveOnboardingInfo(e.data, state.user);

      yield state.copyWith(
        isSaving: false,
        saveFailureOrSuccessOption: some(failureOrSuccess),
      );
    });
  }
}
