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
      @required ActivityType activityType,
      @required String objectID,
      @required OwnerType ownerType,
      @required String ownerID,
      @required String titleSubject,
      @required String bodySubject,
      @required DateTime timeStamp,
      @required String imageURL,
      @required String profileID,
      @required OwnerType profileType}) {
    return _Activity(
      activityID: activityID,
      activityType: activityType,
      objectID: objectID,
      ownerType: ownerType,
      ownerID: ownerID,
      titleSubject: titleSubject,
      bodySubject: bodySubject,
      timeStamp: timeStamp,
      imageURL: imageURL,
      profileID: profileID,
      profileType: profileType,
    );
  }
}

// ignore: unused_element
const $Activity = _$ActivityTearOff();

mixin _$Activity {
  UniqueId get activityID;
  ActivityType get activityType;
  String get objectID;
  OwnerType get ownerType;
  String get ownerID;
  String get titleSubject;
  String get bodySubject;
  DateTime get timeStamp;
  String get imageURL;
  String get profileID;
  OwnerType get profileType;

  $ActivityCopyWith<Activity> get copyWith;
}

abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res>;
  $Res call(
      {UniqueId activityID,
      ActivityType activityType,
      String objectID,
      OwnerType ownerType,
      String ownerID,
      String titleSubject,
      String bodySubject,
      DateTime timeStamp,
      String imageURL,
      String profileID,
      OwnerType profileType});
}

class _$ActivityCopyWithImpl<$Res> implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  final Activity _value;
  // ignore: unused_field
  final $Res Function(Activity) _then;

  @override
  $Res call({
    Object activityID = freezed,
    Object activityType = freezed,
    Object objectID = freezed,
    Object ownerType = freezed,
    Object ownerID = freezed,
    Object titleSubject = freezed,
    Object bodySubject = freezed,
    Object timeStamp = freezed,
    Object imageURL = freezed,
    Object profileID = freezed,
    Object profileType = freezed,
  }) {
    return _then(_value.copyWith(
      activityID:
          activityID == freezed ? _value.activityID : activityID as UniqueId,
      activityType: activityType == freezed
          ? _value.activityType
          : activityType as ActivityType,
      objectID: objectID == freezed ? _value.objectID : objectID as String,
      ownerType:
          ownerType == freezed ? _value.ownerType : ownerType as OwnerType,
      ownerID: ownerID == freezed ? _value.ownerID : ownerID as String,
      titleSubject: titleSubject == freezed
          ? _value.titleSubject
          : titleSubject as String,
      bodySubject:
          bodySubject == freezed ? _value.bodySubject : bodySubject as String,
      timeStamp:
          timeStamp == freezed ? _value.timeStamp : timeStamp as DateTime,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      profileID: profileID == freezed ? _value.profileID : profileID as String,
      profileType: profileType == freezed
          ? _value.profileType
          : profileType as OwnerType,
    ));
  }
}

abstract class _$ActivityCopyWith<$Res> implements $ActivityCopyWith<$Res> {
  factory _$ActivityCopyWith(_Activity value, $Res Function(_Activity) then) =
      __$ActivityCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId activityID,
      ActivityType activityType,
      String objectID,
      OwnerType ownerType,
      String ownerID,
      String titleSubject,
      String bodySubject,
      DateTime timeStamp,
      String imageURL,
      String profileID,
      OwnerType profileType});
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
    Object activityType = freezed,
    Object objectID = freezed,
    Object ownerType = freezed,
    Object ownerID = freezed,
    Object titleSubject = freezed,
    Object bodySubject = freezed,
    Object timeStamp = freezed,
    Object imageURL = freezed,
    Object profileID = freezed,
    Object profileType = freezed,
  }) {
    return _then(_Activity(
      activityID:
          activityID == freezed ? _value.activityID : activityID as UniqueId,
      activityType: activityType == freezed
          ? _value.activityType
          : activityType as ActivityType,
      objectID: objectID == freezed ? _value.objectID : objectID as String,
      ownerType:
          ownerType == freezed ? _value.ownerType : ownerType as OwnerType,
      ownerID: ownerID == freezed ? _value.ownerID : ownerID as String,
      titleSubject: titleSubject == freezed
          ? _value.titleSubject
          : titleSubject as String,
      bodySubject:
          bodySubject == freezed ? _value.bodySubject : bodySubject as String,
      timeStamp:
          timeStamp == freezed ? _value.timeStamp : timeStamp as DateTime,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      profileID: profileID == freezed ? _value.profileID : profileID as String,
      profileType: profileType == freezed
          ? _value.profileType
          : profileType as OwnerType,
    ));
  }
}

