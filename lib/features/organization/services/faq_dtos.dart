import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/faq.dart';

part 'faq_dtos.freezed.dart';
part 'faq_dtos.g.dart';

@freezed
abstract class FAQDto with _$FAQDto {
  factory FAQDto({
    @JsonKey(ignore: true) String faqID,
    @required String question,
    @required String answer,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _FAQDto;

  factory FAQDto.fromDomain(FAQ faq) {
    return FAQDto(
      faqID: faq.faqID.getOrCrash(),
      question: faq.question,
      answer: faq.answer,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory FAQDto.fromJson(Map<String, dynamic> json) => _$FAQDtoFromJson(json);

  factory FAQDto.fromFirestore(DocumentSnapshot doc) {
    return FAQDto.fromJson(doc.data()).copyWith(faqID: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

extension FAQDtoX on FAQDto {
  FAQ toDomain() {
    return FAQ(
      faqID: UniqueId.fromUniqueString(faqID),
      question: question,
      answer: answer,
    );
  }
}
