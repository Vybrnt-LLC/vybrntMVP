// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org_calendar_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrgCalendarDto _$_$_OrgCalendarDtoFromJson(Map<String, dynamic> json) {
  return _$_OrgCalendarDto(
    abbv: json['abbv'] as String,
    name: json['name'] as String,
    profileImageUrl: json['profileImageUrl'] as String,
    isToggled: json['isToggled'] as bool,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_OrgCalendarDtoToJson(_$_OrgCalendarDto instance) =>
    <String, dynamic>{
      'abbv': instance.abbv,
      'name': instance.name,
      'profileImageUrl': instance.profileImageUrl,
      'isToggled': instance.isToggled,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
