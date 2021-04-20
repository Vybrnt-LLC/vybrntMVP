// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'onboarding_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OnboardingInfoEventTearOff {
  const _$OnboardingInfoEventTearOff();

  _Started started(String currentUserID) {
    return _Started(
      currentUserID,
    );
  }

  _UsernameChanged usernameChanged(String usernameStr) {
    return _UsernameChanged(
      usernameStr,
    );
  }

  _UniversitySelected universitySelected(University university) {
    return _UniversitySelected(
      university,
    );
  }

  _CollegeAdded collegesUpdated(List<String> listOfColleges) {
    return _CollegeAdded(
      listOfColleges,
    );
  }

  _SaveOnboardingInfo saveOnboardingInfo(Map<String, dynamic> data) {
    return _SaveOnboardingInfo(
      data,
    );
  }

  _UploadUserProfileImage uploadUserProfileImage(String url, File imageFile) {
    return _UploadUserProfileImage(
      url,
      imageFile,
    );
  }
}

// ignore: unused_element
const $OnboardingInfoEvent = _$OnboardingInfoEventTearOff();

mixin _$OnboardingInfoEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(String currentUserID),
    @required Result usernameChanged(String usernameStr),
    @required Result universitySelected(University university),
    @required Result collegesUpdated(List<String> listOfColleges),
    @required Result saveOnboardingInfo(Map<String, dynamic> data),
    @required Result uploadUserProfileImage(String url, File imageFile),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(String currentUserID),
    Result usernameChanged(String usernameStr),
    Result universitySelected(University university),
    Result collegesUpdated(List<String> listOfColleges),
    Result saveOnboardingInfo(Map<String, dynamic> data),
    Result uploadUserProfileImage(String url, File imageFile),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result universitySelected(_UniversitySelected value),
    @required Result collegesUpdated(_CollegeAdded value),
    @required Result saveOnboardingInfo(_SaveOnboardingInfo value),
    @required Result uploadUserProfileImage(_UploadUserProfileImage value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result usernameChanged(_UsernameChanged value),
    Result universitySelected(_UniversitySelected value),
    Result collegesUpdated(_CollegeAdded value),
    Result saveOnboardingInfo(_SaveOnboardingInfo value),
    Result uploadUserProfileImage(_UploadUserProfileImage value),
    @required Result orElse(),
  });
}

abstract class $OnboardingInfoEventCopyWith<$Res> {
  factory $OnboardingInfoEventCopyWith(
          OnboardingInfoEvent value, $Res Function(OnboardingInfoEvent) then) =
      _$OnboardingInfoEventCopyWithImpl<$Res>;
}

class _$OnboardingInfoEventCopyWithImpl<$Res>
    implements $OnboardingInfoEventCopyWith<$Res> {
  _$OnboardingInfoEventCopyWithImpl(this._value, this._then);

  final OnboardingInfoEvent _value;
  // ignore: unused_field
  final $Res Function(OnboardingInfoEvent) _then;
}

abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({String currentUserID});
}

