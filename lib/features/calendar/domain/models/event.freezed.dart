// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EventTearOff {
  const _$EventTearOff();

  _Event call(
      {@required UniqueId eventID,
      @required String senderID,
      @required String eventName,
      @required DateTime startTime,
      @required DateTime endTime,
      @required DateTime timeStamp,
      @required String eventCaption,
      @required String eventLocation,
      @required bool isOrg,
      String eventUrl,
      String orgID,
      String eventImageUrl}) {
    return _Event(
      eventID: eventID,
      senderID: senderID,
      eventName: eventName,
      startTime: startTime,
      endTime: endTime,
      timeStamp: timeStamp,
      eventCaption: eventCaption,
      eventLocation: eventLocation,
      isOrg: isOrg,
      eventUrl: eventUrl,
      orgID: orgID,
      eventImageUrl: eventImageUrl,
    );
  }
}

// ignore: unused_element
const $Event = _$EventTearOff();

mixin _$Event {
  UniqueId get eventID;
  String get senderID;
  String get eventName;
  DateTime get startTime;
  DateTime get endTime;
  DateTime get timeStamp;
  String get eventCaption;
  String get eventLocation;
  bool get isOrg;
  String get eventUrl;
  String get orgID;
  String get eventImageUrl;

  $EventCopyWith<Event> get copyWith;
}

abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res>;
  $Res call(
      {UniqueId eventID,
      String senderID,
      String eventName,
      DateTime startTime,
      DateTime endTime,
      DateTime timeStamp,
      String eventCaption,
      String eventLocation,
      bool isOrg,
      String eventUrl,
      String orgID,
      String eventImageUrl});
}

class _$EventCopyWithImpl<$Res> implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  final Event _value;
  // ignore: unused_field
  final $Res Function(Event) _then;

  @override
  $Res call({
    Object eventID = freezed,
    Object senderID = freezed,
    Object eventName = freezed,
    Object startTime = freezed,
    Object endTime = freezed,
    Object timeStamp = freezed,
    Object eventCaption = freezed,
    Object eventLocation = freezed,
    Object isOrg = freezed,
    Object eventUrl = freezed,
    Object orgID = freezed,
    Object eventImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      eventID: eventID == freezed ? _value.eventID : eventID as UniqueId,
      senderID: senderID == freezed ? _value.senderID : senderID as String,
      eventName: eventName == freezed ? _value.eventName : eventName as String,
      startTime:
          startTime == freezed ? _value.startTime : startTime as DateTime,
      endTime: endTime == freezed ? _value.endTime : endTime as DateTime,
      timeStamp:
          timeStamp == freezed ? _value.timeStamp : timeStamp as DateTime,
      eventCaption: eventCaption == freezed
          ? _value.eventCaption
          : eventCaption as String,
      eventLocation: eventLocation == freezed
          ? _value.eventLocation
          : eventLocation as String,
      isOrg: isOrg == freezed ? _value.isOrg : isOrg as bool,
      eventUrl: eventUrl == freezed ? _value.eventUrl : eventUrl as String,
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      eventImageUrl: eventImageUrl == freezed
          ? _value.eventImageUrl
          : eventImageUrl as String,
    ));
  }
}

abstract class _$EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$EventCopyWith(_Event value, $Res Function(_Event) then) =
      __$EventCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId eventID,
      String senderID,
      String eventName,
      DateTime startTime,
      DateTime endTime,
      DateTime timeStamp,
      String eventCaption,
      String eventLocation,
      bool isOrg,
      String eventUrl,
      String orgID,
      String eventImageUrl});
}

class __$EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements _$EventCopyWith<$Res> {
  __$EventCopyWithImpl(_Event _value, $Res Function(_Event) _then)
      : super(_value, (v) => _then(v as _Event));

  @override
  _Event get _value => super._value as _Event;

  @override
  $Res call({
    Object eventID = freezed,
    Object senderID = freezed,
    Object eventName = freezed,
    Object startTime = freezed,
    Object endTime = freezed,
    Object timeStamp = freezed,
    Object eventCaption = freezed,
    Object eventLocation = freezed,
    Object isOrg = freezed,
    Object eventUrl = freezed,
    Object orgID = freezed,
    Object eventImageUrl = freezed,
  }) {
    return _then(_Event(
      eventID: eventID == freezed ? _value.eventID : eventID as UniqueId,
      senderID: senderID == freezed ? _value.senderID : senderID as String,
      eventName: eventName == freezed ? _value.eventName : eventName as String,
      startTime:
          startTime == freezed ? _value.startTime : startTime as DateTime,
      endTime: endTime == freezed ? _value.endTime : endTime as DateTime,
      timeStamp:
          timeStamp == freezed ? _value.timeStamp : timeStamp as DateTime,
      eventCaption: eventCaption == freezed
          ? _value.eventCaption
          : eventCaption as String,
      eventLocation: eventLocation == freezed
          ? _value.eventLocation
          : eventLocation as String,
      isOrg: isOrg == freezed ? _value.isOrg : isOrg as bool,
      eventUrl: eventUrl == freezed ? _value.eventUrl : eventUrl as String,
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      eventImageUrl: eventImageUrl == freezed
          ? _value.eventImageUrl
          : eventImageUrl as String,
    ));
  }
}

