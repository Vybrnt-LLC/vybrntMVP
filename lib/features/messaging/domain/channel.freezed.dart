// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ChannelTearOff {
  const _$ChannelTearOff();

  _Channel call(
      {@required UniqueId channelID,
      @required UniqueId authorID,
      @required String channelName,
      @required String channelDescription,
      @required String channelVisibility,
      @required bool hasUpdates,
      @required String channelType,
      @required bool hasStartTime,
      @required String venue,
      @required DateTime startDate,
      @required List<ChannelUser> users}) {
    return _Channel(
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
    );
  }
}

// ignore: unused_element
const $Channel = _$ChannelTearOff();

mixin _$Channel {
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

  $ChannelCopyWith<Channel> get copyWith;
}

abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res>;
  $Res call(
      {UniqueId channelID,
      UniqueId authorID,
      String channelName,
      String channelDescription,
      String channelVisibility,
      bool hasUpdates,
      String channelType,
      bool hasStartTime,
      String venue,
      DateTime startDate,
      List<ChannelUser> users});
}

class _$ChannelCopyWithImpl<$Res> implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  final Channel _value;
  // ignore: unused_field
  final $Res Function(Channel) _then;

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
    ));
  }
}

abstract class _$ChannelCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$ChannelCopyWith(_Channel value, $Res Function(_Channel) then) =
      __$ChannelCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId channelID,
      UniqueId authorID,
      String channelName,
      String channelDescription,
      String channelVisibility,
      bool hasUpdates,
      String channelType,
      bool hasStartTime,
      String venue,
      DateTime startDate,
      List<ChannelUser> users});
}

class __$ChannelCopyWithImpl<$Res> extends _$ChannelCopyWithImpl<$Res>
    implements _$ChannelCopyWith<$Res> {
  __$ChannelCopyWithImpl(_Channel _value, $Res Function(_Channel) _then)
      : super(_value, (v) => _then(v as _Channel));

  @override
  _Channel get _value => super._value as _Channel;

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
  }) {
    return _then(_Channel(
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
    ));
  }
}

class _$_Channel with DiagnosticableTreeMixin implements _Channel {
  const _$_Channel(
      {@required this.channelID,
      @required this.authorID,
      @required this.channelName,
      @required this.channelDescription,
      @required this.channelVisibility,
      @required this.hasUpdates,
      @required this.channelType,
      @required this.hasStartTime,
      @required this.venue,
      @required this.startDate,
      @required this.users})
      : assert(channelID != null),
        assert(authorID != null),
        assert(channelName != null),
        assert(channelDescription != null),
        assert(channelVisibility != null),
        assert(hasUpdates != null),
        assert(channelType != null),
        assert(hasStartTime != null),
        assert(venue != null),
        assert(startDate != null),
        assert(users != null);

  @override
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Channel(channelID: $channelID, authorID: $authorID, channelName: $channelName, channelDescription: $channelDescription, channelVisibility: $channelVisibility, hasUpdates: $hasUpdates, channelType: $channelType, hasStartTime: $hasStartTime, venue: $venue, startDate: $startDate, users: $users)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Channel'))
      ..add(DiagnosticsProperty('channelID', channelID))
      ..add(DiagnosticsProperty('authorID', authorID))
      ..add(DiagnosticsProperty('channelName', channelName))
      ..add(DiagnosticsProperty('channelDescription', channelDescription))
      ..add(DiagnosticsProperty('channelVisibility', channelVisibility))
      ..add(DiagnosticsProperty('hasUpdates', hasUpdates))
      ..add(DiagnosticsProperty('channelType', channelType))
      ..add(DiagnosticsProperty('hasStartTime', hasStartTime))
      ..add(DiagnosticsProperty('venue', venue))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('users', users));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Channel &&
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
                const DeepCollectionEquality().equals(other.users, users)));
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
      const DeepCollectionEquality().hash(users);

  @override
  _$ChannelCopyWith<_Channel> get copyWith =>
      __$ChannelCopyWithImpl<_Channel>(this, _$identity);
}

abstract class _Channel implements Channel {
  const factory _Channel(
      {@required UniqueId channelID,
      @required UniqueId authorID,
      @required String channelName,
      @required String channelDescription,
      @required String channelVisibility,
      @required bool hasUpdates,
      @required String channelType,
      @required bool hasStartTime,
      @required String venue,
      @required DateTime startDate,
      @required List<ChannelUser> users}) = _$_Channel;

  @override
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
  _$ChannelCopyWith<_Channel> get copyWith;
}
