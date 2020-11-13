// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'org_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OrgWatcherEventTearOff {
  const _$OrgWatcherEventTearOff();

  GetOrgData getData({String orgID, String currentUserID}) {
    return GetOrgData(
      orgID: orgID,
      currentUserID: currentUserID,
    );
  }

  OrgReceived orgReceived(Organization org) {
    return OrgReceived(
      org,
    );
  }
}

// ignore: unused_element
const $OrgWatcherEvent = _$OrgWatcherEventTearOff();

mixin _$OrgWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, String currentUserID),
    @required Result orgReceived(Organization org),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, String currentUserID),
    Result orgReceived(Organization org),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetOrgData value),
    @required Result orgReceived(OrgReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetOrgData value),
    Result orgReceived(OrgReceived value),
    @required Result orElse(),
  });
}

abstract class $OrgWatcherEventCopyWith<$Res> {
  factory $OrgWatcherEventCopyWith(
          OrgWatcherEvent value, $Res Function(OrgWatcherEvent) then) =
      _$OrgWatcherEventCopyWithImpl<$Res>;
}

class _$OrgWatcherEventCopyWithImpl<$Res>
    implements $OrgWatcherEventCopyWith<$Res> {
  _$OrgWatcherEventCopyWithImpl(this._value, this._then);

  final OrgWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(OrgWatcherEvent) _then;
}

abstract class $GetOrgDataCopyWith<$Res> {
  factory $GetOrgDataCopyWith(
          GetOrgData value, $Res Function(GetOrgData) then) =
      _$GetOrgDataCopyWithImpl<$Res>;
  $Res call({String orgID, String currentUserID});
}

class _$GetOrgDataCopyWithImpl<$Res> extends _$OrgWatcherEventCopyWithImpl<$Res>
    implements $GetOrgDataCopyWith<$Res> {
  _$GetOrgDataCopyWithImpl(GetOrgData _value, $Res Function(GetOrgData) _then)
      : super(_value, (v) => _then(v as GetOrgData));

  @override
  GetOrgData get _value => super._value as GetOrgData;

  @override
  $Res call({
    Object orgID = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(GetOrgData(
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      currentUserID: currentUserID == freezed
          ? _value.currentUserID
          : currentUserID as String,
    ));
  }
}

class _$GetOrgData implements GetOrgData {
  const _$GetOrgData({this.orgID, this.currentUserID});

  @override
  final String orgID;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'OrgWatcherEvent.getData(orgID: $orgID, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetOrgData &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $GetOrgDataCopyWith<GetOrgData> get copyWith =>
      _$GetOrgDataCopyWithImpl<GetOrgData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, String currentUserID),
    @required Result orgReceived(Organization org),
  }) {
    assert(getData != null);
    assert(orgReceived != null);
    return getData(orgID, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, String currentUserID),
    Result orgReceived(Organization org),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(orgID, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetOrgData value),
    @required Result orgReceived(OrgReceived value),
  }) {
    assert(getData != null);
    assert(orgReceived != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetOrgData value),
    Result orgReceived(OrgReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetOrgData implements OrgWatcherEvent {
  const factory GetOrgData({String orgID, String currentUserID}) = _$GetOrgData;

  String get orgID;
  String get currentUserID;
  $GetOrgDataCopyWith<GetOrgData> get copyWith;
}

abstract class $OrgReceivedCopyWith<$Res> {
  factory $OrgReceivedCopyWith(
          OrgReceived value, $Res Function(OrgReceived) then) =
      _$OrgReceivedCopyWithImpl<$Res>;
  $Res call({Organization org});

  $OrganizationCopyWith<$Res> get org;
}

class _$OrgReceivedCopyWithImpl<$Res>
    extends _$OrgWatcherEventCopyWithImpl<$Res>
    implements $OrgReceivedCopyWith<$Res> {
  _$OrgReceivedCopyWithImpl(
      OrgReceived _value, $Res Function(OrgReceived) _then)
      : super(_value, (v) => _then(v as OrgReceived));

  @override
  OrgReceived get _value => super._value as OrgReceived;

  @override
  $Res call({
    Object org = freezed,
  }) {
    return _then(OrgReceived(
      org == freezed ? _value.org : org as Organization,
    ));
  }

  @override
  $OrganizationCopyWith<$Res> get org {
    if (_value.org == null) {
      return null;
    }
    return $OrganizationCopyWith<$Res>(_value.org, (value) {
      return _then(_value.copyWith(org: value));
    });
  }
}

class _$OrgReceived implements OrgReceived {
  const _$OrgReceived(this.org) : assert(org != null);

  @override
  final Organization org;

  @override
  String toString() {
    return 'OrgWatcherEvent.orgReceived(org: $org)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrgReceived &&
            (identical(other.org, org) ||
                const DeepCollectionEquality().equals(other.org, org)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(org);

  @override
  $OrgReceivedCopyWith<OrgReceived> get copyWith =>
      _$OrgReceivedCopyWithImpl<OrgReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, String currentUserID),
    @required Result orgReceived(Organization org),
  }) {
    assert(getData != null);
    assert(orgReceived != null);
    return orgReceived(org);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, String currentUserID),
    Result orgReceived(Organization org),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orgReceived != null) {
      return orgReceived(org);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetOrgData value),
    @required Result orgReceived(OrgReceived value),
  }) {
    assert(getData != null);
    assert(orgReceived != null);
    return orgReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetOrgData value),
    Result orgReceived(OrgReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orgReceived != null) {
      return orgReceived(this);
    }
    return orElse();
  }
}

