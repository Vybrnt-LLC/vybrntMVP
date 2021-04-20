import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  factory UserDto({
    @JsonKey(ignore: true) String userID,
    @required String userName,
    @required String profileName,
    @required String bannerImageUrl,
    @required String profileImageUrl,
    @required String bio,
    @required String email,
    @required String major,
    @required String primaryColor,
    @required String secondaryColor,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      userID: user.userID.getOrCrash(),
      userName: user.userName.getOrCrash(),
      profileName: user.profileName,
      bannerImageUrl: user.bannerImageUrl,
      profileImageUrl: user.profileImageUrl,
      bio: user.bio,
      major: user.major,
      email: user.email,
      primaryColor: user.primaryColor,
      secondaryColor: user.secondaryColor,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data()).copyWith(userID: doc.id);
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

extension UserDtoX on UserDto {
  User toDomain() {
    return User(
      userID: UniqueId.fromUniqueString(userID),
      profileName: profileName,
      userName: Username(userName),
      bannerImageUrl: bannerImageUrl,
      profileImageUrl: profileImageUrl,
      bio: bio,
      major: major,
      email: email,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
    );
  }
}
