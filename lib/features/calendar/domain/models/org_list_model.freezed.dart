// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'org_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OrgListTearOff {
  const _$OrgListTearOff();

  _OrgList call(
      {@required UniqueId orgID,
      @required String name,
      @required String abbv,
      @required String profileImageUrl,
      @required String primaryColor,
      @required String secondaryColor}) {
    return _OrgList(
      orgID: orgID,
      name: name,
      abbv: abbv,
      profileImageUrl: profileImageUrl,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
    );
  }
}

// ignore: unused_element
const $OrgList = _$OrgListTearOff();

mixin _$OrgList {
  UniqueId get orgID;
  String get name;
  String get abbv;
  String get profileImageUrl;
  String get primaryColor;
  String get secondaryColor;

  $OrgListCopyWith<OrgList> get copyWith;
}

abstract class $OrgListCopyWith<$Res> {
  factory $OrgListCopyWith(OrgList value, $Res Function(OrgList) then) =
      _$OrgListCopyWithImpl<$Res>;
  $Res call(
      {UniqueId orgID,
      String name,
      String abbv,
      String profileImageUrl,
      String primaryColor,
      String secondaryColor});
}

class _$OrgListCopyWithImpl<$Res> implements $OrgListCopyWith<$Res> {
  _$OrgListCopyWithImpl(this._value, this._then);

  final OrgList _value;
  // ignore: unused_field
  final $Res Function(OrgList) _then;

  @override
  $Res call({
    Object orgID = freezed,
    Object name = freezed,
    Object abbv = freezed,
    Object profileImageUrl = freezed,
    Object primaryColor = freezed,
    Object secondaryColor = freezed,
  }) {
    return _then(_value.copyWith(
      orgID: orgID == freezed ? _value.orgID : orgID as UniqueId,
      name: name == freezed ? _value.name : name as String,
      abbv: abbv == freezed ? _value.abbv : abbv as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      primaryColor: primaryColor == freezed
          ? _value.primaryColor
          : primaryColor as String,
      secondaryColor: secondaryColor == freezed
          ? _value.secondaryColor
          : secondaryColor as String,
    ));
  }
}

abstract class _$OrgListCopyWith<$Res> implements $OrgListCopyWith<$Res> {
  factory _$OrgListCopyWith(_OrgList value, $Res Function(_OrgList) then) =
      __$OrgListCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId orgID,
      String name,
      String abbv,
      String profileImageUrl,
      String primaryColor,
      String secondaryColor});
}

class __$OrgListCopyWithImpl<$Res> extends _$OrgListCopyWithImpl<$Res>
    implements _$OrgListCopyWith<$Res> {
  __$OrgListCopyWithImpl(_OrgList _value, $Res Function(_OrgList) _then)
      : super(_value, (v) => _then(v as _OrgList));

  @override
  _OrgList get _value => super._value as _OrgList;

  @override
  $Res call({
    Object orgID = freezed,
    Object name = freezed,
    Object abbv = freezed,
    Object profileImageUrl = freezed,
    Object primaryColor = freezed,
    Object secondaryColor = freezed,
  }) {
    return _then(_OrgList(
      orgID: orgID == freezed ? _value.orgID : orgID as UniqueId,
      name: name == freezed ? _value.name : name as String,
      abbv: abbv == freezed ? _value.abbv : abbv as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      primaryColor: primaryColor == freezed
          ? _value.primaryColor
          : primaryColor as String,
      secondaryColor: secondaryColor == freezed
          ? _value.secondaryColor
          : secondaryColor as String,
    ));
  }
}

class _$_OrgList with DiagnosticableTreeMixin implements _OrgList {
  const _$_OrgList(
      {@required this.orgID,
      @required this.name,
      @required this.abbv,
      @required this.profileImageUrl,
      @required this.primaryColor,
      @required this.secondaryColor})
      : assert(orgID != null),
        assert(name != null),
        assert(abbv != null),
        assert(profileImageUrl != null),
        assert(primaryColor != null),
        assert(secondaryColor != null);

  @override
  final UniqueId orgID;
  @override
  final String name;
  @override
  final String abbv;
  @override
  final String profileImageUrl;
  @override
  final String primaryColor;
  @override
  final String secondaryColor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrgList(orgID: $orgID, name: $name, abbv: $abbv, profileImageUrl: $profileImageUrl, primaryColor: $primaryColor, secondaryColor: $secondaryColor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrgList'))
      ..add(DiagnosticsProperty('orgID', orgID))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('abbv', abbv))
      ..add(DiagnosticsProperty('profileImageUrl', profileImageUrl))
      ..add(DiagnosticsProperty('primaryColor', primaryColor))
      ..add(DiagnosticsProperty('secondaryColor', secondaryColor));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrgList &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.abbv, abbv) ||
                const DeepCollectionEquality().equals(other.abbv, abbv)) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageUrl, profileImageUrl)) &&
            (identical(other.primaryColor, primaryColor) ||
                const DeepCollectionEquality()
                    .equals(other.primaryColor, primaryColor)) &&
            (identical(other.secondaryColor, secondaryColor) ||
                const DeepCollectionEquality()
                    .equals(other.secondaryColor, secondaryColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(abbv) ^
      const DeepCollectionEquality().hash(profileImageUrl) ^
      const DeepCollectionEquality().hash(primaryColor) ^
      const DeepCollectionEquality().hash(secondaryColor);

  @override
  _$OrgListCopyWith<_OrgList> get copyWith =>
      __$OrgListCopyWithImpl<_OrgList>(this, _$identity);
}

abstract class _OrgList implements OrgList {
  const factory _OrgList(
      {@required UniqueId orgID,
      @required String name,
      @required String abbv,
      @required String profileImageUrl,
      @required String primaryColor,
      @required String secondaryColor}) = _$_OrgList;

  @override
  UniqueId get orgID;
  @override
  String get name;
  @override
  String get abbv;
  @override
  String get profileImageUrl;
  @override
  String get primaryColor;
  @override
  String get secondaryColor;
  @override
  _$OrgListCopyWith<_OrgList> get copyWith;
}
