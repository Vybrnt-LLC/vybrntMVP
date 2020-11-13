// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'event_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EventListEventTearOff {
  const _$EventListEventTearOff();

  GetData getData(String orgID, bool isOrg) {
    return GetData(
      orgID,
      isOrg,
    );
  }

  _EventsReceived eventsReceived(
      Either<EventFailure, KtList<Event>> failureOrNotes) {
    return _EventsReceived(
      failureOrNotes,
    );
  }
}

// ignore: unused_element
const $EventListEvent = _$EventListEventTearOff();

mixin _$EventListEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, bool isOrg),
    @required
        Result eventsReceived(
            Either<EventFailure, KtList<Event>> failureOrNotes),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, bool isOrg),
    Result eventsReceived(Either<EventFailure, KtList<Event>> failureOrNotes),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetData value),
    @required Result eventsReceived(_EventsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetData value),
    Result eventsReceived(_EventsReceived value),
    @required Result orElse(),
  });
}

abstract class $EventListEventCopyWith<$Res> {
  factory $EventListEventCopyWith(
          EventListEvent value, $Res Function(EventListEvent) then) =
      _$EventListEventCopyWithImpl<$Res>;
}

class _$EventListEventCopyWithImpl<$Res>
    implements $EventListEventCopyWith<$Res> {
  _$EventListEventCopyWithImpl(this._value, this._then);

  final EventListEvent _value;
  // ignore: unused_field
  final $Res Function(EventListEvent) _then;
}

abstract class $GetDataCopyWith<$Res> {
  factory $GetDataCopyWith(GetData value, $Res Function(GetData) then) =
      _$GetDataCopyWithImpl<$Res>;
  $Res call({String orgID, bool isOrg});
}

class _$GetDataCopyWithImpl<$Res> extends _$EventListEventCopyWithImpl<$Res>
    implements $GetDataCopyWith<$Res> {
  _$GetDataCopyWithImpl(GetData _value, $Res Function(GetData) _then)
      : super(_value, (v) => _then(v as GetData));

  @override
  GetData get _value => super._value as GetData;

  @override
  $Res call({
    Object orgID = freezed,
    Object isOrg = freezed,
  }) {
    return _then(GetData(
      orgID == freezed ? _value.orgID : orgID as String,
      isOrg == freezed ? _value.isOrg : isOrg as bool,
    ));
  }
}

class _$GetData implements GetData {
  const _$GetData(this.orgID, this.isOrg)
      : assert(orgID != null),
        assert(isOrg != null);

  @override
  final String orgID;
  @override
  final bool isOrg;

  @override
  String toString() {
    return 'EventListEvent.getData(orgID: $orgID, isOrg: $isOrg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetData &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.isOrg, isOrg) ||
                const DeepCollectionEquality().equals(other.isOrg, isOrg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(isOrg);

  @override
  $GetDataCopyWith<GetData> get copyWith =>
      _$GetDataCopyWithImpl<GetData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, bool isOrg),
    @required
        Result eventsReceived(
            Either<EventFailure, KtList<Event>> failureOrNotes),
  }) {
    assert(getData != null);
    assert(eventsReceived != null);
    return getData(orgID, isOrg);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, bool isOrg),
    Result eventsReceived(Either<EventFailure, KtList<Event>> failureOrNotes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(orgID, isOrg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetData value),
    @required Result eventsReceived(_EventsReceived value),
  }) {
    assert(getData != null);
    assert(eventsReceived != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetData value),
    Result eventsReceived(_EventsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetData implements EventListEvent {
  const factory GetData(String orgID, bool isOrg) = _$GetData;

  String get orgID;
  bool get isOrg;
  $GetDataCopyWith<GetData> get copyWith;
}

abstract class _$EventsReceivedCopyWith<$Res> {
  factory _$EventsReceivedCopyWith(
          _EventsReceived value, $Res Function(_EventsReceived) then) =
      __$EventsReceivedCopyWithImpl<$Res>;
  $Res call({Either<EventFailure, KtList<Event>> failureOrNotes});
}

class __$EventsReceivedCopyWithImpl<$Res>
    extends _$EventListEventCopyWithImpl<$Res>
    implements _$EventsReceivedCopyWith<$Res> {
  __$EventsReceivedCopyWithImpl(
      _EventsReceived _value, $Res Function(_EventsReceived) _then)
      : super(_value, (v) => _then(v as _EventsReceived));

  @override
  _EventsReceived get _value => super._value as _EventsReceived;

  @override
  $Res call({
    Object failureOrNotes = freezed,
  }) {
    return _then(_EventsReceived(
      failureOrNotes == freezed
          ? _value.failureOrNotes
          : failureOrNotes as Either<EventFailure, KtList<Event>>,
    ));
  }
}

class _$_EventsReceived implements _EventsReceived {
  const _$_EventsReceived(this.failureOrNotes) : assert(failureOrNotes != null);

  @override
  final Either<EventFailure, KtList<Event>> failureOrNotes;

  @override
  String toString() {
    return 'EventListEvent.eventsReceived(failureOrNotes: $failureOrNotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventsReceived &&
            (identical(other.failureOrNotes, failureOrNotes) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrNotes, failureOrNotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNotes);

  @override
  _$EventsReceivedCopyWith<_EventsReceived> get copyWith =>
      __$EventsReceivedCopyWithImpl<_EventsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, bool isOrg),
    @required
        Result eventsReceived(
            Either<EventFailure, KtList<Event>> failureOrNotes),
  }) {
    assert(getData != null);
    assert(eventsReceived != null);
    return eventsReceived(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, bool isOrg),
    Result eventsReceived(Either<EventFailure, KtList<Event>> failureOrNotes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eventsReceived != null) {
      return eventsReceived(failureOrNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetData value),
    @required Result eventsReceived(_EventsReceived value),
  }) {
    assert(getData != null);
    assert(eventsReceived != null);
    return eventsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetData value),
    Result eventsReceived(_EventsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eventsReceived != null) {
      return eventsReceived(this);
    }
    return orElse();
  }
}

