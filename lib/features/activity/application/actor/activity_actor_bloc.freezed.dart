// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'activity_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ActivityActorEventTearOff {
  const _$ActivityActorEventTearOff();

  _GetData getData(Activity activity) {
    return _GetData(
      activity,
    );
  }

  _GetData1 getData1(Activity activity) {
    return _GetData1(
      activity,
    );
  }
}

// ignore: unused_element
const $ActivityActorEvent = _$ActivityActorEventTearOff();

mixin _$ActivityActorEvent {
  Activity get activity;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Activity activity),
    @required Result getData1(Activity activity),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Activity activity),
    Result getData1(Activity activity),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result getData1(_GetData1 value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result getData1(_GetData1 value),
    @required Result orElse(),
  });

  $ActivityActorEventCopyWith<ActivityActorEvent> get copyWith;
}

abstract class $ActivityActorEventCopyWith<$Res> {
  factory $ActivityActorEventCopyWith(
          ActivityActorEvent value, $Res Function(ActivityActorEvent) then) =
      _$ActivityActorEventCopyWithImpl<$Res>;
  $Res call({Activity activity});

  $ActivityCopyWith<$Res> get activity;
}

class _$ActivityActorEventCopyWithImpl<$Res>
    implements $ActivityActorEventCopyWith<$Res> {
  _$ActivityActorEventCopyWithImpl(this._value, this._then);

  final ActivityActorEvent _value;
  // ignore: unused_field
  final $Res Function(ActivityActorEvent) _then;

  @override
  $Res call({
    Object activity = freezed,
  }) {
    return _then(_value.copyWith(
      activity: activity == freezed ? _value.activity : activity as Activity,
    ));
  }

  @override
  $ActivityCopyWith<$Res> get activity {
    if (_value.activity == null) {
      return null;
    }
    return $ActivityCopyWith<$Res>(_value.activity, (value) {
      return _then(_value.copyWith(activity: value));
    });
  }
}

abstract class _$GetDataCopyWith<$Res>
    implements $ActivityActorEventCopyWith<$Res> {
  factory _$GetDataCopyWith(_GetData value, $Res Function(_GetData) then) =
      __$GetDataCopyWithImpl<$Res>;
  @override
  $Res call({Activity activity});

  @override
  $ActivityCopyWith<$Res> get activity;
}

class __$GetDataCopyWithImpl<$Res>
    extends _$ActivityActorEventCopyWithImpl<$Res>
    implements _$GetDataCopyWith<$Res> {
  __$GetDataCopyWithImpl(_GetData _value, $Res Function(_GetData) _then)
      : super(_value, (v) => _then(v as _GetData));

  @override
  _GetData get _value => super._value as _GetData;

  @override
  $Res call({
    Object activity = freezed,
  }) {
    return _then(_GetData(
      activity == freezed ? _value.activity : activity as Activity,
    ));
  }
}

class _$_GetData implements _GetData {
  const _$_GetData(this.activity) : assert(activity != null);

  @override
  final Activity activity;

