import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';

part 'university.freezed.dart';

@freezed
abstract class University with _$University {
  const factory University({
    @required UniqueId universityID,
    @required String name,
    @required String shortenName,
    @required String abbreviation,
  }) = _Activity;

  factory University.empty() => University(
        universityID: UniqueId(),
        name: '',
        shortenName: '',
        abbreviation: '',
      );
}