class _$_Activity with DiagnosticableTreeMixin implements _Activity {
  const _$_Activity(
      {@required this.activityID,
      @required this.activityType,
      @required this.objectID,
      @required this.ownerType,
      @required this.ownerID,
      @required this.titleSubject,
      @required this.bodySubject,
      @required this.timeStamp,
      @required this.imageURL,
      @required this.profileID,
      @required this.profileType})
      : assert(activityID != null),
        assert(activityType != null),
        assert(objectID != null),
        assert(ownerType != null),
        assert(ownerID != null),
        assert(titleSubject != null),
        assert(bodySubject != null),
        assert(timeStamp != null),
        assert(imageURL != null),
        assert(profileID != null),
        assert(profileType != null);

  @override
  final UniqueId activityID;
  @override
  final ActivityType activityType;
  @override
  final String objectID;
  @override
  final OwnerType ownerType;
  @override
  final String ownerID;
  @override
  final String titleSubject;
  @override
  final String bodySubject;
  @override
  final DateTime timeStamp;
  @override
  final String imageURL;
  @override
  final String profileID;
  @override
  final OwnerType profileType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Activity(activityID: $activityID, activityType: $activityType, objectID: $objectID, ownerType: $ownerType, ownerID: $ownerID, titleSubject: $titleSubject, bodySubject: $bodySubject, timeStamp: $timeStamp, imageURL: $imageURL, profileID: $profileID, profileType: $profileType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Activity'))
      ..add(DiagnosticsProperty('activityID', activityID))
      ..add(DiagnosticsProperty('activityType', activityType))
      ..add(DiagnosticsProperty('objectID', objectID))
      ..add(DiagnosticsProperty('ownerType', ownerType))
      ..add(DiagnosticsProperty('ownerID', ownerID))
      ..add(DiagnosticsProperty('titleSubject', titleSubject))
      ..add(DiagnosticsProperty('bodySubject', bodySubject))
      ..add(DiagnosticsProperty('timeStamp', timeStamp))
      ..add(DiagnosticsProperty('imageURL', imageURL))
      ..add(DiagnosticsProperty('profileID', profileID))
      ..add(DiagnosticsProperty('profileType', profileType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Activity &&
            (identical(other.activityID, activityID) ||
                const DeepCollectionEquality()
                    .equals(other.activityID, activityID)) &&
            (identical(other.activityType, activityType) ||
                const DeepCollectionEquality()
                    .equals(other.activityType, activityType)) &&
            (identical(other.objectID, objectID) ||
                const DeepCollectionEquality()
                    .equals(other.objectID, objectID)) &&
            (identical(other.ownerType, ownerType) ||
                const DeepCollectionEquality()
                    .equals(other.ownerType, ownerType)) &&
            (identical(other.ownerID, ownerID) ||
                const DeepCollectionEquality()
                    .equals(other.ownerID, ownerID)) &&
            (identical(other.titleSubject, titleSubject) ||
                const DeepCollectionEquality()
                    .equals(other.titleSubject, titleSubject)) &&
            (identical(other.bodySubject, bodySubject) ||
                const DeepCollectionEquality()
                    .equals(other.bodySubject, bodySubject)) &&
            (identical(other.timeStamp, timeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.timeStamp, timeStamp)) &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.profileID, profileID) ||
                const DeepCollectionEquality()
                    .equals(other.profileID, profileID)) &&
            (identical(other.profileType, profileType) ||
                const DeepCollectionEquality()
                    .equals(other.profileType, profileType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(activityID) ^
      const DeepCollectionEquality().hash(activityType) ^
      const DeepCollectionEquality().hash(objectID) ^
      const DeepCollectionEquality().hash(ownerType) ^
      const DeepCollectionEquality().hash(ownerID) ^
      const DeepCollectionEquality().hash(titleSubject) ^
      const DeepCollectionEquality().hash(bodySubject) ^
      const DeepCollectionEquality().hash(timeStamp) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(profileID) ^
      const DeepCollectionEquality().hash(profileType);

  @override
  _$ActivityCopyWith<_Activity> get copyWith =>
      __$ActivityCopyWithImpl<_Activity>(this, _$identity);
}

abstract class _Activity implements Activity {
  const factory _Activity(
      {@required UniqueId activityID,
      @required ActivityType activityType,
      @required String objectID,
      @required OwnerType ownerType,
      @required String ownerID,
      @required String titleSubject,
      @required String bodySubject,
      @required DateTime timeStamp,
      @required String imageURL,
      @required String profileID,
      @required OwnerType profileType}) = _$_Activity;

  @override
  UniqueId get activityID;
  @override
  ActivityType get activityType;
  @override
  String get objectID;
  @override
  OwnerType get ownerType;
  @override
  String get ownerID;
  @override
  String get titleSubject;
  @override
  String get bodySubject;
  @override
  DateTime get timeStamp;
  @override
  String get imageURL;
  @override
  String get profileID;
  @override
  OwnerType get profileType;
  @override
  _$ActivityCopyWith<_Activity> get copyWith;
}
