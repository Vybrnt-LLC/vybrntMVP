import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

@freezed
abstract class UserFailure with _$UserFailure {
  const factory UserFailure.loadFailed() = _LoadFailed;
  const factory UserFailure.invalidUsername() = _InvalidUsername;
  const factory UserFailure.unavailableUsername() = _UnavailableUsername;
  const factory UserFailure.saveFailed() = _SaveFailed;
}
