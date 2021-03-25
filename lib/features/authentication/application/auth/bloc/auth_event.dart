part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthEvent.signedOut() = SignedOut;
  const factory AuthEvent.initializePushNotifications(String env) =
      InitializePushNotifications;
  const factory AuthEvent.setAnalyticsUserID(String currentUserID) =
      SetAnalyticsUserID;
  const factory AuthEvent.navigateTo({String routeName, dynamic arguments}) =
      NavigateTo;
  const factory AuthEvent.updateCounter(String currentUserID) =
      updateCounter;
  const factory AuthEvent.dontShowAgain(String currentUserID) =
      dontShowAgain;
}
