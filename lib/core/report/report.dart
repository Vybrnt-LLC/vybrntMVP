import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';

part 'report.freezed.dart';

@freezed
abstract class Report with _$Report {
  const factory Report({
    @required UniqueId reportID,
    @required String senderID,
    @required String contentID,
    @required String contentType,
    @required String ownerID,
    @required String ownerType,
    @required String message,
  }) = _Report;

  factory Report.empty() => Report(
      reportID: UniqueId(),
      senderID: '',
      contentID: '',
      contentType: '',
      ownerID: '',
      ownerType: '',
      message: '');
}
