// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'activity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ActivityEventTearOff {
  const _$ActivityEventTearOff();

  _ActivitiesReceived activitiesReceived(
      Either<ActivityFailure, KtList<Activity>> failureOrPosts) {
    return _ActivitiesReceived(
      failureOrPosts,
    );
  }

  _GetData getData() {
    return const _GetData();
  }
}

// ignore: unused_element
const $ActivityEvent = _$ActivityEventTearOff();

mixin _$ActivityEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result activitiesReceived(
            Either<ActivityFailure, KtList<Activity>> failureOrPosts),
    @required Result getData(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result activitiesReceived(
        Either<ActivityFailure, KtList<Activity>> failureOrPosts),
    Result getData(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result activitiesReceived(_ActivitiesReceived value),
    @required Result getData(_GetData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result activitiesReceived(_ActivitiesReceived value),
    Result getData(_GetData value),
    @required Result orElse(),
  });
}

abstract class $ActivityEventCopyWith<$Res> {
  factory $ActivityEventCopyWith(
          ActivityEvent value, $Res Function(ActivityEvent) then) =
      _$ActivityEventCopyWithImpl<$Res>;
}

class _$ActivityEventCopyWithImpl<$Res>
    implements $ActivityEventCopyWith<$Res> {
  _$ActivityEventCopyWithImpl(this._value, this._then);

  final ActivityEvent _value;
  // ignore: unused_field
  final $Res Function(ActivityEvent) _then;
}

abstract class _$ActivitiesReceivedCopyWith<$Res> {
  factory _$ActivitiesReceivedCopyWith(
          _ActivitiesReceived value, $Res Function(_ActivitiesReceived) then) =
      __$ActivitiesReceivedCopyWithImpl<$Res>;
  $Res call({Either<ActivityFailure, KtList<Activity>> failureOrPosts});
}

class __$ActivitiesReceivedCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res>
    implements _$ActivitiesReceivedCopyWith<$Res> {
  __$ActivitiesReceivedCopyWithImpl(
      _ActivitiesReceived _value, $Res Function(_ActivitiesReceived) _then)
      : super(_value, (v) => _then(v as _ActivitiesReceived));

  @override
  _ActivitiesReceived get _value => super._value as _ActivitiesReceived;

  @override
  $Res call({
    Object failureOrPosts = freezed,
  }) {
    return _then(_ActivitiesReceived(
      failureOrPosts == freezed
          ? _value.failureOrPosts
          : failureOrPosts as Either<ActivityFailure, KtList<Activity>>,
    ));
  }
}

class _$_ActivitiesReceived implements _ActivitiesReceived {
  const _$_ActivitiesReceived(this.failureOrPosts)
      : assert(failureOrPosts != null);

  @override
  final Either<ActivityFailure, KtList<Activity>> failureOrPosts;