class __$StartedCopyWithImpl<$Res>
    extends _$OnboardingInfoEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object currentUserID = freezed,
  }) {
    return _then(_Started(
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$_Started implements _Started {
  const _$_Started(this.currentUserID) : assert(currentUserID != null);

  @override
  final String currentUserID;

  @override
  String toString() {
    return 'OnboardingInfoEvent.started(currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentUserID);

  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(String currentUserID),
    @required Result usernameChanged(String usernameStr),
    @required Result universitySelected(University university),
    @required Result collegesUpdated(List<String> listOfColleges),
    @required Result saveOnboardingInfo(Map<String, dynamic> data),
    @required Result uploadUserProfileImage(String url, File imageFile),
  }) {
    assert(started != null);
    assert(usernameChanged != null);
    assert(universitySelected != null);
    assert(collegesUpdated != null);
    assert(saveOnboardingInfo != null);
    assert(uploadUserProfileImage != null);
    return started(currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(String currentUserID),
    Result usernameChanged(String usernameStr),
    Result universitySelected(University university),
    Result collegesUpdated(List<String> listOfColleges),
    Result saveOnboardingInfo(Map<String, dynamic> data),
    Result uploadUserProfileImage(String url, File imageFile),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result universitySelected(_UniversitySelected value),
    @required Result collegesUpdated(_CollegeAdded value),
    @required Result saveOnboardingInfo(_SaveOnboardingInfo value),
    @required Result uploadUserProfileImage(_UploadUserProfileImage value),
  }) {
    assert(started != null);
    assert(usernameChanged != null);
    assert(universitySelected != null);
    assert(collegesUpdated != null);
    assert(saveOnboardingInfo != null);
    assert(uploadUserProfileImage != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result usernameChanged(_UsernameChanged value),
    Result universitySelected(_UniversitySelected value),
    Result collegesUpdated(_CollegeAdded value),
    Result saveOnboardingInfo(_SaveOnboardingInfo value),
    Result uploadUserProfileImage(_UploadUserProfileImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OnboardingInfoEvent {
  const factory _Started(String currentUserID) = _$_Started;

  String get currentUserID;
  _$StartedCopyWith<_Started> get copyWith;
}

abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(
          _UsernameChanged value, $Res Function(_UsernameChanged) then) =
      __$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

class __$UsernameChangedCopyWithImpl<$Res>
    extends _$OnboardingInfoEventCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(
      _UsernameChanged _value, $Res Function(_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object usernameStr = freezed,
  }) {
    return _then(_UsernameChanged(
      usernameStr == freezed ? _value.usernameStr : usernameStr as String,
    ));
  }
}

class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.usernameStr) : assert(usernameStr != null);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'OnboardingInfoEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(String currentUserID),
    @required Result usernameChanged(String usernameStr),
    @required Result universitySelected(University university),
    @required Result collegesUpdated(List<String> listOfColleges),
    @required Result saveOnboardingInfo(Map<String, dynamic> data),
    @required Result uploadUserProfileImage(String url, File imageFile),
  }) {
    assert(started != null);
    assert(usernameChanged != null);
    assert(universitySelected != null);
    assert(collegesUpdated != null);
    assert(saveOnboardingInfo != null);
    assert(uploadUserProfileImage != null);
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(String currentUserID),
    Result usernameChanged(String usernameStr),
    Result universitySelected(University university),
    Result collegesUpdated(List<String> listOfColleges),
    Result saveOnboardingInfo(Map<String, dynamic> data),
    Result uploadUserProfileImage(String url, File imageFile),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result universitySelected(_UniversitySelected value),
    @required Result collegesUpdated(_CollegeAdded value),
    @required Result saveOnboardingInfo(_SaveOnboardingInfo value),
    @required Result uploadUserProfileImage(_UploadUserProfileImage value),
  }) {
    assert(started != null);
    assert(usernameChanged != null);
    assert(universitySelected != null);
    assert(collegesUpdated != null);
    assert(saveOnboardingInfo != null);
    assert(uploadUserProfileImage != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result usernameChanged(_UsernameChanged value),
    Result universitySelected(_UniversitySelected value),
    Result collegesUpdated(_CollegeAdded value),
    Result saveOnboardingInfo(_SaveOnboardingInfo value),
    Result uploadUserProfileImage(_UploadUserProfileImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements OnboardingInfoEvent {
  const factory _UsernameChanged(String usernameStr) = _$_UsernameChanged;

  String get usernameStr;
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith;
}

abstract class _$UniversitySelectedCopyWith<$Res> {
  factory _$UniversitySelectedCopyWith(
          _UniversitySelected value, $Res Function(_UniversitySelected) then) =
      __$UniversitySelectedCopyWithImpl<$Res>;
  $Res call({University university});

  $UniversityCopyWith<$Res> get university;
}

class __$UniversitySelectedCopyWithImpl<$Res>
    extends _$OnboardingInfoEventCopyWithImpl<$Res>
    implements _$UniversitySelectedCopyWith<$Res> {
  __$UniversitySelectedCopyWithImpl(
      _UniversitySelected _value, $Res Function(_UniversitySelected) _then)
      : super(_value, (v) => _then(v as _UniversitySelected));

  @override
  _UniversitySelected get _value => super._value as _UniversitySelected;

  @override
  $Res call({
    Object university = freezed,
  }) {
    return _then(_UniversitySelected(
      university == freezed ? _value.university : university as University,
    ));
  }

  @override
  $UniversityCopyWith<$Res> get university {
    if (_value.university == null) {
      return null;
    }
    return $UniversityCopyWith<$Res>(_value.university, (value) {
      return _then(_value.copyWith(university: value));
    });
  }
}

class _$_UniversitySelected implements _UniversitySelected {
  const _$_UniversitySelected(this.university) : assert(university != null);

  @override
  final University university;

  @override
  String toString() {
    return 'OnboardingInfoEvent.universitySelected(university: $university)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UniversitySelected &&
            (identical(other.university, university) ||
                const DeepCollectionEquality()
                    .equals(other.university, university)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(university);

  @override
  _$UniversitySelectedCopyWith<_UniversitySelected> get copyWith =>
      __$UniversitySelectedCopyWithImpl<_UniversitySelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(String currentUserID),
    @required Result usernameChanged(String usernameStr),
    @required Result universitySelected(University university),
    @required Result collegesUpdated(List<String> listOfColleges),
    @required Result saveOnboardingInfo(Map<String, dynamic> data),
    @required Result uploadUserProfileImage(String url, File imageFile),
  }) {
    assert(started != null);
    assert(usernameChanged != null);
    assert(universitySelected != null);
    assert(collegesUpdated != null);
    assert(saveOnboardingInfo != null);
    assert(uploadUserProfileImage != null);
    return universitySelected(university);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(String currentUserID),
    Result usernameChanged(String usernameStr),
    Result universitySelected(University university),
    Result collegesUpdated(List<String> listOfColleges),
    Result saveOnboardingInfo(Map<String, dynamic> data),
    Result uploadUserProfileImage(String url, File imageFile),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (universitySelected != null) {
      return universitySelected(university);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result universitySelected(_UniversitySelected value),
    @required Result collegesUpdated(_CollegeAdded value),
    @required Result saveOnboardingInfo(_SaveOnboardingInfo value),
    @required Result uploadUserProfileImage(_UploadUserProfileImage value),
  }) {
    assert(started != null);
    assert(usernameChanged != null);
    assert(universitySelected != null);
    assert(collegesUpdated != null);
    assert(saveOnboardingInfo != null);
    assert(uploadUserProfileImage != null);
    return universitySelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result usernameChanged(_UsernameChanged value),
    Result universitySelected(_UniversitySelected value),
    Result collegesUpdated(_CollegeAdded value),
    Result saveOnboardingInfo(_SaveOnboardingInfo value),
    Result uploadUserProfileImage(_UploadUserProfileImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (universitySelected != null) {
      return universitySelected(this);
    }
    return orElse();
  }
}

abstract class _UniversitySelected implements OnboardingInfoEvent {
  const factory _UniversitySelected(University university) =
      _$_UniversitySelected;

  University get university;
  _$UniversitySelectedCopyWith<_UniversitySelected> get copyWith;
}

abstract class _$CollegeAddedCopyWith<$Res> {
  factory _$CollegeAddedCopyWith(
          _CollegeAdded value, $Res Function(_CollegeAdded) then) =
      __$CollegeAddedCopyWithImpl<$Res>;
  $Res call({List<String> listOfColleges});
}

class __$CollegeAddedCopyWithImpl<$Res>
    extends _$OnboardingInfoEventCopyWithImpl<$Res>
    implements _$CollegeAddedCopyWith<$Res> {
  __$CollegeAddedCopyWithImpl(
      _CollegeAdded _value, $Res Function(_CollegeAdded) _then)
      : super(_value, (v) => _then(v as _CollegeAdded));

  @override
  _CollegeAdded get _value => super._value as _CollegeAdded;

  @override
  $Res call({
    Object listOfColleges = freezed,
  }) {
    return _then(_CollegeAdded(
      listOfColleges == freezed
          ? _value.listOfColleges
          : listOfColleges as List<String>,
    ));
  }
}

class _$_CollegeAdded implements _CollegeAdded {
  const _$_CollegeAdded(this.listOfColleges) : assert(listOfColleges != null);

  @override
  final List<String> listOfColleges;

  @override
  String toString() {
    return 'OnboardingInfoEvent.collegesUpdated(listOfColleges: $listOfColleges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CollegeAdded &&
            (identical(other.listOfColleges, listOfColleges) ||
                const DeepCollectionEquality()
                    .equals(other.listOfColleges, listOfColleges)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listOfColleges);

  @override
  _$CollegeAddedCopyWith<_CollegeAdded> get copyWith =>
      __$CollegeAddedCopyWithImpl<_CollegeAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(String currentUserID),
    @required Result usernameChanged(String usernameStr),
    @required Result universitySelected(University university),
    @required Result collegesUpdated(List<String> listOfColleges),
    @required Result saveOnboardingInfo(Map<String, dynamic> data),
    @required Result uploadUserProfileImage(String url, File imageFile),
  }) {
    assert(started != null);
    assert(usernameChanged != null);
    assert(universitySelected != null);
    assert(collegesUpdated != null);
    assert(saveOnboardingInfo != null);
    assert(uploadUserProfileImage != null);
    return collegesUpdated(listOfColleges);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(String currentUserID),
    Result usernameChanged(String usernameStr),
    Result universitySelected(University university),
    Result collegesUpdated(List<String> listOfColleges),
    Result saveOnboardingInfo(Map<String, dynamic> data),
    Result uploadUserProfileImage(String url, File imageFile),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (collegesUpdated != null) {
      return collegesUpdated(listOfColleges);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result universitySelected(_UniversitySelected value),
    @required Result collegesUpdated(_CollegeAdded value),
    @required Result saveOnboardingInfo(_SaveOnboardingInfo value),
    @required Result uploadUserProfileImage(_UploadUserProfileImage value),
  }) {
    assert(started != null);
    assert(usernameChanged != null);
    assert(universitySelected != null);
    assert(collegesUpdated != null);
    assert(saveOnboardingInfo != null);
    assert(uploadUserProfileImage != null);
    return collegesUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result usernameChanged(_UsernameChanged value),
    Result universitySelected(_UniversitySelected value),
    Result collegesUpdated(_CollegeAdded value),
    Result saveOnboardingInfo(_SaveOnboardingInfo value),
    Result uploadUserProfileImage(_UploadUserProfileImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (collegesUpdated != null) {
      return collegesUpdated(this);
    }
    return orElse();
  }
}

abstract class _CollegeAdded implements OnboardingInfoEvent {
  const factory _CollegeAdded(List<String> listOfColleges) = _$_CollegeAdded;

  List<String> get listOfColleges;
  _$CollegeAddedCopyWith<_CollegeAdded> get copyWith;
}

abstract class _$SaveOnboardingInfoCopyWith<$Res> {
  factory _$SaveOnboardingInfoCopyWith(
          _SaveOnboardingInfo value, $Res Function(_SaveOnboardingInfo) then) =
      __$SaveOnboardingInfoCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> data});
}

class __$SaveOnboardingInfoCopyWithImpl<$Res>
    extends _$OnboardingInfoEventCopyWithImpl<$Res>
    implements _$SaveOnboardingInfoCopyWith<$Res> {
  __$SaveOnboardingInfoCopyWithImpl(
      _SaveOnboardingInfo _value, $Res Function(_SaveOnboardingInfo) _then)
      : super(_value, (v) => _then(v as _SaveOnboardingInfo));

  @override
  _SaveOnboardingInfo get _value => super._value as _SaveOnboardingInfo;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_SaveOnboardingInfo(
      data == freezed ? _value.data : data as Map<String, dynamic>,
    ));
  }
}

class _$_SaveOnboardingInfo implements _SaveOnboardingInfo {
  const _$_SaveOnboardingInfo(this.data) : assert(data != null);

  @override
  final Map<String, dynamic> data;

  @override
  String toString() {
    return 'OnboardingInfoEvent.saveOnboardingInfo(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveOnboardingInfo &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$SaveOnboardingInfoCopyWith<_SaveOnboardingInfo> get copyWith =>
      __$SaveOnboardingInfoCopyWithImpl<_SaveOnboardingInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(String currentUserID),
    @required Result usernameChanged(String usernameStr),
    @required Result universitySelected(University university),
    @required Result collegesUpdated(List<String> listOfColleges),
    @required Result saveOnboardingInfo(Map<String, dynamic> data),
    @required Result uploadUserProfileImage(String url, File imageFile),
  }) {
    assert(started != null);
    assert(usernameChanged != null);
    assert(universitySelected != null);
    assert(collegesUpdated != null);
    assert(saveOnboardingInfo != null);
    assert(uploadUserProfileImage != null);
    return saveOnboardingInfo(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(String currentUserID),
    Result usernameChanged(String usernameStr),
    Result universitySelected(University university),
    Result collegesUpdated(List<String> listOfColleges),
    Result saveOnboardingInfo(Map<String, dynamic> data),
    Result uploadUserProfileImage(String url, File imageFile),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveOnboardingInfo != null) {
      return saveOnboardingInfo(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result universitySelected(_UniversitySelected value),
    @required Result collegesUpdated(_CollegeAdded value),
    @required Result saveOnboardingInfo(_SaveOnboardingInfo value),
    @required Result uploadUserProfileImage(_UploadUserProfileImage value),
  }) {
    assert(started != null);
    assert(usernameChanged != null);
    assert(universitySelected != null);
    assert(collegesUpdated != null);
    assert(saveOnboardingInfo != null);
    assert(uploadUserProfileImage != null);
    return saveOnboardingInfo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result usernameChanged(_UsernameChanged value),
    Result universitySelected(_UniversitySelected value),
    Result collegesUpdated(_CollegeAdded value),
    Result saveOnboardingInfo(_SaveOnboardingInfo value),
    Result uploadUserProfileImage(_UploadUserProfileImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveOnboardingInfo != null) {
      return saveOnboardingInfo(this);
    }
    return orElse();
  }
}

abstract class _SaveOnboardingInfo implements OnboardingInfoEvent {
  const factory _SaveOnboardingInfo(Map<String, dynamic> data) =
      _$_SaveOnboardingInfo;

  Map<String, dynamic> get data;
  _$SaveOnboardingInfoCopyWith<_SaveOnboardingInfo> get copyWith;
}

abstract class _$UploadUserProfileImageCopyWith<$Res> {
  factory _$UploadUserProfileImageCopyWith(_UploadUserProfileImage value,
          $Res Function(_UploadUserProfileImage) then) =
      __$UploadUserProfileImageCopyWithImpl<$Res>;
  $Res call({String url, File imageFile});
}

class __$UploadUserProfileImageCopyWithImpl<$Res>
    extends _$OnboardingInfoEventCopyWithImpl<$Res>
    implements _$UploadUserProfileImageCopyWith<$Res> {
  __$UploadUserProfileImageCopyWithImpl(_UploadUserProfileImage _value,
      $Res Function(_UploadUserProfileImage) _then)
      : super(_value, (v) => _then(v as _UploadUserProfileImage));

  @override
  _UploadUserProfileImage get _value => super._value as _UploadUserProfileImage;

  @override
  $Res call({
    Object url = freezed,
    Object imageFile = freezed,
  }) {
    return _then(_UploadUserProfileImage(
      url == freezed ? _value.url : url as String,
      imageFile == freezed ? _value.imageFile : imageFile as File,
    ));
  }
}

class _$_UploadUserProfileImage implements _UploadUserProfileImage {
  const _$_UploadUserProfileImage(this.url, this.imageFile)
      : assert(url != null),
        assert(imageFile != null);

  @override
  final String url;
  @override
  final File imageFile;

  @override
  String toString() {
    return 'OnboardingInfoEvent.uploadUserProfileImage(url: $url, imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadUserProfileImage &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(imageFile);

  @override
  _$UploadUserProfileImageCopyWith<_UploadUserProfileImage> get copyWith =>
      __$UploadUserProfileImageCopyWithImpl<_UploadUserProfileImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(String currentUserID),
    @required Result usernameChanged(String usernameStr),
    @required Result universitySelected(University university),
    @required Result collegesUpdated(List<String> listOfColleges),
    @required Result saveOnboardingInfo(Map<String, dynamic> data),
    @required Result uploadUserProfileImage(String url, File imageFile),
  }) {
    assert(started != null);
    assert(usernameChanged != null);
    assert(universitySelected != null);
    assert(collegesUpdated != null);
    assert(saveOnboardingInfo != null);
    assert(uploadUserProfileImage != null);
    return uploadUserProfileImage(url, imageFile);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(String currentUserID),
    Result usernameChanged(String usernameStr),
    Result universitySelected(University university),
    Result collegesUpdated(List<String> listOfColleges),
    Result saveOnboardingInfo(Map<String, dynamic> data),
    Result uploadUserProfileImage(String url, File imageFile),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploadUserProfileImage != null) {
      return uploadUserProfileImage(url, imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result usernameChanged(_UsernameChanged value),
    @required Result universitySelected(_UniversitySelected value),
    @required Result collegesUpdated(_CollegeAdded value),
    @required Result saveOnboardingInfo(_SaveOnboardingInfo value),
    @required Result uploadUserProfileImage(_UploadUserProfileImage value),
  }) {
    assert(started != null);
    assert(usernameChanged != null);
    assert(universitySelected != null);
    assert(collegesUpdated != null);
    assert(saveOnboardingInfo != null);
    assert(uploadUserProfileImage != null);
    return uploadUserProfileImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result usernameChanged(_UsernameChanged value),
    Result universitySelected(_UniversitySelected value),
    Result collegesUpdated(_CollegeAdded value),
    Result saveOnboardingInfo(_SaveOnboardingInfo value),
    Result uploadUserProfileImage(_UploadUserProfileImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploadUserProfileImage != null) {
      return uploadUserProfileImage(this);
    }
    return orElse();
  }
}

