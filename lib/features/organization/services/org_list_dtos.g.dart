// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org_list_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrgListDto _$_$_OrgListDtoFromJson(Map<String, dynamic> json) {
  return _$_OrgListDto(
    name: json['name'] as String,
    profileImageUrl: json['profileImageUrl'] as String,
    abbv: json['abbv'] as String,
    primaryColor: json['primaryColor'] as String,
    secondaryColor: json['secondaryColor'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_OrgListDtoToJson(_$_OrgListDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profileImageUrl': instance.profileImageUrl,
      'abbv': instance.abbv,
      'primaryColor': instance.primaryColor,
      'secondaryColor': instance.secondaryColor,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
