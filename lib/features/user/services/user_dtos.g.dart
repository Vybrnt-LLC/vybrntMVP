// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    userName: json['userName'] as String,
    profileName: json['profileName'] as String,
    bannerImageUrl: json['bannerImageUrl'] as String,
    profileImageUrl: json['profileImageUrl'] as String,
    bio: json['bio'] as String,
    email: json['email'] as String,
    major: json['major'] as String,
    primaryColor: json['primaryColor'] as String,
    secondaryColor: json['secondaryColor'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'profileName': instance.profileName,
      'bannerImageUrl': instance.bannerImageUrl,
      'profileImageUrl': instance.profileImageUrl,
      'bio': instance.bio,
      'email': instance.email,
      'major': instance.major,
      'primaryColor': instance.primaryColor,
      'secondaryColor': instance.secondaryColor,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
