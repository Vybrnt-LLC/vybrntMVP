part of 'edit_user_bloc.dart';

@freezed
abstract class EditUserEvent with _$EditUserEvent {
  const factory EditUserEvent.getData(User user) = GetEditUserData;
  const factory EditUserEvent.saveUser() = SaveUser;
  const factory EditUserEvent.userProfileImageChanged(String url, File image) =
      UserProfileImageChanged;
  const factory EditUserEvent.userBannerImageChanged(String url, File image) =
      UserBannerImageChanged;
  const factory EditUserEvent.nameChanged(String profileName) = NameChanged;
  const factory EditUserEvent.majorChanged(String major) = MajorChanged;
  const factory EditUserEvent.primaryColorChanged(String primaryColor) =
      PrimaryColorChanged;
  const factory EditUserEvent.secondaryColorChanged(String secondaryColor) =
      SecondaryColorChanged;
  const factory EditUserEvent.bioChanged(String bio) = BioChanged;
  const factory EditUserEvent.emailChanged(String email) = EmailChanged;
}
