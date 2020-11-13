// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'activity_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ActivityDTO _$ActivityDTOFromJson(Map<String, dynamic> json) {
  return _ActivityDTO.fromJson(json);
}

class _$ActivityDTOTearOff {
  const _$ActivityDTOTearOff();

  _ActivityDTO call(
      {@JsonKey(ignore: true) String activityID,
      @required String type,
      @required String userID,
      @required String orgID,
      @required String profileImageURL,
      @required String postID,
      @required String eventID,
      @required String commentID,
      @required String username,
      @required dynamic timeStamp,
      @required bool isOrg,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _ActivityDTO(
      activityID: activityID,
      type: type,
      userID: userID,
      orgID: orgID,
      profileImageURL: profileImageURL,
      postID: postID,
      eventID: eventID,
      commentID: commentID,
      username: username,
      timeStamp: timeStamp,
      isOrg: isOrg,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $ActivityDTO = _$ActivityDTOTearOff();

mixin _$ActivityDTO {
  @JsonKey(ignore: true)
  String get activityID;
  String get type;
  String get userID;
  String get orgID;
  String get profileImageURL;
  String get postID;
  String get eventID;
  String get commentID;
  String get username;
  dynamic get timeStamp;
  bool get isOrg;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $ActivityDTOCopyWith<ActivityDTO> get copyWith;
}

abstract class $ActivityDTOCopyWith<$Res> {
  factory $ActivityDTOCopyWith(
          ActivityDTO value, $Res Function(ActivityDTO) then) =
      _$ActivityDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String activityID,
      String type,
      String userID,
      String orgID,
      String profileImageURL,
      String postID,
      String eventID,
      String commentID,
      String username,
      dynamic timeStamp,
      bool isOrg,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$ActivityDTOCopyWithImpl<$Res> implements $ActivityDTOCopyWith<$Res> {
  _$ActivityDTOCopyWithImpl(this._value, this._then);

  final ActivityDTO _value;
  // ignore: unused_field
  final $Res Function(ActivityDTO) _then;

  @override
  $Res call({
    Object activityID = freezed,
    Object type = freezed,
    Object userID = freezed,
    Object orgID = freezed,
    Object profileImageURL = freezed,
    Object postID = freezed,
    Object eventID = freezed,
    Object commentID = freezed,
    Object username = freezed,
    Object timeStamp = freezed,
    Object isOrg = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      activityID:
          activityID == freezed ? _value.activityID : activityID as String,
      type: type == freezed ? _value.type : type as String,
      userID: userID == freezed ? _value.userID : userID as String,
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
      postID: postID == freezed ? _value.postID : postID as String,
      eventID: eventID == freezed ? _value.eventID : eventID as String,
      commentID: commentID == freezed ? _value.commentID : commentID as String,
      username: username == freezed ? _value.username : username as String,
      timeStamp: timeStamp == freezed ? _value.timeStamp : timeStamp as dynamic,
      isOrg: isOrg == freezed ? _value.isOrg : isOrg as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$ActivityDTOCopyWith<$Res>
    implements $ActivityDTOCopyWith<$Res> {
  factory _$ActivityDTOCopyWith(
          _ActivityDTO value, $Res Function(_ActivityDTO) then) =
      __$ActivityDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String activityID,
      String type,
      String userID,
      String orgID,
      String profileImageURL,
      String postID,
      String eventID,
      String commentID,
      String username,
      dynamic timeStamp,
      bool isOrg,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$ActivityDTOCopyWithImpl<$Res> extends _$ActivityDTOCopyWithImpl<$Res>
    implements _$ActivityDTOCopyWith<$Res> {
  __$ActivityDTOCopyWithImpl(
      _ActivityDTO _value, $Res Function(_ActivityDTO) _then)
      : super(_value, (v) => _then(v as _ActivityDTO));

  @override
  _ActivityDTO get _value => super._value as _ActivityDTO;

  @override
  $Res call({
    Object activityID = freezed,
    Object type = freezed,
    Object userID = freezed,
    Object orgID = freezed,
    Object profileImageURL = freezed,
    Object postID = freezed,
    Object eventID = freezed,
    Object commentID = freezed,
    Object username = freezed,
    Object timeStamp = freezed,
    Object isOrg = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_ActivityDTO(
      activityID:
          activityID == freezed ? _value.activityID : activityID as String,
      type: type == freezed ? _value.type : type as String,
      userID: userID == freezed ? _value.userID : userID as String,
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
      postID: postID == freezed ? _value.postID : postID as String,
      eventID: eventID == freezed ? _value.eventID : eventID as String,
      commentID: commentID == freezed ? _value.commentID : commentID as String,
      username: username == freezed ? _value.username : username as String,
      timeStamp: timeStamp == freezed ? _value.timeStamp : timeStamp as dynamic,
      isOrg: isOrg == freezed ? _value.isOrg : isOrg as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_ActivityDTO implements _ActivityDTO {
  _$_ActivityDTO(
      {@JsonKey(ignore: true) this.activityID,
      @required this.type,
      @required this.userID,
      @required this.orgID,
      @required this.profileImageURL,
      @required this.postID,
      @required this.eventID,
      @required this.commentID,
      @required this.username,
      @required this.timeStamp,
      @required this.isOrg,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(type != null),
        assert(userID != null),
        assert(orgID != null),
        assert(profileImageURL != null),
        assert(postID != null),
        assert(eventID != null),
        assert(commentID != null),
        assert(username != null),
        assert(timeStamp != null),
        assert(isOrg != null),
        assert(serverTimeStamp != null);

  factory _$_ActivityDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ActivityDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String activityID;
  @override
  final String type;
  @override
  final String userID;
  @override
  final String orgID;
  @override
  final String profileImageURL;
  @override
  final String postID;
  @override
  final String eventID;
  @override
  final String commentID;
  @override
  final String username;
  @override
  final dynamic timeStamp;
  @override
  final bool isOrg;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'ActivityDTO(activityID: $activityID, type: $type, userID: $userID, orgID: $orgID, profileImageURL: $profileImageURL, postID: $postID, eventID: $eventID, commentID: $commentID, username: $username, timeStamp: $timeStamp, isOrg: $isOrg, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActivityDTO &&
            (identical(other.activityID, activityID) ||
                const DeepCollectionEquality()
                    .equals(other.activityID, activityID)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.profileImageURL, profileImageURL) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageURL, profileImageURL)) &&
            (identical(other.postID, postID) ||
                const DeepCollectionEquality().equals(other.postID, postID)) &&
            (identical(other.eventID, eventID) ||
                const DeepCollectionEquality()
                    .equals(other.eventID, eventID)) &&
            (identical(other.commentID, commentID) ||
                const DeepCollectionEquality()
                    .equals(other.commentID, commentID)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.timeStamp, timeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.timeStamp, timeStamp)) &&
            (identical(other.isOrg, isOrg) ||
                const DeepCollectionEquality().equals(other.isOrg, isOrg)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(activityID) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(profileImageURL) ^
      const DeepCollectionEquality().hash(postID) ^
      const DeepCollectionEquality().hash(eventID) ^
      const DeepCollectionEquality().hash(commentID) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(timeStamp) ^
      const DeepCollectionEquality().hash(isOrg) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$ActivityDTOCopyWith<_ActivityDTO> get copyWith =>
      __$ActivityDTOCopyWithImpl<_ActivityDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActivityDTOToJson(this);
  }
}

abstract class _ActivityDTO implements ActivityDTO {
  factory _ActivityDTO(
          {@JsonKey(ignore: true) String activityID,
          @required String type,
          @required String userID,
          @required String orgID,
          @required String profileImageURL,
          @required String postID,
          @required String eventID,
          @required String commentID,
          @required String username,
          @required dynamic timeStamp,
          @required bool isOrg,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_ActivityDTO;

  factory _ActivityDTO.fromJson(Map<String, dynamic> json) =
      _$_ActivityDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get activityID;
  @override
  String get type;
  @override
  String get userID;
  @override
  String get orgID;
  @override
  String get profileImageURL;
  @override
  String get postID;
  @override
  String get eventID;
  @override
  String get commentID;
  @override
  String get username;
  @override
  dynamic get timeStamp;
  @override
  bool get isOrg;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$ActivityDTOCopyWith<_ActivityDTO> get copyWith;
}
