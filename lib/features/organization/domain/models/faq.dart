import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';

part 'faq.freezed.dart';

@freezed
abstract class FAQ with _$FAQ {
  const factory FAQ({
    @required UniqueId faqID,
    @required String question,
    @required String answer,
  }) = _FAQ;

  factory FAQ.empty() => FAQ(
        faqID: UniqueId(),
        question: '',
        answer: '',
      );
}
