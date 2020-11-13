// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrgDto _$_$_OrgDtoFromJson(Map<String, dynamic> json) {
  return _$_OrgDto(
    abbv: json['abbv'] as String,
    name: json['name'] as String,
    bannerImageUrl: json['bannerImageUrl'] as String,
    missionStatement: json['missionStatement'] as String,
    profileImageUrl: json['profileImageUrl'] as String,
    officeLocation: json['officeLocation'] as String,
    email: json['email'] as String,
    primaryColor: json['primaryColor'] as String,
    secondaryColor: json['secondaryColor'] as String,
    orgName: json['orgName'] as String,
    verified: json['verified'] as bool,
    adminTitle: json['adminTitle'] as String,
    linkedInURL: json['linkedInURL'] as String,
    twitterURL: json['twitterURL'] as String,
    facebookURL: json['facebookURL'] as String,
    instagramURL: json['instagramURL'] as String,
    websiteURL: json['websiteURL'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_OrgDtoToJson(_$_OrgDto instance) => <String, dynamic>{
      'abbv': instance.abbv,
      'name': instance.name,
      'bannerImageUrl': instance.bannerImageUrl,
      'missionStatement': instance.missionStatement,
      'profileImageUrl': instance.profileImageUrl,
      'officeLocation': instance.officeLocation,
      'email': instance.email,
      'primaryColor': instance.primaryColor,
      'secondaryColor': instance.secondaryColor,
      'orgName': instance.orgName,
      'verified': instance.verified,
      'adminTitle': instance.adminTitle,
      'linkedInURL': instance.linkedInURL,
      'twitterURL': instance.twitterURL,
      'facebookURL': instance.facebookURL,
      'instagramURL': instance.instagramURL,
      'websiteURL': instance.websiteURL,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
