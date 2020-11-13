import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_list_model.dart';

part 'user_list_dtos.freezed.dart';
part 'user_list_dtos.g.dart';

@freezed
abstract class UserListDto with _$UserListDto {
  factory UserListDto({
    @JsonKey(ignore: true) String userID,
    @required String profileName,
    @required String profileImageUrl,
    @required String primaryColor,
    @required String secondaryColor,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _UserListDto;

  factory UserListDto.fromDomain(UserList user) {
    return UserListDto(
      userID: user.userID.getOrCrash(),
      profileName: user.profileName,
      profileImageUrl: user.profileImageUrl,
      primaryColor: user.primaryColor,
      secondaryColor: user.secondaryColor,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory UserListDto.fromJson(Map<String, dynamic> json) =>
      _$UserListDtoFromJson(json);

  factory UserListDto.fromFirestore(DocumentSnapshot doc) {
    return UserListDto.fromJson(doc.data()).copyWith(userID: doc.id);
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

extension UserListDtoX on UserListDto {
  UserList toDomain() {
    return UserList(
      userID: UniqueId.fromUniqueString(userID),
      profileName: profileName,
      profileImageUrl: profileImageUrl,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
    );
  }
}
