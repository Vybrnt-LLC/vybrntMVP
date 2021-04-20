// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'university.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UniversityTearOff {
  const _$UniversityTearOff();

  _Activity call(
      {@required UniqueId universityID,
      @required String name,
      @required String shortenName,
      @required String abbreviation}) {
    return _Activity(
      universityID: universityID,
      name: name,
      shortenName: shortenName,
      abbreviation: abbreviation,
    );
  }
}

// ignore: unused_element
const $University = _$UniversityTearOff();

mixin _$University {
  UniqueId get universityID;
  String get name;
  String get shortenName;
  String get abbreviation;

  $UniversityCopyWith<University> get copyWith;
}

abstract class $UniversityCopyWith<$Res> {
  factory $UniversityCopyWith(
          University value, $Res Function(University) then) =
      _$UniversityCopyWithImpl<$Res>;
  $Res call(
      {UniqueId universityID,
      String name,
      String shortenName,
      String abbreviation});
}

class _$UniversityCopyWithImpl<$Res> implements $UniversityCopyWith<$Res> {
  _$UniversityCopyWithImpl(this._value, this._then);

  final University _value;
  // ignore: unused_field
  final $Res Function(University) _then;

  @override
  $Res call({
    Object universityID = freezed,
    Object name = freezed,
    Object shortenName = freezed,
    Object abbreviation = freezed,
  }) {
    return _then(_value.copyWith(
      universityID: universityID == freezed
          ? _value.universityID
          : universityID as UniqueId,
      name: name == freezed ? _value.name : name as String,
      shortenName:
          shortenName == freezed ? _value.shortenName : shortenName as String,
      abbreviation: abbreviation == freezed
          ? _value.abbreviation
          : abbreviation as String,
    ));
  }
}

abstract class _$ActivityCopyWith<$Res> implements $UniversityCopyWith<$Res> {
  factory _$ActivityCopyWith(_Activity value, $Res Function(_Activity) then) =
      __$ActivityCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId universityID,
      String name,
      String shortenName,
      String abbreviation});
}

class __$ActivityCopyWithImpl<$Res> extends _$UniversityCopyWithImpl<$Res>
    implements _$ActivityCopyWith<$Res> {
  __$ActivityCopyWithImpl(_Activity _value, $Res Function(_Activity) _then)
      : super(_value, (v) => _then(v as _Activity));

  @override
  _Activity get _value => super._value as _Activity;

  @override
  $Res call({
    Object universityID = freezed,
    Object name = freezed,
    Object shortenName = freezed,
    Object abbreviation = freezed,
  }) {
    return _then(_Activity(
      universityID: universityID == freezed
          ? _value.universityID
          : universityID as UniqueId,
      name: name == freezed ? _value.name : name as String,
      shortenName:
          shortenName == freezed ? _value.shortenName : shortenName as String,
      abbreviation: abbreviation == freezed
          ? _value.abbreviation
          : abbreviation as String,
    ));
  }
}

class _$_Activity implements _Activity {
  const _$_Activity(
      {@required this.universityID,
      @required this.name,
      @required this.shortenName,
      @required this.abbreviation})
      : assert(universityID != null),
        assert(name != null),
        assert(shortenName != null),
        assert(abbreviation != null);

  @override
  final UniqueId universityID;
  @override
  final String name;
  @override
  final String shortenName;
  @override
  final String abbreviation;

  @override
  String toString() {
    return 'University(universityID: $universityID, name: $name, shortenName: $shortenName, abbreviation: $abbreviation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Activity &&
            (identical(other.universityID, universityID) ||
                const DeepCollectionEquality()
                    .equals(other.universityID, universityID)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortenName, shortenName) ||
                const DeepCollectionEquality()
                    .equals(other.shortenName, shortenName)) &&
            (identical(other.abbreviation, abbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.abbreviation, abbreviation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(universityID) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortenName) ^
      const DeepCollectionEquality().hash(abbreviation);

  @override
  _$ActivityCopyWith<_Activity> get copyWith =>
      __$ActivityCopyWithImpl<_Activity>(this, _$identity);
}

abstract class _Activity implements University {
  const factory _Activity(
      {@required UniqueId universityID,
      @required String name,
      @required String shortenName,
      @required String abbreviation}) = _$_Activity;

  @override
  UniqueId get universityID;
  @override
  String get name;
  @override
  String get shortenName;
  @override
  String get abbreviation;
  @override
  _$ActivityCopyWith<_Activity> get copyWith;
}
