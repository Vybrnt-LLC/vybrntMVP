// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emember_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EMemberDto _$_$_EMemberDtoFromJson(Map<String, dynamic> json) {
  return _$_EMemberDto(
    position: json['position'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_EMemberDtoToJson(_$_EMemberDto instance) =>
    <String, dynamic>{
      'position': instance.position,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
