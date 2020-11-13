// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ActivityTearOff {
  const _$ActivityTearOff();

  _Activity call(
      {@required UniqueId activityID,
      @required String type,
      @required String userID,
      @required String orgID,
      @required String profileImageURL,
      @required String postID,
      @required String eventID,
      @required String commentID,
      @required String username,
      @required DateTime timeStamp,
      @required bool isOrg}) {
    return _Activity(
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
    );
  }
}

// ignore: unused_element
const $Activity = _$ActivityTearOff();

mixin _$Activity {
  UniqueId get activityID;
  String get type;
  String get userID;
  String get orgID;
  String get profileImageURL;
  String get postID;
  String get eventID;
  String get commentID;
  String get username;
  DateTime get timeStamp;
  bool get isOrg;

  $ActivityCopyWith<Activity> get copyWith;
}

abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res>;
  $Res call(
      {UniqueId activityID,
      String type,
      String userID,
      String orgID,
      String profileImageURL,
      String postID,
      String eventID,
      String commentID,
      String username,
      DateTime timeStamp,
      bool isOrg});
}

class _$ActivityCopyWithImpl<$Res> implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  final Activity _value;
  // ignore: unused_field
  final $Res Function(Activity) _then;

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
  }) {
    return _then(_value.copyWith(
      activityID:
          activityID == freezed ? _value.activityID : activityID as UniqueId,
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
      timeStamp:
          timeStamp == freezed ? _value.timeStamp : timeStamp as DateTime,
      isOrg: isOrg == freezed ? _value.isOrg : isOrg as bool,
    ));
  }
}

abstract class _$ActivityCopyWith<$Res> implements $ActivityCopyWith<$Res> {
  factory _$ActivityCopyWith(_Activity value, $Res Function(_Activity) then) =
      __$ActivityCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId activityID,
      String type,
      String userID,
      String orgID,
      String profileImageURL,
      String postID,
      String eventID,
      String commentID,
      String username,
      DateTime timeStamp,
      bool isOrg});
}

class __$ActivityCopyWithImpl<$Res> extends _$ActivityCopyWithImpl<$Res>
    implements _$ActivityCopyWith<$Res> {
  __$ActivityCopyWithImpl(_Activity _value, $Res Function(_Activity) _then)
      : super(_value, (v) => _then(v as _Activity));

  @override
  _Activity get _value => super._value as _Activity;

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
  }) {
    return _then(_Activity(
      activityID:
          activityID == freezed ? _value.activityID : activityID as UniqueId,
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
      timeStamp:
          timeStamp == freezed ? _value.timeStamp : timeStamp as DateTime,
      isOrg: isOrg == freezed ? _value.isOrg : isOrg as bool,
    ));
  }
}

class _$_Activity with DiagnosticableTreeMixin implements _Activity {
  const _$_Activity(
      {@required this.activityID,
      @required this.type,
      @required this.userID,
      @required this.orgID,
      @required this.profileImageURL,
      @required this.postID,
      @required this.eventID,
      @required this.commentID,
      @required this.username,
      @required this.timeStamp,
      @required this.isOrg})
      : assert(activityID != null),
        assert(type != null),
        assert(userID != null),
        assert(orgID != null),
        assert(profileImageURL != null),
        assert(postID != null),
        assert(eventID != null),
        assert(commentID != null),
        assert(username != null),
        assert(timeStamp != null),
        assert(isOrg != null);

  @override
  final UniqueId activityID;
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
  final DateTime timeStamp;
  @override
  final bool isOrg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Activity(activityID: $activityID, type: $type, userID: $userID, orgID: $orgID, profileImageURL: $profileImageURL, postID: $postID, eventID: $eventID, commentID: $commentID, username: $username, timeStamp: $timeStamp, isOrg: $isOrg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Activity'))
      ..add(DiagnosticsProperty('activityID', activityID))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('orgID', orgID))
      ..add(DiagnosticsProperty('profileImageURL', profileImageURL))
      ..add(DiagnosticsProperty('postID', postID))
      ..add(DiagnosticsProperty('eventID', eventID))
      ..add(DiagnosticsProperty('commentID', commentID))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('timeStamp', timeStamp))
      ..add(DiagnosticsProperty('isOrg', isOrg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Activity &&
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
                const DeepCollectionEquality().equals(other.isOrg, isOrg)));
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
      const DeepCollectionEquality().hash(isOrg);

  @override
  _$ActivityCopyWith<_Activity> get copyWith =>
      __$ActivityCopyWithImpl<_Activity>(this, _$identity);
}

abstract class _Activity implements Activity {
  const factory _Activity(
      {@required UniqueId activityID,
      @required String type,
      @required String userID,
      @required String orgID,
      @required String profileImageURL,
      @required String postID,
      @required String eventID,
      @required String commentID,
      @required String username,
      @required DateTime timeStamp,
      @required bool isOrg}) = _$_Activity;

  @override
  UniqueId get activityID;
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
  DateTime get timeStamp;
  @override
  bool get isOrg;
  @override
  _$ActivityCopyWith<_Activity> get copyWith;
}