  @override
  String toString() {
    return 'ActivityActorEvent.getData(activity: $activity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetData &&
            (identical(other.activity, activity) ||
                const DeepCollectionEquality()
                    .equals(other.activity, activity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(activity);

  @override
  _$GetDataCopyWith<_GetData> get copyWith =>
      __$GetDataCopyWithImpl<_GetData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Activity activity),
    @required Result getData1(Activity activity),
  }) {
    assert(getData != null);
    assert(getData1 != null);
    return getData(activity);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Activity activity),
    Result getData1(Activity activity),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(activity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result getData1(_GetData1 value),
  }) {
    assert(getData != null);
    assert(getData1 != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result getData1(_GetData1 value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements ActivityActorEvent {
  const factory _GetData(Activity activity) = _$_GetData;

  @override
  Activity get activity;
  @override
  _$GetDataCopyWith<_GetData> get copyWith;
}

abstract class _$GetData1CopyWith<$Res>
    implements $ActivityActorEventCopyWith<$Res> {
  factory _$GetData1CopyWith(_GetData1 value, $Res Function(_GetData1) then) =
      __$GetData1CopyWithImpl<$Res>;
  @override
  $Res call({Activity activity});

  @override
  $ActivityCopyWith<$Res> get activity;
}

class __$GetData1CopyWithImpl<$Res>
    extends _$ActivityActorEventCopyWithImpl<$Res>
    implements _$GetData1CopyWith<$Res> {
  __$GetData1CopyWithImpl(_GetData1 _value, $Res Function(_GetData1) _then)
      : super(_value, (v) => _then(v as _GetData1));

  @override
  _GetData1 get _value => super._value as _GetData1;

  @override
  $Res call({
    Object activity = freezed,
  }) {
    return _then(_GetData1(
      activity == freezed ? _value.activity : activity as Activity,
    ));
  }
}

class _$_GetData1 implements _GetData1 {
  const _$_GetData1(this.activity) : assert(activity != null);

  @override
  final Activity activity;

  @override
  String toString() {
    return 'ActivityActorEvent.getData1(activity: $activity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetData1 &&
            (identical(other.activity, activity) ||
                const DeepCollectionEquality()
                    .equals(other.activity, activity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(activity);

  @override
  _$GetData1CopyWith<_GetData1> get copyWith =>
      __$GetData1CopyWithImpl<_GetData1>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Activity activity),
    @required Result getData1(Activity activity),
  }) {
    assert(getData != null);
    assert(getData1 != null);
    return getData1(activity);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Activity activity),
    Result getData1(Activity activity),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData1 != null) {
      return getData1(activity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result getData1(_GetData1 value),
  }) {
    assert(getData != null);
    assert(getData1 != null);
    return getData1(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result getData1(_GetData1 value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData1 != null) {
      return getData1(this);
    }
    return orElse();
  }
}

abstract class _GetData1 implements ActivityActorEvent {
  const factory _GetData1(Activity activity) = _$_GetData1;

  @override
  Activity get activity;
  @override
  _$GetData1CopyWith<_GetData1> get copyWith;
}

class _$ActivityActorStateTearOff {
  const _$ActivityActorStateTearOff();

  _ActivityActorState call({@required Event event, @required Post post}) {
    return _ActivityActorState(
      event: event,
      post: post,
    );
  }
}

// ignore: unused_element
const $ActivityActorState = _$ActivityActorStateTearOff();

mixin _$ActivityActorState {
  Event get event;
  Post get post;

  $ActivityActorStateCopyWith<ActivityActorState> get copyWith;
}

abstract class $ActivityActorStateCopyWith<$Res> {
  factory $ActivityActorStateCopyWith(
          ActivityActorState value, $Res Function(ActivityActorState) then) =
      _$ActivityActorStateCopyWithImpl<$Res>;
  $Res call({Event event, Post post});

  $EventCopyWith<$Res> get event;
  $PostCopyWith<$Res> get post;
}

class _$ActivityActorStateCopyWithImpl<$Res>
    implements $ActivityActorStateCopyWith<$Res> {
  _$ActivityActorStateCopyWithImpl(this._value, this._then);

  final ActivityActorState _value;
  // ignore: unused_field
  final $Res Function(ActivityActorState) _then;

  @override
  $Res call({
    Object event = freezed,
    Object post = freezed,
  }) {
    return _then(_value.copyWith(
      event: event == freezed ? _value.event : event as Event,
      post: post == freezed ? _value.post : post as Post,
    ));
  }

  @override
  $EventCopyWith<$Res> get event {
    if (_value.event == null) {
      return null;
    }
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }

  @override
  $PostCopyWith<$Res> get post {
    if (_value.post == null) {
      return null;
    }
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

abstract class _$ActivityActorStateCopyWith<$Res>
    implements $ActivityActorStateCopyWith<$Res> {
  factory _$ActivityActorStateCopyWith(
          _ActivityActorState value, $Res Function(_ActivityActorState) then) =
      __$ActivityActorStateCopyWithImpl<$Res>;
  @override
  $Res call({Event event, Post post});

  @override
  $EventCopyWith<$Res> get event;
  @override
  $PostCopyWith<$Res> get post;
}

class __$ActivityActorStateCopyWithImpl<$Res>
    extends _$ActivityActorStateCopyWithImpl<$Res>
    implements _$ActivityActorStateCopyWith<$Res> {
  __$ActivityActorStateCopyWithImpl(
      _ActivityActorState _value, $Res Function(_ActivityActorState) _then)
      : super(_value, (v) => _then(v as _ActivityActorState));

  @override
  _ActivityActorState get _value => super._value as _ActivityActorState;

  @override
  $Res call({
    Object event = freezed,
    Object post = freezed,
  }) {
    return _then(_ActivityActorState(
      event: event == freezed ? _value.event : event as Event,
      post: post == freezed ? _value.post : post as Post,
    ));
  }
}

class _$_ActivityActorState implements _ActivityActorState {
  const _$_ActivityActorState({@required this.event, @required this.post})
      : assert(event != null),
        assert(post != null);

  @override
  final Event event;
  @override
  final Post post;

  @override
  String toString() {
    return 'ActivityActorState(event: $event, post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActivityActorState &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)) &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(event) ^
      const DeepCollectionEquality().hash(post);

  @override
  _$ActivityActorStateCopyWith<_ActivityActorState> get copyWith =>
      __$ActivityActorStateCopyWithImpl<_ActivityActorState>(this, _$identity);
}

abstract class _ActivityActorState implements ActivityActorState {
  const factory _ActivityActorState(
      {@required Event event, @required Post post}) = _$_ActivityActorState;

  @override
  Event get event;
  @override
  Post get post;
  @override
  _$ActivityActorStateCopyWith<_ActivityActorState> get copyWith;
}
