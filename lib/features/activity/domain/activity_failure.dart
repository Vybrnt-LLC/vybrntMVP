import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_failure.freezed.dart';

@freezed
abstract class ActivityFailure with _$ActivityFailure {
  const factory ActivityFailure.unexpected() = _Unexpected;
  const factory ActivityFailure.insufficientPermissions() =
      _InsufficientPermissions;
}
