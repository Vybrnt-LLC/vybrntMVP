import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_failure.freezed.dart';

@freezed
abstract class PostFailure with _$PostFailure {
  const factory PostFailure.unexpected() = _Unexpected;
  const factory PostFailure.emptyField() = _EmptyField;
  const factory PostFailure.insufficientPermissions() = _InsufficientPermissions;
}