abstract class _UploadUserProfileImage implements OnboardingInfoEvent {
  const factory _UploadUserProfileImage(String url, File imageFile) =
      _$_UploadUserProfileImage;

  String get url;
  File get imageFile;
  _$UploadUserProfileImageCopyWith<_UploadUserProfileImage> get copyWith;
}

class _$OnboardingInfoStateTearOff {
  const _$OnboardingInfoStateTearOff();

  _OnboardingInfoState call(
      {@required Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption,
      @required bool showErrorMessages,
      @required bool isSaving,
      @required bool isUsernameTaken,
      @required String username,
      @required User user,
      @required University university,
      @required String campusID,
      @required List<University> listOfUniversities,
      @required List<String> listOfColleges,
      @required List<String> listOfMajors,
      @required List<String> listOfSelectedColleges,
      @required List<String> listOfCampuses}) {
    return _OnboardingInfoState(
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      showErrorMessages: showErrorMessages,
      isSaving: isSaving,
      isUsernameTaken: isUsernameTaken,
      username: username,
      user: user,
      university: university,
      campusID: campusID,
      listOfUniversities: listOfUniversities,
      listOfColleges: listOfColleges,
      listOfMajors: listOfMajors,
      listOfSelectedColleges: listOfSelectedColleges,
      listOfCampuses: listOfCampuses,
    );
  }
}

