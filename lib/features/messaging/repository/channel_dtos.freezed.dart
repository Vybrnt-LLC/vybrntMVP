// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'channel_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ChannelDTO _$ChannelDTOFromJson(Map<String, dynamic> json) {
  return _ChannelDTO.fromJson(json);
}

class _$ChannelDTOTearOff {
  const _$ChannelDTOTearOff();

  _ChannelDTO call(
      {@JsonKey(ignore: true) UniqueId channelID,
      @required UniqueId authorID,
      @required String channelName,
      @required String channelDescription,
      @required String channelVisibility,
      @required bool hasUpdates,
      @required String channelType,
      @required bool hasStartTime,
      @required String venue,
      @required DateTime startDate,
      @required List<ChannelUser> users,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _ChannelDTO(
      channelID: channelID,
      authorID: authorID,
      channelName: channelName,
      channelDescription: channelDescription,
      channelVisibility: channelVisibility,
      hasUpdates: hasUpdates,
      channelType: channelType,
      hasStartTime: hasStartTime,
      venue: venue,
      startDate: startDate,
      users: users,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $ChannelDTO = _$ChannelDTOTearOff();

mixin _$ChannelDTO {
  @JsonKey(ignore: true)
  UniqueId get channelID;
  UniqueId get authorID;
  String get channelName;
  String get channelDescription;
  String get channelVisibility;
  bool get hasUpdates;
  String get channelType;
  bool get hasStartTime;
  String get venue;
  DateTime get startDate;
  List<ChannelUser> get users;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $ChannelDTOCopyWith<ChannelDTO> get copyWith;
}

abstract class $ChannelDTOCopyWith<$Res> {
  factory $ChannelDTOCopyWith(
          ChannelDTO value, $Res Function(ChannelDTO) then) =
      _$ChannelDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) UniqueId channelID,
      UniqueId authorID,
      String channelName,
      String channelDescription,
      String channelVisibility,
      bool hasUpdates,
      String channelType,
      bool hasStartTime,
      String venue,
      DateTime startDate,
      List<ChannelUser> users,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$ChannelDTOCopyWithImpl<$Res> implements $ChannelDTOCopyWith<$Res> {
  _$ChannelDTOCopyWithImpl(this._value, this._then);

  final ChannelDTO _value;
  // ignore: unused_field
  final $Res Function(ChannelDTO) _then;

  @override
  $Res call({
    Object channelID = freezed,
    Object authorID = freezed,
    Object channelName = freezed,
    Object channelDescription = freezed,
    Object channelVisibility = freezed,
    Object hasUpdates = freezed,
    Object channelType = freezed,
    Object hasStartTime = freezed,
    Object venue = freezed,
    Object startDate = freezed,
    Object users = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      channelID:
          channelID == freezed ? _value.channelID : channelID as UniqueId,
      authorID: authorID == freezed ? _value.authorID : authorID as UniqueId,
      channelName:
          channelName == freezed ? _value.channelName : channelName as String,
      channelDescription: channelDescription == freezed
          ? _value.channelDescription
          : channelDescription as String,
      channelVisibility: channelVisibility == freezed
          ? _value.channelVisibility
          : channelVisibility as String,
      hasUpdates:
          hasUpdates == freezed ? _value.hasUpdates : hasUpdates as bool,
      channelType:
          channelType == freezed ? _value.channelType : channelType as String,
      hasStartTime:
          hasStartTime == freezed ? _value.hasStartTime : hasStartTime as bool,
      venue: venue == freezed ? _value.venue : venue as String,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      users: users == freezed ? _value.users : users as List<ChannelUser>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$ChannelDTOCopyWith<$Res> implements $ChannelDTOCopyWith<$Res> {
  factory _$ChannelDTOCopyWith(
          _ChannelDTO value, $Res Function(_ChannelDTO) then) =
      __$ChannelDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) UniqueId channelID,
      UniqueId authorID,
      String channelName,
      String channelDescription,
      String channelVisibility,
      bool hasUpdates,
      String channelType,
      bool hasStartTime,
      String venue,
      DateTime startDate,
      List<ChannelUser> users,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$ChannelDTOCopyWithImpl<$Res> extends _$ChannelDTOCopyWithImpl<$Res>
    implements _$ChannelDTOCopyWith<$Res> {
  __$ChannelDTOCopyWithImpl(
      _ChannelDTO _value, $Res Function(_ChannelDTO) _then)
      : super(_value, (v) => _then(v as _ChannelDTO));

  @override
  _ChannelDTO get _value => super._value as _ChannelDTO;

  @override
  $Res call({
    Object channelID = freezed,
    Object authorID = freezed,
    Object channelName = freezed,
    Object channelDescription = freezed,
    Object channelVisibility = freezed,
    Object hasUpdates = freezed,
    Object channelType = freezed,
    Object hasStartTime = freezed,
    Object venue = freezed,
    Object startDate = freezed,
    Object users = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_ChannelDTO(
      channelID:
          channelID == freezed ? _value.channelID : channelID as UniqueId,
      authorID: authorID == freezed ? _value.authorID : authorID as UniqueId,
      channelName:
          channelName == freezed ? _value.channelName : channelName as String,
      channelDescription: channelDescription == freezed
          ? _value.channelDescription
          : channelDescription as String,
      channelVisibility: channelVisibility == freezed
          ? _value.channelVisibility
          : channelVisibility as String,
      hasUpdates:
          hasUpdates == freezed ? _value.hasUpdates : hasUpdates as bool,
      channelType:
          channelType == freezed ? _value.channelType : channelType as String,
      hasStartTime:
          hasStartTime == freezed ? _value.hasStartTime : hasStartTime as bool,
      venue: venue == freezed ? _value.venue : venue as String,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      users: users == freezed ? _value.users : users as List<ChannelUser>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_ChannelDTO implements _ChannelDTO {
  _$_ChannelDTO(
      {@JsonKey(ignore: true) this.channelID,
      @required this.authorID,
      @required this.channelName,
      @required this.channelDescription,
      @required this.channelVisibility,
      @required this.hasUpdates,
      @required this.channelType,
      @required this.hasStartTime,
      @required this.venue,
      @required this.startDate,
      @required this.users,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(authorID != null),
        assert(channelName != null),
        assert(channelDescription != null),
        assert(channelVisibility != null),
        assert(hasUpdates != null),
        assert(channelType != null),
        assert(hasStartTime != null),
        assert(venue != null),
        assert(startDate != null),
        assert(users != null),
        assert(serverTimeStamp != null);

  factory _$_ChannelDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ChannelDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final UniqueId channelID;
  @override
  final UniqueId authorID;
  @override
  final String channelName;
  @override
  final String channelDescription;
  @override
  final String channelVisibility;
  @override
  final bool hasUpdates;
  @override
  final String channelType;
  @override
  final bool hasStartTime;
  @override
  final String venue;
  @override
  final DateTime startDate;
  @override
  final List<ChannelUser> users;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'ChannelDTO(channelID: $channelID, authorID: $authorID, channelName: $channelName, channelDescription: $channelDescription, channelVisibility: $channelVisibility, hasUpdates: $hasUpdates, channelType: $channelType, hasStartTime: $hasStartTime, venue: $venue, startDate: $startDate, users: $users, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChannelDTO &&
            (identical(other.channelID, channelID) ||
                const DeepCollectionEquality()
                    .equals(other.channelID, channelID)) &&
            (identical(other.authorID, authorID) ||
                const DeepCollectionEquality()
                    .equals(other.authorID, authorID)) &&
            (identical(other.channelName, channelName) ||
                const DeepCollectionEquality()
                    .equals(other.channelName, channelName)) &&
            (identical(other.channelDescription, channelDescription) ||
                const DeepCollectionEquality()
                    .equals(other.channelDescription, channelDescription)) &&
            (identical(other.channelVisibility, channelVisibility) ||
                const DeepCollectionEquality()
                    .equals(other.channelVisibility, channelVisibility)) &&
            (identical(other.hasUpdates, hasUpdates) ||
                const DeepCollectionEquality()
                    .equals(other.hasUpdates, hasUpdates)) &&
            (identical(other.channelType, channelType) ||
                const DeepCollectionEquality()
                    .equals(other.channelType, channelType)) &&
            (identical(other.hasStartTime, hasStartTime) ||
                const DeepCollectionEquality()
                    .equals(other.hasStartTime, hasStartTime)) &&
            (identical(other.venue, venue) ||
                const DeepCollectionEquality().equals(other.venue, venue)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(channelID) ^
      const DeepCollectionEquality().hash(authorID) ^
      const DeepCollectionEquality().hash(channelName) ^
      const DeepCollectionEquality().hash(channelDescription) ^
      const DeepCollectionEquality().hash(channelVisibility) ^
      const DeepCollectionEquality().hash(hasUpdates) ^
      const DeepCollectionEquality().hash(channelType) ^
      const DeepCollectionEquality().hash(hasStartTime) ^
      const DeepCollectionEquality().hash(venue) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$ChannelDTOCopyWith<_ChannelDTO> get copyWith =>
      __$ChannelDTOCopyWithImpl<_ChannelDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChannelDTOToJson(this);
  }
}

abstract class _ChannelDTO implements ChannelDTO {
  factory _ChannelDTO(
          {@JsonKey(ignore: true) UniqueId channelID,
          @required UniqueId authorID,
          @required String channelName,
          @required String channelDescription,
          @required String channelVisibility,
          @required bool hasUpdates,
          @required String channelType,
          @required bool hasStartTime,
          @required String venue,
          @required DateTime startDate,
          @required List<ChannelUser> users,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_ChannelDTO;

  factory _ChannelDTO.fromJson(Map<String, dynamic> json) =
      _$_ChannelDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  UniqueId get channelID;
  @override
  UniqueId get authorID;
  @override
  String get channelName;
  @override
  String get channelDescription;
  @override
  String get channelVisibility;
  @override
  bool get hasUpdates;
  @override
  String get channelType;
  @override
  bool get hasStartTime;
  @override
  String get venue;
  @override
  DateTime get startDate;
  @override
  List<ChannelUser> get users;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$ChannelDTOCopyWith<_ChannelDTO> get copyWith;
}
