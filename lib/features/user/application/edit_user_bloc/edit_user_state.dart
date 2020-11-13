part of 'edit_user_bloc.dart';

@freezed
abstract class EditUserState with _$EditUserState {
  const factory EditUserState({
    @required User user,
  }) = _EditUserState;

  factory EditUserState.initial() => EditUserState(
        user: User.empty(),
      );
}
