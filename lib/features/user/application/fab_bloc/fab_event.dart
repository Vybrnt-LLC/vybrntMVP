part of 'fab_bloc.dart';

@freezed
abstract class FabEvent with _$FabEvent {
  const factory FabEvent.started() = _Started;
  const factory FabEvent.setCurrentScreen(String screenName) =
      _SetCurrentScreen;
}
