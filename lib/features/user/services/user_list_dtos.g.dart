// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserListDto _$_$_UserListDtoFromJson(Map<String, dynamic> json) {
  return _$_UserListDto(
    profileName: json['profileName'] as String,
    profileImageUrl: json['profileImageUrl'] as String,
    primaryColor: json['primaryColor'] as String,
    secondaryColor: json['secondaryColor'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_UserListDtoToJson(_$_UserListDto instance) =>
    <String, dynamic>{
      'profileName': instance.profileName,
      'profileImageUrl': instance.profileImageUrl,
      'primaryColor': instance.primaryColor,
      'secondaryColor': instance.secondaryColor,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
