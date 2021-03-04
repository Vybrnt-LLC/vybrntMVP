// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'event_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EventDto _$EventDtoFromJson(Map<String, dynamic> json) {
  return _EventDto.fromJson(json);
}

class _$EventDtoTearOff {
  const _$EventDtoTearOff();

  _EventDto call(
      {@JsonKey(ignore: true) String eventID,
      @required String senderID,
      @required String eventName,
      @required @TimestampConverter() DateTime startTime,
      @required @TimestampConverter() DateTime endTime,
      @required @TimestampConverter() DateTime timeStamp,
      @required String eventCaption,
      @required String eventUrl,
      @required String eventLocation,
      @required bool isOrg,
      String orgID,
      String eventImageUrl,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _EventDto(
      eventID: eventID,
      senderID: senderID,
      eventName: eventName,
      startTime: startTime,
      endTime: endTime,
      timeStamp: timeStamp,
      eventCaption: eventCaption,
      eventUrl: eventUrl,
      eventLocation: eventLocation,
      isOrg: isOrg,
      orgID: orgID,
      eventImageUrl: eventImageUrl,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $EventDto = _$EventDtoTearOff();

mixin _$EventDto {
  @JsonKey(ignore: true)
  String get eventID;
  String get senderID;
  String get eventName;
  @TimestampConverter()
  DateTime get startTime;
  @TimestampConverter()
  DateTime get endTime;
  @TimestampConverter()
  DateTime get timeStamp;
  String get eventCaption;
  String get eventUrl;
  String get eventLocation;
  bool get isOrg;
  String get orgID;
  String get eventImageUrl;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $EventDtoCopyWith<EventDto> get copyWith;
}

abstract class $EventDtoCopyWith<$Res> {
  factory $EventDtoCopyWith(EventDto value, $Res Function(EventDto) then) =
      _$EventDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String eventID,
      String senderID,
      String eventName,
      @TimestampConverter() DateTime startTime,
      @TimestampConverter() DateTime endTime,
      @TimestampConverter() DateTime timeStamp,
      String eventCaption,
      String eventUrl,
      String eventLocation,
      bool isOrg,
      String orgID,
      String eventImageUrl,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$EventDtoCopyWithImpl<$Res> implements $EventDtoCopyWith<$Res> {
  _$EventDtoCopyWithImpl(this._value, this._then);

  final EventDto _value;
  // ignore: unused_field
  final $Res Function(EventDto) _then;

  @override
  $Res call({
    Object eventID = freezed,
    Object senderID = freezed,
    Object eventName = freezed,
    Object startTime = freezed,
    Object endTime = freezed,
    Object timeStamp = freezed,
    Object eventCaption = freezed,
    Object eventUrl = freezed,
    Object eventLocation = freezed,
    Object isOrg = freezed,
    Object orgID = freezed,
    Object eventImageUrl = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      eventID: eventID == freezed ? _value.eventID : eventID as String,
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
      eventUrl: eventUrl == freezed ? _value.eventUrl : eventUrl as String,
      eventLocation: eventLocation == freezed
          ? _value.eventLocation
          : eventLocation as String,
      isOrg: isOrg == freezed ? _value.isOrg : isOrg as bool,
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      eventImageUrl: eventImageUrl == freezed
          ? _value.eventImageUrl
          : eventImageUrl as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$EventDtoCopyWith<$Res> implements $EventDtoCopyWith<$Res> {
  factory _$EventDtoCopyWith(_EventDto value, $Res Function(_EventDto) then) =
      __$EventDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String eventID,
      String senderID,
      String eventName,
      @TimestampConverter() DateTime startTime,
      @TimestampConverter() DateTime endTime,
      @TimestampConverter() DateTime timeStamp,
      String eventCaption,
      String eventUrl,
      String eventLocation,
      bool isOrg,
      String orgID,
      String eventImageUrl,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$EventDtoCopyWithImpl<$Res> extends _$EventDtoCopyWithImpl<$Res>
    implements _$EventDtoCopyWith<$Res> {
  __$EventDtoCopyWithImpl(_EventDto _value, $Res Function(_EventDto) _then)
      : super(_value, (v) => _then(v as _EventDto));

  @override
  _EventDto get _value => super._value as _EventDto;

  @override
  $Res call({
    Object eventID = freezed,
    Object senderID = freezed,
    Object eventName = freezed,
    Object startTime = freezed,
    Object endTime = freezed,
    Object timeStamp = freezed,
    Object eventCaption = freezed,
    Object eventUrl = freezed,
    Object eventLocation = freezed,
    Object isOrg = freezed,
    Object orgID = freezed,
    Object eventImageUrl = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_EventDto(
      eventID: eventID == freezed ? _value.eventID : eventID as String,
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
      eventUrl: eventUrl == freezed ? _value.eventUrl : eventUrl as String,
      eventLocation: eventLocation == freezed
          ? _value.eventLocation
          : eventLocation as String,
      isOrg: isOrg == freezed ? _value.isOrg : isOrg as bool,
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      eventImageUrl: eventImageUrl == freezed
          ? _value.eventImageUrl
          : eventImageUrl as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_EventDto with DiagnosticableTreeMixin implements _EventDto {
  _$_EventDto(
      {@JsonKey(ignore: true) this.eventID,
      @required this.senderID,
      @required this.eventName,
      @required @TimestampConverter() this.startTime,
      @required @TimestampConverter() this.endTime,
      @required @TimestampConverter() this.timeStamp,
      @required this.eventCaption,
      @required this.eventUrl,
      @required this.eventLocation,
      @required this.isOrg,
      this.orgID,
      this.eventImageUrl,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(senderID != null),
        assert(eventName != null),
        assert(startTime != null),
        assert(endTime != null),
        assert(timeStamp != null),
        assert(eventCaption != null),
        assert(eventUrl != null),
        assert(eventLocation != null),
        assert(isOrg != null),
        assert(serverTimeStamp != null);

  factory _$_EventDto.fromJson(Map<String, dynamic> json) =>
      _$_$_EventDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String eventID;
  @override
  final String senderID;
  @override
  final String eventName;
  @override
  @TimestampConverter()
  final DateTime startTime;
  @override
  @TimestampConverter()
  final DateTime endTime;
  @override
  @TimestampConverter()
  final DateTime timeStamp;
  @override
  final String eventCaption;
  @override
  final String eventUrl;
  @override
  final String eventLocation;
  @override
  final bool isOrg;
  @override
  final String orgID;
  @override
  final String eventImageUrl;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EventDto(eventID: $eventID, senderID: $senderID, eventName: $eventName, startTime: $startTime, endTime: $endTime, timeStamp: $timeStamp, eventCaption: $eventCaption, eventUrl: $eventUrl, eventLocation: $eventLocation, isOrg: $isOrg, orgID: $orgID, eventImageUrl: $eventImageUrl, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EventDto'))
      ..add(DiagnosticsProperty('eventID', eventID))
      ..add(DiagnosticsProperty('senderID', senderID))
      ..add(DiagnosticsProperty('eventName', eventName))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('endTime', endTime))
      ..add(DiagnosticsProperty('timeStamp', timeStamp))
      ..add(DiagnosticsProperty('eventCaption', eventCaption))
      ..add(DiagnosticsProperty('eventUrl', eventUrl))
      ..add(DiagnosticsProperty('eventLocation', eventLocation))
      ..add(DiagnosticsProperty('isOrg', isOrg))
      ..add(DiagnosticsProperty('orgID', orgID))
      ..add(DiagnosticsProperty('eventImageUrl', eventImageUrl))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventDto &&
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
            (identical(other.eventUrl, eventUrl) ||
                const DeepCollectionEquality()
                    .equals(other.eventUrl, eventUrl)) &&
            (identical(other.eventLocation, eventLocation) ||
                const DeepCollectionEquality()
                    .equals(other.eventLocation, eventLocation)) &&
            (identical(other.isOrg, isOrg) ||
                const DeepCollectionEquality().equals(other.isOrg, isOrg)) &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.eventImageUrl, eventImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.eventImageUrl, eventImageUrl)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
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
      const DeepCollectionEquality().hash(eventUrl) ^
      const DeepCollectionEquality().hash(eventLocation) ^
      const DeepCollectionEquality().hash(isOrg) ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(eventImageUrl) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$EventDtoCopyWith<_EventDto> get copyWith =>
      __$EventDtoCopyWithImpl<_EventDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EventDtoToJson(this);
  }
}

abstract class _EventDto implements EventDto {
  factory _EventDto(
          {@JsonKey(ignore: true) String eventID,
          @required String senderID,
          @required String eventName,
          @required @TimestampConverter() DateTime startTime,
          @required @TimestampConverter() DateTime endTime,
          @required @TimestampConverter() DateTime timeStamp,
          @required String eventCaption,
          @required String eventUrl,
          @required String eventLocation,
          @required bool isOrg,
          String orgID,
          String eventImageUrl,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_EventDto;

  factory _EventDto.fromJson(Map<String, dynamic> json) = _$_EventDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get eventID;
  @override
  String get senderID;
  @override
  String get eventName;
  @override
  @TimestampConverter()
  DateTime get startTime;
  @override
  @TimestampConverter()
  DateTime get endTime;
  @override
  @TimestampConverter()
  DateTime get timeStamp;
  @override
  String get eventCaption;
  @override
  String get eventUrl;
  @override
  String get eventLocation;
  @override
  bool get isOrg;
  @override
  String get orgID;
  @override
  String get eventImageUrl;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$EventDtoCopyWith<_EventDto> get copyWith;
}