abstract class OrgReceived implements OrgWatcherEvent {
  const factory OrgReceived(Organization org) = _$OrgReceived;

  Organization get org;
  $OrgReceivedCopyWith<OrgReceived> get copyWith;
}

class _$OrgWatcherStateTearOff {
  const _$OrgWatcherStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  LoadSuccess loadSuccess(Organization org) {
    return LoadSuccess(
      org,
    );
  }

  LoadFailure loadFailure(PostFailure f) {
    return LoadFailure(
      f,
    );
  }
}

// ignore: unused_element
const $OrgWatcherState = _$OrgWatcherStateTearOff();

mixin _$OrgWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Organization org),
    @required Result loadFailure(PostFailure f),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Organization org),
    Result loadFailure(PostFailure f),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $OrgWatcherStateCopyWith<$Res> {
  factory $OrgWatcherStateCopyWith(
          OrgWatcherState value, $Res Function(OrgWatcherState) then) =
      _$OrgWatcherStateCopyWithImpl<$Res>;
}

class _$OrgWatcherStateCopyWithImpl<$Res>
    implements $OrgWatcherStateCopyWith<$Res> {
  _$OrgWatcherStateCopyWithImpl(this._value, this._then);

  final OrgWatcherState _value;
  // ignore: unused_field
  final $Res Function(OrgWatcherState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$OrgWatcherStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'OrgWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Organization org),
    @required Result loadFailure(PostFailure f),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Organization org),
    Result loadFailure(PostFailure f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements OrgWatcherState {
  const factory Initial() = _$Initial;
}

abstract class $LoadInProgressCopyWith<$Res> {
  factory $LoadInProgressCopyWith(
          LoadInProgress value, $Res Function(LoadInProgress) then) =
      _$LoadInProgressCopyWithImpl<$Res>;
}

class _$LoadInProgressCopyWithImpl<$Res>
    extends _$OrgWatcherStateCopyWithImpl<$Res>
    implements $LoadInProgressCopyWith<$Res> {
  _$LoadInProgressCopyWithImpl(
      LoadInProgress _value, $Res Function(LoadInProgress) _then)
      : super(_value, (v) => _then(v as LoadInProgress));

  @override
  LoadInProgress get _value => super._value as LoadInProgress;
}

class _$LoadInProgress implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString() {
    return 'OrgWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Organization org),
    @required Result loadFailure(PostFailure f),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Organization org),
    Result loadFailure(PostFailure f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements OrgWatcherState {
  const factory LoadInProgress() = _$LoadInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Organization org});

  $OrganizationCopyWith<$Res> get org;
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$OrgWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object org = freezed,
  }) {
    return _then(LoadSuccess(
      org == freezed ? _value.org : org as Organization,
    ));
  }

  @override
  $OrganizationCopyWith<$Res> get org {
    if (_value.org == null) {
      return null;
    }
    return $OrganizationCopyWith<$Res>(_value.org, (value) {
      return _then(_value.copyWith(org: value));
    });
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.org) : assert(org != null);

  @override
  final Organization org;

  @override
  String toString() {
    return 'OrgWatcherState.loadSuccess(org: $org)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.org, org) ||
                const DeepCollectionEquality().equals(other.org, org)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(org);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Organization org),
    @required Result loadFailure(PostFailure f),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(org);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Organization org),
    Result loadFailure(PostFailure f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(org);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements OrgWatcherState {
  const factory LoadSuccess(Organization org) = _$LoadSuccess;

  Organization get org;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({PostFailure f});

  $PostFailureCopyWith<$Res> get f;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$OrgWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(LoadFailure(
      f == freezed ? _value.f : f as PostFailure,
    ));
  }

  @override
  $PostFailureCopyWith<$Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $PostFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.f) : assert(f != null);

  @override
  final PostFailure f;

  @override
  String toString() {
    return 'OrgWatcherState.loadFailure(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Organization org),
    @required Result loadFailure(PostFailure f),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(f);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Organization org),
    Result loadFailure(PostFailure f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements OrgWatcherState {
  const factory LoadFailure(PostFailure f) = _$LoadFailure;

  PostFailure get f;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