// ignore: unused_element
const $OnboardingInfoState = _$OnboardingInfoStateTearOff();

mixin _$OnboardingInfoState {
  Option<Either<UserFailure, Unit>> get saveFailureOrSuccessOption;
  bool get showErrorMessages;
  bool get isSaving;
  bool get isUsernameTaken;
  String get username;
  User get user;
  University get university;
  String get campusID;
  List<University> get listOfUniversities;
  List<String> get listOfColleges;
  List<String> get listOfMajors;
  List<String> get listOfSelectedColleges;
  List<String> get listOfCampuses;

  $OnboardingInfoStateCopyWith<OnboardingInfoState> get copyWith;
}

abstract class $OnboardingInfoStateCopyWith<$Res> {
  factory $OnboardingInfoStateCopyWith(
          OnboardingInfoState value, $Res Function(OnboardingInfoState) then) =
      _$OnboardingInfoStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption,
      bool showErrorMessages,
      bool isSaving,
      bool isUsernameTaken,
      String username,
      User user,
      University university,
      String campusID,
      List<University> listOfUniversities,
      List<String> listOfColleges,
      List<String> listOfMajors,
      List<String> listOfSelectedColleges,
      List<String> listOfCampuses});

  $UserCopyWith<$Res> get user;
  $UniversityCopyWith<$Res> get university;
}

