// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UniversityDto _$_$_UniversityDtoFromJson(Map<String, dynamic> json) {
  return _$_UniversityDto(
    name: json['name'] as String,
    shortenName: json['shortenName'] as String,
    abbreviation: json['abbreviation'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_UniversityDtoToJson(_$_UniversityDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'shortenName': instance.shortenName,
      'abbreviation': instance.abbreviation,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