  @override
  String toString() {
    return 'ActivityEvent.activitiesReceived(failureOrPosts: $failureOrPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActivitiesReceived &&
            (identical(other.failureOrPosts, failureOrPosts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPosts, failureOrPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPosts);

  @override
  _$ActivitiesReceivedCopyWith<_ActivitiesReceived> get copyWith =>
      __$ActivitiesReceivedCopyWithImpl<_ActivitiesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result activitiesReceived(
            Either<ActivityFailure, KtList<Activity>> failureOrPosts),
    @required Result getData(),
  }) {
    assert(activitiesReceived != null);
    assert(getData != null);
    return activitiesReceived(failureOrPosts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result activitiesReceived(
        Either<ActivityFailure, KtList<Activity>> failureOrPosts),
    Result getData(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (activitiesReceived != null) {
      return activitiesReceived(failureOrPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result activitiesReceived(_ActivitiesReceived value),
    @required Result getData(_GetData value),
  }) {
    assert(activitiesReceived != null);
    assert(getData != null);
    return activitiesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result activitiesReceived(_ActivitiesReceived value),
    Result getData(_GetData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (activitiesReceived != null) {
      return activitiesReceived(this);
    }
    return orElse();
  }
}

abstract class _ActivitiesReceived implements ActivityEvent {
  const factory _ActivitiesReceived(
          Either<ActivityFailure, KtList<Activity>> failureOrPosts) =
      _$_ActivitiesReceived;

  Either<ActivityFailure, KtList<Activity>> get failureOrPosts;
  _$ActivitiesReceivedCopyWith<_ActivitiesReceived> get copyWith;
}

abstract class _$GetDataCopyWith<$Res> {
  factory _$GetDataCopyWith(_GetData value, $Res Function(_GetData) then) =
      __$GetDataCopyWithImpl<$Res>;
}

class __$GetDataCopyWithImpl<$Res> extends _$ActivityEventCopyWithImpl<$Res>
    implements _$GetDataCopyWith<$Res> {
  __$GetDataCopyWithImpl(_GetData _value, $Res Function(_GetData) _then)
      : super(_value, (v) => _then(v as _GetData));

  @override
  _GetData get _value => super._value as _GetData;
}

class _$_GetData implements _GetData {
  const _$_GetData();

  @override
  String toString() {
    return 'ActivityEvent.getData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result activitiesReceived(
            Either<ActivityFailure, KtList<Activity>> failureOrPosts),
    @required Result getData(),
  }) {
    assert(activitiesReceived != null);
    assert(getData != null);
    return getData();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result activitiesReceived(
        Either<ActivityFailure, KtList<Activity>> failureOrPosts),
    Result getData(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result activitiesReceived(_ActivitiesReceived value),
    @required Result getData(_GetData value),
  }) {
    assert(activitiesReceived != null);
    assert(getData != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result activitiesReceived(_ActivitiesReceived value),
    Result getData(_GetData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements ActivityEvent {
  const factory _GetData() = _$_GetData;
}

class _$ActivityStateTearOff {
  const _$ActivityStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  LoadSuccess loadSuccess(KtList<Activity> activities) {
    return LoadSuccess(
      activities,
    );
  }

  LoadFailure loadFailure(ActivityFailure f) {
    return LoadFailure(
      f,
    );
  }
}

// ignore: unused_element
const $ActivityState = _$ActivityStateTearOff();

mixin _$ActivityState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Activity> activities),
    @required Result loadFailure(ActivityFailure f),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Activity> activities),
    Result loadFailure(ActivityFailure f),
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

abstract class $ActivityStateCopyWith<$Res> {
  factory $ActivityStateCopyWith(
          ActivityState value, $Res Function(ActivityState) then) =
      _$ActivityStateCopyWithImpl<$Res>;
}

class _$ActivityStateCopyWithImpl<$Res>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._value, this._then);

  final ActivityState _value;
  // ignore: unused_field
  final $Res Function(ActivityState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$ActivityStateCopyWithImpl<$Res>
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
    return 'ActivityState.initial()';
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
    @required Result loadSuccess(KtList<Activity> activities),
    @required Result loadFailure(ActivityFailure f),
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
    Result loadSuccess(KtList<Activity> activities),
    Result loadFailure(ActivityFailure f),
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

abstract class Initial implements ActivityState {
  const factory Initial() = _$Initial;
}

abstract class $LoadInProgressCopyWith<$Res> {
  factory $LoadInProgressCopyWith(
          LoadInProgress value, $Res Function(LoadInProgress) then) =
      _$LoadInProgressCopyWithImpl<$Res>;
}

class _$LoadInProgressCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res>
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
    return 'ActivityState.loadInProgress()';
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
    @required Result loadSuccess(KtList<Activity> activities),
    @required Result loadFailure(ActivityFailure f),
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
    Result loadSuccess(KtList<Activity> activities),
    Result loadFailure(ActivityFailure f),
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

abstract class LoadInProgress implements ActivityState {
  const factory LoadInProgress() = _$LoadInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Activity> activities});
}

class _$LoadSuccessCopyWithImpl<$Res> extends _$ActivityStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object activities = freezed,
  }) {
    return _then(LoadSuccess(
      activities == freezed
          ? _value.activities
          : activities as KtList<Activity>,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.activities) : assert(activities != null);

  @override
  final KtList<Activity> activities;

  @override
  String toString() {
    return 'ActivityState.loadSuccess(activities: $activities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.activities, activities) ||
                const DeepCollectionEquality()
                    .equals(other.activities, activities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(activities);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Activity> activities),
    @required Result loadFailure(ActivityFailure f),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(activities);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Activity> activities),
    Result loadFailure(ActivityFailure f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(activities);
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

abstract class LoadSuccess implements ActivityState {
  const factory LoadSuccess(KtList<Activity> activities) = _$LoadSuccess;

  KtList<Activity> get activities;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({ActivityFailure f});

  $ActivityFailureCopyWith<$Res> get f;
}

class _$LoadFailureCopyWithImpl<$Res> extends _$ActivityStateCopyWithImpl<$Res>
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
      f == freezed ? _value.f : f as ActivityFailure,
    ));
  }

  @override
  $ActivityFailureCopyWith<$Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $ActivityFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.f) : assert(f != null);

  @override
  final ActivityFailure f;

  @override
  String toString() {
    return 'ActivityState.loadFailure(f: $f)';
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
    @required Result loadSuccess(KtList<Activity> activities),
    @required Result loadFailure(ActivityFailure f),
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
    Result loadSuccess(KtList<Activity> activities),
    Result loadFailure(ActivityFailure f),
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

abstract class LoadFailure implements ActivityState {
  const factory LoadFailure(ActivityFailure f) = _$LoadFailure;

  ActivityFailure get f;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