class _$OnboardingInfoStateCopyWithImpl<$Res>
    implements $OnboardingInfoStateCopyWith<$Res> {
  _$OnboardingInfoStateCopyWithImpl(this._value, this._then);

  final OnboardingInfoState _value;
  // ignore: unused_field
  final $Res Function(OnboardingInfoState) _then;

  @override
  $Res call({
    Object saveFailureOrSuccessOption = freezed,
    Object showErrorMessages = freezed,
    Object isSaving = freezed,
    Object isUsernameTaken = freezed,
    Object username = freezed,
    Object user = freezed,
    Object university = freezed,
    Object campusID = freezed,
    Object listOfUniversities = freezed,
    Object listOfColleges = freezed,
    Object listOfMajors = freezed,
    Object listOfSelectedColleges = freezed,
    Object listOfCampuses = freezed,
  }) {
    return _then(_value.copyWith(
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<UserFailure, Unit>>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isUsernameTaken: isUsernameTaken == freezed
          ? _value.isUsernameTaken
          : isUsernameTaken as bool,
      username: username == freezed ? _value.username : username as String,
      user: user == freezed ? _value.user : user as User,
      university:
          university == freezed ? _value.university : university as University,
      campusID: campusID == freezed ? _value.campusID : campusID as String,
      listOfUniversities: listOfUniversities == freezed
          ? _value.listOfUniversities
          : listOfUniversities as List<University>,
      listOfColleges: listOfColleges == freezed
          ? _value.listOfColleges
          : listOfColleges as List<String>,
      listOfMajors: listOfMajors == freezed
          ? _value.listOfMajors
          : listOfMajors as List<String>,
      listOfSelectedColleges: listOfSelectedColleges == freezed
          ? _value.listOfSelectedColleges
          : listOfSelectedColleges as List<String>,
      listOfCampuses: listOfCampuses == freezed
          ? _value.listOfCampuses
          : listOfCampuses as List<String>,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $UniversityCopyWith<$Res> get university {
    if (_value.university == null) {
      return null;
    }
    return $UniversityCopyWith<$Res>(_value.university, (value) {
      return _then(_value.copyWith(university: value));
    });
  }
}

abstract class _$OnboardingInfoStateCopyWith<$Res>
    implements $OnboardingInfoStateCopyWith<$Res> {
  factory _$OnboardingInfoStateCopyWith(_OnboardingInfoState value,
          $Res Function(_OnboardingInfoState) then) =
      __$OnboardingInfoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption,
      bool showErrorMessages,
      bool isSaving,
      bool isUsernameTaken,
      String username,
      User user,
      University university,
      String campusID,
      List<University> listOfUniversities,
      List<String> listOfColleges,
      List<String> listOfMajors,
      List<String> listOfSelectedColleges,
      List<String> listOfCampuses});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $UniversityCopyWith<$Res> get university;
}

class __$OnboardingInfoStateCopyWithImpl<$Res>
    extends _$OnboardingInfoStateCopyWithImpl<$Res>
    implements _$OnboardingInfoStateCopyWith<$Res> {
  __$OnboardingInfoStateCopyWithImpl(
      _OnboardingInfoState _value, $Res Function(_OnboardingInfoState) _then)
      : super(_value, (v) => _then(v as _OnboardingInfoState));

  @override
  _OnboardingInfoState get _value => super._value as _OnboardingInfoState;

  @override
  $Res call({
    Object saveFailureOrSuccessOption = freezed,
    Object showErrorMessages = freezed,
    Object isSaving = freezed,
    Object isUsernameTaken = freezed,
    Object username = freezed,
    Object user = freezed,
    Object university = freezed,
    Object campusID = freezed,
    Object listOfUniversities = freezed,
    Object listOfColleges = freezed,
    Object listOfMajors = freezed,
    Object listOfSelectedColleges = freezed,
    Object listOfCampuses = freezed,
  }) {
    return _then(_OnboardingInfoState(
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<UserFailure, Unit>>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isUsernameTaken: isUsernameTaken == freezed
          ? _value.isUsernameTaken
          : isUsernameTaken as bool,
      username: username == freezed ? _value.username : username as String,
      user: user == freezed ? _value.user : user as User,
      university:
          university == freezed ? _value.university : university as University,
      campusID: campusID == freezed ? _value.campusID : campusID as String,
      listOfUniversities: listOfUniversities == freezed
          ? _value.listOfUniversities
          : listOfUniversities as List<University>,
      listOfColleges: listOfColleges == freezed
          ? _value.listOfColleges
          : listOfColleges as List<String>,
      listOfMajors: listOfMajors == freezed
          ? _value.listOfMajors
          : listOfMajors as List<String>,
      listOfSelectedColleges: listOfSelectedColleges == freezed
          ? _value.listOfSelectedColleges
          : listOfSelectedColleges as List<String>,
      listOfCampuses: listOfCampuses == freezed
          ? _value.listOfCampuses
          : listOfCampuses as List<String>,
    ));
  }
}

class _$_OnboardingInfoState implements _OnboardingInfoState {
  const _$_OnboardingInfoState(
      {@required this.saveFailureOrSuccessOption,
      @required this.showErrorMessages,
      @required this.isSaving,
      @required this.isUsernameTaken,
      @required this.username,
      @required this.user,
      @required this.university,
      @required this.campusID,
      @required this.listOfUniversities,
      @required this.listOfColleges,
      @required this.listOfMajors,
      @required this.listOfSelectedColleges,
      @required this.listOfCampuses})
      : assert(saveFailureOrSuccessOption != null),
        assert(showErrorMessages != null),
        assert(isSaving != null),
        assert(isUsernameTaken != null),
        assert(username != null),
        assert(user != null),
        assert(university != null),
        assert(campusID != null),
        assert(listOfUniversities != null),
        assert(listOfColleges != null),
        assert(listOfMajors != null),
        assert(listOfSelectedColleges != null),
        assert(listOfCampuses != null);

  @override
  final Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool isUsernameTaken;
  @override
  final String username;
  @override
  final User user;
  @override
  final University university;
  @override
  final String campusID;
  @override
  final List<University> listOfUniversities;
  @override
  final List<String> listOfColleges;
  @override
  final List<String> listOfMajors;
  @override
  final List<String> listOfSelectedColleges;
  @override
  final List<String> listOfCampuses;

  @override
  String toString() {
    return 'OnboardingInfoState(saveFailureOrSuccessOption: $saveFailureOrSuccessOption, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isUsernameTaken: $isUsernameTaken, username: $username, user: $user, university: $university, campusID: $campusID, listOfUniversities: $listOfUniversities, listOfColleges: $listOfColleges, listOfMajors: $listOfMajors, listOfSelectedColleges: $listOfSelectedColleges, listOfCampuses: $listOfCampuses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnboardingInfoState &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isUsernameTaken, isUsernameTaken) ||
                const DeepCollectionEquality()
                    .equals(other.isUsernameTaken, isUsernameTaken)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.university, university) ||
                const DeepCollectionEquality()
                    .equals(other.university, university)) &&
            (identical(other.campusID, campusID) ||
                const DeepCollectionEquality()
                    .equals(other.campusID, campusID)) &&
            (identical(other.listOfUniversities, listOfUniversities) ||
                const DeepCollectionEquality()
                    .equals(other.listOfUniversities, listOfUniversities)) &&
            (identical(other.listOfColleges, listOfColleges) ||
                const DeepCollectionEquality()
                    .equals(other.listOfColleges, listOfColleges)) &&
            (identical(other.listOfMajors, listOfMajors) ||
                const DeepCollectionEquality()
                    .equals(other.listOfMajors, listOfMajors)) &&
            (identical(other.listOfSelectedColleges, listOfSelectedColleges) ||
                const DeepCollectionEquality().equals(
                    other.listOfSelectedColleges, listOfSelectedColleges)) &&
            (identical(other.listOfCampuses, listOfCampuses) ||
                const DeepCollectionEquality()
                    .equals(other.listOfCampuses, listOfCampuses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isUsernameTaken) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(university) ^
      const DeepCollectionEquality().hash(campusID) ^
      const DeepCollectionEquality().hash(listOfUniversities) ^
      const DeepCollectionEquality().hash(listOfColleges) ^
      const DeepCollectionEquality().hash(listOfMajors) ^
      const DeepCollectionEquality().hash(listOfSelectedColleges) ^
      const DeepCollectionEquality().hash(listOfCampuses);

  @override
  _$OnboardingInfoStateCopyWith<_OnboardingInfoState> get copyWith =>
      __$OnboardingInfoStateCopyWithImpl<_OnboardingInfoState>(
          this, _$identity);
}

abstract class _OnboardingInfoState implements OnboardingInfoState {
  const factory _OnboardingInfoState(
      {@required Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption,
      @required bool showErrorMessages,
      @required bool isSaving,
      @required bool isUsernameTaken,
      @required String username,
      @required User user,
      @required University university,
      @required String campusID,
      @required List<University> listOfUniversities,
      @required List<String> listOfColleges,
      @required List<String> listOfMajors,
      @required List<String> listOfSelectedColleges,
      @required List<String> listOfCampuses}) = _$_OnboardingInfoState;

  @override
  Option<Either<UserFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  bool get showErrorMessages;
  @override
  bool get isSaving;
  @override
  bool get isUsernameTaken;
  @override
  String get username;
  @override
  User get user;
  @override
  University get university;
  @override
  String get campusID;
  @override
  List<University> get listOfUniversities;
  @override
  List<String> get listOfColleges;
  @override
  List<String> get listOfMajors;
  @override
  List<String> get listOfSelectedColleges;
  @override
  List<String> get listOfCampuses;
  @override
  _$OnboardingInfoStateCopyWith<_OnboardingInfoState> get copyWith;
}
