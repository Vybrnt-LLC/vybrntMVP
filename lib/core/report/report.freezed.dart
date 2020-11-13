// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ReportTearOff {
  const _$ReportTearOff();

  _Report call(
      {@required UniqueId reportID,
      @required String senderID,
      @required String contentID,
      @required String contentType,
      @required String ownerID,
      @required String ownerType,
      @required String message}) {
    return _Report(
      reportID: reportID,
      senderID: senderID,
      contentID: contentID,
      contentType: contentType,
      ownerID: ownerID,
      ownerType: ownerType,
      message: message,
    );
  }
}

// ignore: unused_element
const $Report = _$ReportTearOff();

mixin _$Report {
  UniqueId get reportID;
  String get senderID;
  String get contentID;
  String get contentType;
  String get ownerID;
  String get ownerType;
  String get message;

  $ReportCopyWith<Report> get copyWith;
}

abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res>;
  $Res call(
      {UniqueId reportID,
      String senderID,
      String contentID,
      String contentType,
      String ownerID,
      String ownerType,
      String message});
}

class _$ReportCopyWithImpl<$Res> implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  final Report _value;
  // ignore: unused_field
  final $Res Function(Report) _then;

  @override
  $Res call({
    Object reportID = freezed,
    Object senderID = freezed,
    Object contentID = freezed,
    Object contentType = freezed,
    Object ownerID = freezed,
    Object ownerType = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      reportID: reportID == freezed ? _value.reportID : reportID as UniqueId,
      senderID: senderID == freezed ? _value.senderID : senderID as String,
      contentID: contentID == freezed ? _value.contentID : contentID as String,
      contentType:
          contentType == freezed ? _value.contentType : contentType as String,
      ownerID: ownerID == freezed ? _value.ownerID : ownerID as String,
      ownerType: ownerType == freezed ? _value.ownerType : ownerType as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class _$ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$ReportCopyWith(_Report value, $Res Function(_Report) then) =
      __$ReportCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId reportID,
      String senderID,
      String contentID,
      String contentType,
      String ownerID,
      String ownerType,
      String message});
}

class __$ReportCopyWithImpl<$Res> extends _$ReportCopyWithImpl<$Res>
    implements _$ReportCopyWith<$Res> {
  __$ReportCopyWithImpl(_Report _value, $Res Function(_Report) _then)
      : super(_value, (v) => _then(v as _Report));

  @override
  _Report get _value => super._value as _Report;

  @override
  $Res call({
    Object reportID = freezed,
    Object senderID = freezed,
    Object contentID = freezed,
    Object contentType = freezed,
    Object ownerID = freezed,
    Object ownerType = freezed,
    Object message = freezed,
  }) {
    return _then(_Report(
      reportID: reportID == freezed ? _value.reportID : reportID as UniqueId,
      senderID: senderID == freezed ? _value.senderID : senderID as String,
      contentID: contentID == freezed ? _value.contentID : contentID as String,
      contentType:
          contentType == freezed ? _value.contentType : contentType as String,
      ownerID: ownerID == freezed ? _value.ownerID : ownerID as String,
      ownerType: ownerType == freezed ? _value.ownerType : ownerType as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_Report implements _Report {
  const _$_Report(
      {@required this.reportID,
      @required this.senderID,
      @required this.contentID,
      @required this.contentType,
      @required this.ownerID,
      @required this.ownerType,
      @required this.message})
      : assert(reportID != null),
        assert(senderID != null),
        assert(contentID != null),
        assert(contentType != null),
        assert(ownerID != null),
        assert(ownerType != null),
        assert(message != null);

  @override
  final UniqueId reportID;
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
  String toString() {
    return 'Report(reportID: $reportID, senderID: $senderID, contentID: $contentID, contentType: $contentType, ownerID: $ownerID, ownerType: $ownerType, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Report &&
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
                const DeepCollectionEquality().equals(other.message, message)));
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
      const DeepCollectionEquality().hash(message);

  @override
  _$ReportCopyWith<_Report> get copyWith =>
      __$ReportCopyWithImpl<_Report>(this, _$identity);
}

abstract class _Report implements Report {
  const factory _Report(
      {@required UniqueId reportID,
      @required String senderID,
      @required String contentID,
      @required String contentType,
      @required String ownerID,
      @required String ownerType,
      @required String message}) = _$_Report;

  @override
  UniqueId get reportID;
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
  _$ReportCopyWith<_Report> get copyWith;
}