abstract class _EventsReceived implements EventListEvent {
  const factory _EventsReceived(
      Either<EventFailure, KtList<Event>> failureOrNotes) = _$_EventsReceived;

  Either<EventFailure, KtList<Event>> get failureOrNotes;
  _$EventsReceivedCopyWith<_EventsReceived> get copyWith;
}

class _$EventListStateTearOff {
  const _$EventListStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

  LoadSuccess loadSuccess(KtList<Event> events) {
    return LoadSuccess(
      events,
    );
  }

  LoadFailure loadFailure(EventFailure eventFailure) {
    return LoadFailure(
      eventFailure,
    );
  }
}

// ignore: unused_element
const $EventListState = _$EventListStateTearOff();

mixin _$EventListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Event> events),
    @required Result loadFailure(EventFailure eventFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Event> events),
    Result loadFailure(EventFailure eventFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $EventListStateCopyWith<$Res> {
  factory $EventListStateCopyWith(
          EventListState value, $Res Function(EventListState) then) =
      _$EventListStateCopyWithImpl<$Res>;
}

class _$EventListStateCopyWithImpl<$Res>
    implements $EventListStateCopyWith<$Res> {
  _$EventListStateCopyWithImpl(this._value, this._then);

  final EventListState _value;
  // ignore: unused_field
  final $Res Function(EventListState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$EventListStateCopyWithImpl<$Res>
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
    return 'EventListState.initial()';
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
    @required Result loadSuccess(KtList<Event> events),
    @required Result loadFailure(EventFailure eventFailure),
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
    Result loadSuccess(KtList<Event> events),
    Result loadFailure(EventFailure eventFailure),
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
    @required Result loadInProgress(DataTransferInProgress value),
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
    Result loadInProgress(DataTransferInProgress value),
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

abstract class Initial implements EventListState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$EventListStateCopyWithImpl<$Res>
    implements $DataTransferInProgressCopyWith<$Res> {
  _$DataTransferInProgressCopyWithImpl(DataTransferInProgress _value,
      $Res Function(DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as DataTransferInProgress));

  @override
  DataTransferInProgress get _value => super._value as DataTransferInProgress;
}

class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'EventListState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Event> events),
    @required Result loadFailure(EventFailure eventFailure),
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
    Result loadSuccess(KtList<Event> events),
    Result loadFailure(EventFailure eventFailure),
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
    @required Result loadInProgress(DataTransferInProgress value),
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
    Result loadInProgress(DataTransferInProgress value),
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

abstract class DataTransferInProgress implements EventListState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Event> events});
}

class _$LoadSuccessCopyWithImpl<$Res> extends _$EventListStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object events = freezed,
  }) {
    return _then(LoadSuccess(
      events == freezed ? _value.events : events as KtList<Event>,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.events) : assert(events != null);

  @override
  final KtList<Event> events;

  @override
  String toString() {
    return 'EventListState.loadSuccess(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.events, events) ||
                const DeepCollectionEquality().equals(other.events, events)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(events);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Event> events),
    @required Result loadFailure(EventFailure eventFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(events);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Event> events),
    Result loadFailure(EventFailure eventFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
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
    Result loadInProgress(DataTransferInProgress value),
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

abstract class LoadSuccess implements EventListState {
  const factory LoadSuccess(KtList<Event> events) = _$LoadSuccess;

  KtList<Event> get events;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({EventFailure eventFailure});

  $EventFailureCopyWith<$Res> get eventFailure;
}

class _$LoadFailureCopyWithImpl<$Res> extends _$EventListStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object eventFailure = freezed,
  }) {
    return _then(LoadFailure(
      eventFailure == freezed
          ? _value.eventFailure
          : eventFailure as EventFailure,
    ));
  }

  @override
  $EventFailureCopyWith<$Res> get eventFailure {
    if (_value.eventFailure == null) {
      return null;
    }
    return $EventFailureCopyWith<$Res>(_value.eventFailure, (value) {
      return _then(_value.copyWith(eventFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.eventFailure) : assert(eventFailure != null);

  @override
  final EventFailure eventFailure;

  @override
  String toString() {
    return 'EventListState.loadFailure(eventFailure: $eventFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.eventFailure, eventFailure) ||
                const DeepCollectionEquality()
                    .equals(other.eventFailure, eventFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(eventFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Event> events),
    @required Result loadFailure(EventFailure eventFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(eventFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Event> events),
    Result loadFailure(EventFailure eventFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(eventFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
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
    Result loadInProgress(DataTransferInProgress value),
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

abstract class LoadFailure implements EventListState {
  const factory LoadFailure(EventFailure eventFailure) = _$LoadFailure;

  EventFailure get eventFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
