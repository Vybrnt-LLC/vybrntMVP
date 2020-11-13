// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FAQDto _$_$_FAQDtoFromJson(Map<String, dynamic> json) {
  return _$_FAQDto(
    question: json['question'] as String,
    answer: json['answer'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_FAQDtoToJson(_$_FAQDto instance) => <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
