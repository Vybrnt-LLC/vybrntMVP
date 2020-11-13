import 'package:freezed_annotation/freezed_annotation.dart';

part 'org_failure.freezed.dart';

@freezed
abstract class OrgFailure with _$OrgFailure {
  const factory OrgFailure.unexpected() = Unexpected;
  const factory OrgFailure.insufficientPermissions() = InsufficientPermissions;
  const factory OrgFailure.unableToUpdate() = UnableToUpdate;
  const factory OrgFailure.emptyEMember() = EmptyEMember;
}