class _$_Event with DiagnosticableTreeMixin implements _Event {
  const _$_Event(
      {@required this.eventID,
      @required this.senderID,
      @required this.eventName,
      @required this.startTime,
      @required this.endTime,
      @required this.timeStamp,
      @required this.eventCaption,
      @required this.eventLocation,
      @required this.isOrg,
      this.eventUrl,
      this.orgID,
      this.eventImageUrl})
      : assert(eventID != null),
        assert(senderID != null),
        assert(eventName != null),
        assert(startTime != null),
        assert(endTime != null),
        assert(timeStamp != null),
        assert(eventCaption != null),
        assert(eventLocation != null),
        assert(isOrg != null);

  @override
  final UniqueId eventID;
  @override
  final String senderID;
  @override
  final String eventName;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final DateTime timeStamp;
  @override
  final String eventCaption;
  @override
  final String eventLocation;
  @override
  final bool isOrg;
  @override
  final String eventUrl;
  @override
  final String orgID;
  @override
  final String eventImageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Event(eventID: $eventID, senderID: $senderID, eventName: $eventName, startTime: $startTime, endTime: $endTime, timeStamp: $timeStamp, eventCaption: $eventCaption, eventLocation: $eventLocation, isOrg: $isOrg, eventUrl: $eventUrl, orgID: $orgID, eventImageUrl: $eventImageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Event'))
      ..add(DiagnosticsProperty('eventID', eventID))
      ..add(DiagnosticsProperty('senderID', senderID))
      ..add(DiagnosticsProperty('eventName', eventName))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('endTime', endTime))
      ..add(DiagnosticsProperty('timeStamp', timeStamp))
      ..add(DiagnosticsProperty('eventCaption', eventCaption))
      ..add(DiagnosticsProperty('eventLocation', eventLocation))
      ..add(DiagnosticsProperty('isOrg', isOrg))
      ..add(DiagnosticsProperty('eventUrl', eventUrl))
      ..add(DiagnosticsProperty('orgID', orgID))
      ..add(DiagnosticsProperty('eventImageUrl', eventImageUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Event &&
            (identical(other.eventID, eventID) ||
                const DeepCollectionEquality()
                    .equals(other.eventID, eventID)) &&
            (identical(other.senderID, senderID) ||
                const DeepCollectionEquality()
                    .equals(other.senderID, senderID)) &&
            (identical(other.eventName, eventName) ||
                const DeepCollectionEquality()
                    .equals(other.eventName, eventName)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.timeStamp, timeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.timeStamp, timeStamp)) &&
            (identical(other.eventCaption, eventCaption) ||
                const DeepCollectionEquality()
                    .equals(other.eventCaption, eventCaption)) &&
            (identical(other.eventLocation, eventLocation) ||
                const DeepCollectionEquality()
                    .equals(other.eventLocation, eventLocation)) &&
            (identical(other.isOrg, isOrg) ||
                const DeepCollectionEquality().equals(other.isOrg, isOrg)) &&
            (identical(other.eventUrl, eventUrl) ||
                const DeepCollectionEquality()
                    .equals(other.eventUrl, eventUrl)) &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.eventImageUrl, eventImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.eventImageUrl, eventImageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(eventID) ^
      const DeepCollectionEquality().hash(senderID) ^
      const DeepCollectionEquality().hash(eventName) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(timeStamp) ^
      const DeepCollectionEquality().hash(eventCaption) ^
      const DeepCollectionEquality().hash(eventLocation) ^
      const DeepCollectionEquality().hash(isOrg) ^
      const DeepCollectionEquality().hash(eventUrl) ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(eventImageUrl);

  @override
  _$EventCopyWith<_Event> get copyWith =>
      __$EventCopyWithImpl<_Event>(this, _$identity);
}

abstract class _Event implements Event {
  const factory _Event(
      {@required UniqueId eventID,
      @required String senderID,
      @required String eventName,
      @required DateTime startTime,
      @required DateTime endTime,
      @required DateTime timeStamp,
      @required String eventCaption,
      @required String eventLocation,
      @required bool isOrg,
      String eventUrl,
      String orgID,
      String eventImageUrl}) = _$_Event;

  @override
  UniqueId get eventID;
  @override
  String get senderID;
  @override
  String get eventName;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  DateTime get timeStamp;
  @override
  String get eventCaption;
  @override
  String get eventLocation;
  @override
  bool get isOrg;
  @override
  String get eventUrl;
  @override
  String get orgID;
  @override
  String get eventImageUrl;
  @override
  _$EventCopyWith<_Event> get copyWith;
}
