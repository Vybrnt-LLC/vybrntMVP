part of 'onboarding_info_bloc.dart';

@freezed
abstract class OnboardingInfoState with _$OnboardingInfoState {
  const factory OnboardingInfoState({
    @required Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption,
    @required bool showErrorMessages,
    @required bool isSaving,
    @required bool isUsernameTaken,
    @required User user,
    @required University university,
    @required List<University> listOfUniversities,
    @required List<String> listOfColleges,
    @required List<String> listOfMajors,
    @required List<String> listOfSelectedColleges,
    @required List<String> listOfCampuses,
  }) = _OnboardingInfoState;
  factory OnboardingInfoState.initial() => OnboardingInfoState(
        isSaving: false,
        isUsernameTaken: false,
        showErrorMessages: false,
        user: User.empty(),
        university: University.empty(),
        listOfUniversities: [],
        listOfColleges: [],
        listOfMajors: [],
        listOfSelectedColleges: [],
        listOfCampuses: [],
        saveFailureOrSuccessOption: none(),
      );
}
