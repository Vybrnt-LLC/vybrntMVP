// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'report_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ReportDto _$ReportDtoFromJson(Map<String, dynamic> json) {
  return _ReportDto.fromJson(json);
}

class _$ReportDtoTearOff {
  const _$ReportDtoTearOff();

  _ReportDto call(
      {@JsonKey(ignore: true) String reportID,
      @required String senderID,
      @required String contentID,
      @required String contentType,
      @required String ownerID,
      @required String ownerType,
      @required String message,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _ReportDto(
      reportID: reportID,
      senderID: senderID,
      contentID: contentID,
      contentType: contentType,
      ownerID: ownerID,
      ownerType: ownerType,
      message: message,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $ReportDto = _$ReportDtoTearOff();

mixin _$ReportDto {
  @JsonKey(ignore: true)
  String get reportID;
  String get senderID;
  String get contentID;
  String get contentType;
  String get ownerID;
  String get ownerType;
  String get message;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $ReportDtoCopyWith<ReportDto> get copyWith;
}

abstract class $ReportDtoCopyWith<$Res> {
  factory $ReportDtoCopyWith(ReportDto value, $Res Function(ReportDto) then) =
      _$ReportDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String reportID,
      String senderID,
      String contentID,
      String contentType,
      String ownerID,
      String ownerType,
      String message,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$ReportDtoCopyWithImpl<$Res> implements $ReportDtoCopyWith<$Res> {
  _$ReportDtoCopyWithImpl(this._value, this._then);

  final ReportDto _value;
  // ignore: unused_field
  final $Res Function(ReportDto) _then;

  @override
  $Res call({
    Object reportID = freezed,
    Object senderID = freezed,
    Object contentID = freezed,
    Object contentType = freezed,
    Object ownerID = freezed,
    Object ownerType = freezed,
    Object message = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      reportID: reportID == freezed ? _value.reportID : reportID as String,
      senderID: senderID == freezed ? _value.senderID : senderID as String,
      contentID: contentID == freezed ? _value.contentID : contentID as String,
      contentType:
          contentType == freezed ? _value.contentType : contentType as String,
      ownerID: ownerID == freezed ? _value.ownerID : ownerID as String,
      ownerType: ownerType == freezed ? _value.ownerType : ownerType as String,
      message: message == freezed ? _value.message : message as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$ReportDtoCopyWith<$Res> implements $ReportDtoCopyWith<$Res> {
  factory _$ReportDtoCopyWith(
          _ReportDto value, $Res Function(_ReportDto) then) =
      __$ReportDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String reportID,
      String senderID,
      String contentID,
      String contentType,
      String ownerID,
      String ownerType,
      String message,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$ReportDtoCopyWithImpl<$Res> extends _$ReportDtoCopyWithImpl<$Res>
    implements _$ReportDtoCopyWith<$Res> {
  __$ReportDtoCopyWithImpl(_ReportDto _value, $Res Function(_ReportDto) _then)
      : super(_value, (v) => _then(v as _ReportDto));

  @override
  _ReportDto get _value => super._value as _ReportDto;

  @override
  $Res call({
    Object reportID = freezed,
    Object senderID = freezed,
    Object contentID = freezed,
    Object contentType = freezed,
    Object ownerID = freezed,
    Object ownerType = freezed,
    Object message = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_ReportDto(
      reportID: reportID == freezed ? _value.reportID : reportID as String,
      senderID: senderID == freezed ? _value.senderID : senderID as String,
      contentID: contentID == freezed ? _value.contentID : contentID as String,
      contentType:
          contentType == freezed ? _value.contentType : contentType as String,
      ownerID: ownerID == freezed ? _value.ownerID : ownerID as String,
      ownerType: ownerType == freezed ? _value.ownerType : ownerType as String,
      message: message == freezed ? _value.message : message as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_ReportDto with DiagnosticableTreeMixin implements _ReportDto {
  _$_ReportDto(
      {@JsonKey(ignore: true) this.reportID,
      @required this.senderID,
      @required this.contentID,
      @required this.contentType,
      @required this.ownerID,
      @required this.ownerType,
      @required this.message,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(senderID != null),
        assert(contentID != null),
        assert(contentType != null),
        assert(ownerID != null),
        assert(ownerType != null),
        assert(message != null),
        assert(serverTimeStamp != null);

  factory _$_ReportDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ReportDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String reportID;
  @override
  final String senderID;
  @override
  final String contentID;
  @override
  final String contentType;
  @override
  final String ownerID;
  @override
  final String ownerType;
  @override
  final String message;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportDto(reportID: $reportID, senderID: $senderID, contentID: $contentID, contentType: $contentType, ownerID: $ownerID, ownerType: $ownerType, message: $message, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReportDto'))
      ..add(DiagnosticsProperty('reportID', reportID))
      ..add(DiagnosticsProperty('senderID', senderID))
      ..add(DiagnosticsProperty('contentID', contentID))
      ..add(DiagnosticsProperty('contentType', contentType))
      ..add(DiagnosticsProperty('ownerID', ownerID))
      ..add(DiagnosticsProperty('ownerType', ownerType))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportDto &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.senderID, senderID) ||
                const DeepCollectionEquality()
                    .equals(other.senderID, senderID)) &&
            (identical(other.contentID, contentID) ||
                const DeepCollectionEquality()
                    .equals(other.contentID, contentID)) &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality()
                    .equals(other.contentType, contentType)) &&
            (identical(other.ownerID, ownerID) ||
                const DeepCollectionEquality()
                    .equals(other.ownerID, ownerID)) &&
            (identical(other.ownerType, ownerType) ||
                const DeepCollectionEquality()
                    .equals(other.ownerType, ownerType)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(senderID) ^
      const DeepCollectionEquality().hash(contentID) ^
      const DeepCollectionEquality().hash(contentType) ^
      const DeepCollectionEquality().hash(ownerID) ^
      const DeepCollectionEquality().hash(ownerType) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$ReportDtoCopyWith<_ReportDto> get copyWith =>
      __$ReportDtoCopyWithImpl<_ReportDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReportDtoToJson(this);
  }
}

abstract class _ReportDto implements ReportDto {
  factory _ReportDto(
          {@JsonKey(ignore: true) String reportID,
          @required String senderID,
          @required String contentID,
          @required String contentType,
          @required String ownerID,
          @required String ownerType,
          @required String message,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_ReportDto;

  factory _ReportDto.fromJson(Map<String, dynamic> json) =
      _$_ReportDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get reportID;
  @override
  String get senderID;
  @override
  String get contentID;
  @override
  String get contentType;
  @override
  String get ownerID;
  @override
  String get ownerType;
  @override
  String get message;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$ReportDtoCopyWith<_ReportDto> get copyWith;
}
