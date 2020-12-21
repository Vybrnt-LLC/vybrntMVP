part of 'navbar_bloc.dart';

@freezed
abstract class NavbarEvent with _$NavbarEvent {
  const factory NavbarEvent.setCurrentScreen(int index) = _SetCurrentScreen;
  const factory NavbarEvent.initialize() = _Initialize;
}
