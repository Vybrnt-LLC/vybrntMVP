part of 'onboarding_info_bloc.dart';

@freezed
abstract class OnboardingInfoEvent with _$OnboardingInfoEvent {
  const factory OnboardingInfoEvent.started(String currentUserID) = _Started;
  const factory OnboardingInfoEvent.usernameChanged(String usernameStr) =
      _UsernameChanged;
  const factory OnboardingInfoEvent.universitySelected(University university) =
      _UniversitySelected;
  const factory OnboardingInfoEvent.collegesUpdated(
          List<String> listOfColleges) =
      _CollegeAdded; //need to figure out with onChange I think
  const factory OnboardingInfoEvent.saveOnboardingInfo(
      Map<String, dynamic> data) = _SaveOnboardingInfo;
  const factory OnboardingInfoEvent.uploadUserProfileImage(
      String url, File imageFile) = _UploadUserProfileImage;
}
