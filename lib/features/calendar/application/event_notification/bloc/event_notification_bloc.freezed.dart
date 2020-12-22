// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'event_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EventNotificationEventTearOff {
  const _$EventNotificationEventTearOff();

  GetEvent getEvent(
      {String eventID, String type, String typeID, String currentUserID}) {
    return GetEvent(
      eventID: eventID,
      type: type,
      typeID: typeID,
      currentUserID: currentUserID,
    );
  }
}

// ignore: unused_element
const $EventNotificationEvent = _$EventNotificationEventTearOff();

mixin _$EventNotificationEvent {
  String get eventID;
  String get type;
  String get typeID;
  String get currentUserID;

  $EventNotificationEventCopyWith<EventNotificationEvent> get copyWith;
}

abstract class $EventNotificationEventCopyWith<$Res> {
  factory $EventNotificationEventCopyWith(EventNotificationEvent value,
          $Res Function(EventNotificationEvent) then) =
      _$EventNotificationEventCopyWithImpl<$Res>;
  $Res call({String eventID, String type, String typeID, String currentUserID});
}

class _$EventNotificationEventCopyWithImpl<$Res>
    implements $EventNotificationEventCopyWith<$Res> {
  _$EventNotificationEventCopyWithImpl(this._value, this._then);

  final EventNotificationEvent _value;
  // ignore: unused_field
  final $Res Function(EventNotificationEvent) _then;

  @override
  $Res call({
    Object eventID = freezed,
    Object type = freezed,
    Object typeID = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(_value.copyWith(
      eventID: eventID == freezed ? _value.eventID : eventID as String,
      type: type == freezed ? _value.type : type as String,
      typeID: typeID == freezed ? _value.typeID : typeID as String,
      currentUserID: currentUserID == freezed
          ? _value.currentUserID
          : currentUserID as String,
    ));
  }
}

abstract class $GetEventCopyWith<$Res>
    implements $EventNotificationEventCopyWith<$Res> {
  factory $GetEventCopyWith(GetEvent value, $Res Function(GetEvent) then) =
      _$GetEventCopyWithImpl<$Res>;
  @override
  $Res call({String eventID, String type, String typeID, String currentUserID});
}

class _$GetEventCopyWithImpl<$Res>
    extends _$EventNotificationEventCopyWithImpl<$Res>
    implements $GetEventCopyWith<$Res> {
  _$GetEventCopyWithImpl(GetEvent _value, $Res Function(GetEvent) _then)
      : super(_value, (v) => _then(v as GetEvent));

  @override
  GetEvent get _value => super._value as GetEvent;

  @override
  $Res call({
    Object eventID = freezed,
    Object type = freezed,
    Object typeID = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(GetEvent(
      eventID: eventID == freezed ? _value.eventID : eventID as String,
      type: type == freezed ? _value.type : type as String,
      typeID: typeID == freezed ? _value.typeID : typeID as String,
      currentUserID: currentUserID == freezed
          ? _value.currentUserID
          : currentUserID as String,
    ));
  }
}

class _$GetEvent implements GetEvent {
  const _$GetEvent({this.eventID, this.type, this.typeID, this.currentUserID});

  @override
  final String eventID;
  @override
  final String type;
  @override
  final String typeID;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'EventNotificationEvent.getEvent(eventID: $eventID, type: $type, typeID: $typeID, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetEvent &&
            (identical(other.eventID, eventID) ||
                const DeepCollectionEquality()
                    .equals(other.eventID, eventID)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.typeID, typeID) ||
                const DeepCollectionEquality().equals(other.typeID, typeID)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(eventID) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(typeID) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $GetEventCopyWith<GetEvent> get copyWith =>
      _$GetEventCopyWithImpl<GetEvent>(this, _$identity);
}

abstract class GetEvent implements EventNotificationEvent {
  const factory GetEvent(
      {String eventID,
      String type,
      String typeID,
      String currentUserID}) = _$GetEvent;

  @override
  String get eventID;
  @override
  String get type;
  @override
  String get typeID;
  @override
  String get currentUserID;
  @override
  $GetEventCopyWith<GetEvent> get copyWith;
}

class _$EventNotificationStateTearOff {
  const _$EventNotificationStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(Event event) {
    return _LoadSuccess(
      event,
    );
  }

  _LoadFailure loadFailure(EventFailure f) {
    return _LoadFailure(
      f,
    );
  }
}

// ignore: unused_element
const $EventNotificationState = _$EventNotificationStateTearOff();

mixin _$EventNotificationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Event event),
    @required Result loadFailure(EventFailure f),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Event event),
    Result loadFailure(EventFailure f),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $EventNotificationStateCopyWith<$Res> {
  factory $EventNotificationStateCopyWith(EventNotificationState value,
          $Res Function(EventNotificationState) then) =
      _$EventNotificationStateCopyWithImpl<$Res>;
}

class _$EventNotificationStateCopyWithImpl<$Res>
    implements $EventNotificationStateCopyWith<$Res> {
  _$EventNotificationStateCopyWithImpl(this._value, this._then);

  final EventNotificationState _value;
  // ignore: unused_field
  final $Res Function(EventNotificationState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$EventNotificationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EventNotificationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Event event),
    @required Result loadFailure(EventFailure f),
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
    Result loadSuccess(Event event),
    Result loadFailure(EventFailure f),
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
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
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
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EventNotificationState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$EventNotificationStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'EventNotificationState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Event event),
    @required Result loadFailure(EventFailure f),
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
    Result loadSuccess(Event event),
    Result loadFailure(EventFailure f),
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
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
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
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements EventNotificationState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

class __$LoadSuccessCopyWithImpl<$Res>
    extends _$EventNotificationStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object event = freezed,
  }) {
    return _then(_LoadSuccess(
      event == freezed ? _value.event : event as Event,
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
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.event) : assert(event != null);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventNotificationState.loadSuccess(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Event event),
    @required Result loadFailure(EventFailure f),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(event);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Event event),
    Result loadFailure(EventFailure f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
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
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements EventNotificationState {
  const factory _LoadSuccess(Event event) = _$_LoadSuccess;

  Event get event;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({EventFailure f});

  $EventFailureCopyWith<$Res> get f;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$EventNotificationStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_LoadFailure(
      f == freezed ? _value.f : f as EventFailure,
    ));
  }

  @override
  $EventFailureCopyWith<$Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $EventFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.f) : assert(f != null);

  @override
  final EventFailure f;

  @override
  String toString() {
    return 'EventNotificationState.loadFailure(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Event event),
    @required Result loadFailure(EventFailure f),
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
    Result loadSuccess(Event event),
    Result loadFailure(EventFailure f),
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
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
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
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements EventNotificationState {
  const factory _LoadFailure(EventFailure f) = _$_LoadFailure;

  EventFailure get f;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
