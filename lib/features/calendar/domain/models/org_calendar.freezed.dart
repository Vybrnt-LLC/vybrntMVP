// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'org_calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OrgCalendarTearOff {
  const _$OrgCalendarTearOff();

  _OrgCalendar call(
      {@required UniqueId orgID,
      @required String abbv,
      @required String name,
      @required String profileImageUrl,
      @required bool isToggled}) {
    return _OrgCalendar(
      orgID: orgID,
      abbv: abbv,
      name: name,
      profileImageUrl: profileImageUrl,
      isToggled: isToggled,
    );
  }
}

// ignore: unused_element
const $OrgCalendar = _$OrgCalendarTearOff();

mixin _$OrgCalendar {
  UniqueId get orgID;
  String get abbv;
  String get name;
  String get profileImageUrl;
  bool get isToggled;

  $OrgCalendarCopyWith<OrgCalendar> get copyWith;
}

abstract class $OrgCalendarCopyWith<$Res> {
  factory $OrgCalendarCopyWith(
          OrgCalendar value, $Res Function(OrgCalendar) then) =
      _$OrgCalendarCopyWithImpl<$Res>;
  $Res call(
      {UniqueId orgID,
      String abbv,
      String name,
      String profileImageUrl,
      bool isToggled});
}

class _$OrgCalendarCopyWithImpl<$Res> implements $OrgCalendarCopyWith<$Res> {
  _$OrgCalendarCopyWithImpl(this._value, this._then);

  final OrgCalendar _value;
  // ignore: unused_field
  final $Res Function(OrgCalendar) _then;

  @override
  $Res call({
    Object orgID = freezed,
    Object abbv = freezed,
    Object name = freezed,
    Object profileImageUrl = freezed,
    Object isToggled = freezed,
  }) {
    return _then(_value.copyWith(
      orgID: orgID == freezed ? _value.orgID : orgID as UniqueId,
      abbv: abbv == freezed ? _value.abbv : abbv as String,
      name: name == freezed ? _value.name : name as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      isToggled: isToggled == freezed ? _value.isToggled : isToggled as bool,
    ));
  }
}

abstract class _$OrgCalendarCopyWith<$Res>
    implements $OrgCalendarCopyWith<$Res> {
  factory _$OrgCalendarCopyWith(
          _OrgCalendar value, $Res Function(_OrgCalendar) then) =
      __$OrgCalendarCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId orgID,
      String abbv,
      String name,
      String profileImageUrl,
      bool isToggled});
}

class __$OrgCalendarCopyWithImpl<$Res> extends _$OrgCalendarCopyWithImpl<$Res>
    implements _$OrgCalendarCopyWith<$Res> {
  __$OrgCalendarCopyWithImpl(
      _OrgCalendar _value, $Res Function(_OrgCalendar) _then)
      : super(_value, (v) => _then(v as _OrgCalendar));

  @override
  _OrgCalendar get _value => super._value as _OrgCalendar;

  @override
  $Res call({
    Object orgID = freezed,
    Object abbv = freezed,
    Object name = freezed,
    Object profileImageUrl = freezed,
    Object isToggled = freezed,
  }) {
    return _then(_OrgCalendar(
      orgID: orgID == freezed ? _value.orgID : orgID as UniqueId,
      abbv: abbv == freezed ? _value.abbv : abbv as String,
      name: name == freezed ? _value.name : name as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      isToggled: isToggled == freezed ? _value.isToggled : isToggled as bool,
    ));
  }
}

class _$_OrgCalendar with DiagnosticableTreeMixin implements _OrgCalendar {
  const _$_OrgCalendar(
      {@required this.orgID,
      @required this.abbv,
      @required this.name,
      @required this.profileImageUrl,
      @required this.isToggled})
      : assert(orgID != null),
        assert(abbv != null),
        assert(name != null),
        assert(profileImageUrl != null),
        assert(isToggled != null);

  @override
  final UniqueId orgID;
  @override
  final String abbv;
  @override
  final String name;
  @override
  final String profileImageUrl;
  @override
  final bool isToggled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrgCalendar(orgID: $orgID, abbv: $abbv, name: $name, profileImageUrl: $profileImageUrl, isToggled: $isToggled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrgCalendar'))
      ..add(DiagnosticsProperty('orgID', orgID))
      ..add(DiagnosticsProperty('abbv', abbv))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('profileImageUrl', profileImageUrl))
      ..add(DiagnosticsProperty('isToggled', isToggled));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrgCalendar &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.abbv, abbv) ||
                const DeepCollectionEquality().equals(other.abbv, abbv)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageUrl, profileImageUrl)) &&
            (identical(other.isToggled, isToggled) ||
                const DeepCollectionEquality()
                    .equals(other.isToggled, isToggled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(abbv) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(profileImageUrl) ^
      const DeepCollectionEquality().hash(isToggled);

  @override
  _$OrgCalendarCopyWith<_OrgCalendar> get copyWith =>
      __$OrgCalendarCopyWithImpl<_OrgCalendar>(this, _$identity);
}

abstract class _OrgCalendar implements OrgCalendar {
  const factory _OrgCalendar(
      {@required UniqueId orgID,
      @required String abbv,
      @required String name,
      @required String profileImageUrl,
      @required bool isToggled}) = _$_OrgCalendar;

  @override
  UniqueId get orgID;
  @override
  String get abbv;
  @override
  String get name;
  @override
  String get profileImageUrl;
  @override
  bool get isToggled;
  @override
  _$OrgCalendarCopyWith<_OrgCalendar> get copyWith;
}
