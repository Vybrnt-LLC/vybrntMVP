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
      @required String activityType,
      @required String objectID,
      @required String ownerType,
      @required String ownerID,
      @required String titleSubject,
      @required String bodySubject,
      @required dynamic timeStamp,
      @required String imageURL,
      @required String profileID,
      @required String profileType,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _ActivityDTO(
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
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $ActivityDTO = _$ActivityDTOTearOff();

mixin _$ActivityDTO {
  @JsonKey(ignore: true)
  String get activityID;
  String get activityType;
  String get objectID;
  String get ownerType;
  String get ownerID;
  String get titleSubject;
  String get bodySubject;
  dynamic get timeStamp;
  String get imageURL;
  String get profileID;
  String get profileType;
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
      String activityType,
      String objectID,
      String ownerType,
      String ownerID,
      String titleSubject,
      String bodySubject,
      dynamic timeStamp,
      String imageURL,
      String profileID,
      String profileType,
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
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      activityID:
          activityID == freezed ? _value.activityID : activityID as String,
      activityType: activityType == freezed
          ? _value.activityType
          : activityType as String,
      objectID: objectID == freezed ? _value.objectID : objectID as String,
      ownerType: ownerType == freezed ? _value.ownerType : ownerType as String,
      ownerID: ownerID == freezed ? _value.ownerID : ownerID as String,
      titleSubject: titleSubject == freezed
          ? _value.titleSubject
          : titleSubject as String,
      bodySubject:
          bodySubject == freezed ? _value.bodySubject : bodySubject as String,
      timeStamp: timeStamp == freezed ? _value.timeStamp : timeStamp as dynamic,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      profileID: profileID == freezed ? _value.profileID : profileID as String,
      profileType:
          profileType == freezed ? _value.profileType : profileType as String,
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
      String activityType,
      String objectID,
      String ownerType,
      String ownerID,
      String titleSubject,
      String bodySubject,
      dynamic timeStamp,
      String imageURL,
      String profileID,
      String profileType,
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
    Object serverTimeStamp = freezed,
  }) {
    return _then(_ActivityDTO(
      activityID:
          activityID == freezed ? _value.activityID : activityID as String,
      activityType: activityType == freezed
          ? _value.activityType
          : activityType as String,
      objectID: objectID == freezed ? _value.objectID : objectID as String,
      ownerType: ownerType == freezed ? _value.ownerType : ownerType as String,
      ownerID: ownerID == freezed ? _value.ownerID : ownerID as String,
      titleSubject: titleSubject == freezed
          ? _value.titleSubject
          : titleSubject as String,
      bodySubject:
          bodySubject == freezed ? _value.bodySubject : bodySubject as String,
      timeStamp: timeStamp == freezed ? _value.timeStamp : timeStamp as dynamic,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      profileID: profileID == freezed ? _value.profileID : profileID as String,
      profileType:
          profileType == freezed ? _value.profileType : profileType as String,
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
      @required this.activityType,
      @required this.objectID,
      @required this.ownerType,
      @required this.ownerID,
      @required this.titleSubject,
      @required this.bodySubject,
      @required this.timeStamp,
      @required this.imageURL,
      @required this.profileID,
      @required this.profileType,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(activityType != null),
        assert(objectID != null),
        assert(ownerType != null),
        assert(ownerID != null),
        assert(titleSubject != null),
        assert(bodySubject != null),
        assert(timeStamp != null),
        assert(imageURL != null),
        assert(profileID != null),
        assert(profileType != null),
        assert(serverTimeStamp != null);

  factory _$_ActivityDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ActivityDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String activityID;
  @override
  final String activityType;
  @override
  final String objectID;
  @override
  final String ownerType;
  @override
  final String ownerID;
  @override
  final String titleSubject;
  @override
  final String bodySubject;
  @override
  final dynamic timeStamp;
  @override
  final String imageURL;
  @override
  final String profileID;
  @override
  final String profileType;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'ActivityDTO(activityID: $activityID, activityType: $activityType, objectID: $objectID, ownerType: $ownerType, ownerID: $ownerID, titleSubject: $titleSubject, bodySubject: $bodySubject, timeStamp: $timeStamp, imageURL: $imageURL, profileID: $profileID, profileType: $profileType, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActivityDTO &&
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
                    .equals(other.profileType, profileType)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
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
      const DeepCollectionEquality().hash(profileType) ^
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
          @required String activityType,
          @required String objectID,
          @required String ownerType,
          @required String ownerID,
          @required String titleSubject,
          @required String bodySubject,
          @required dynamic timeStamp,
          @required String imageURL,
          @required String profileID,
          @required String profileType,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_ActivityDTO;

  factory _ActivityDTO.fromJson(Map<String, dynamic> json) =
      _$_ActivityDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get activityID;
  @override
  String get activityType;
  @override
  String get objectID;
  @override
  String get ownerType;
  @override
  String get ownerID;
  @override
  String get titleSubject;
  @override
  String get bodySubject;
  @override
  dynamic get timeStamp;
  @override
  String get imageURL;
  @override
  String get profileID;
  @override
  String get profileType;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$ActivityDTOCopyWith<_ActivityDTO> get copyWith;
}
