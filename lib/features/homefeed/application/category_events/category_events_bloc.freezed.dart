// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'category_events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CategoryEventsEventTearOff {
  const _$CategoryEventsEventTearOff();

  GetData getData(String currentUserID, String documentName) {
    return GetData(
      currentUserID,
      documentName,
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
const $CategoryEventsEvent = _$CategoryEventsEventTearOff();

mixin _$CategoryEventsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String currentUserID, String documentName),
    @required
        Result eventsReceived(
            Either<EventFailure, KtList<Event>> failureOrNotes),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String currentUserID, String documentName),
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

abstract class $CategoryEventsEventCopyWith<$Res> {
  factory $CategoryEventsEventCopyWith(
          CategoryEventsEvent value, $Res Function(CategoryEventsEvent) then) =
      _$CategoryEventsEventCopyWithImpl<$Res>;
}

class _$CategoryEventsEventCopyWithImpl<$Res>
    implements $CategoryEventsEventCopyWith<$Res> {
  _$CategoryEventsEventCopyWithImpl(this._value, this._then);

  final CategoryEventsEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryEventsEvent) _then;
}

abstract class $GetDataCopyWith<$Res> {
  factory $GetDataCopyWith(GetData value, $Res Function(GetData) then) =
      _$GetDataCopyWithImpl<$Res>;
  $Res call({String currentUserID, String documentName});
}

class _$GetDataCopyWithImpl<$Res>
    extends _$CategoryEventsEventCopyWithImpl<$Res>
    implements $GetDataCopyWith<$Res> {
  _$GetDataCopyWithImpl(GetData _value, $Res Function(GetData) _then)
      : super(_value, (v) => _then(v as GetData));

  @override
  GetData get _value => super._value as GetData;

  @override
  $Res call({
    Object currentUserID = freezed,
    Object documentName = freezed,
  }) {
    return _then(GetData(
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
      documentName == freezed ? _value.documentName : documentName as String,
    ));
  }
}

class _$GetData implements GetData {
  const _$GetData(this.currentUserID, this.documentName)
      : assert(currentUserID != null),
        assert(documentName != null);

  @override
  final String currentUserID;
  @override
  final String documentName;

  @override
  String toString() {
    return 'CategoryEventsEvent.getData(currentUserID: $currentUserID, documentName: $documentName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetData &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)) &&
            (identical(other.documentName, documentName) ||
                const DeepCollectionEquality()
                    .equals(other.documentName, documentName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentUserID) ^
      const DeepCollectionEquality().hash(documentName);

  @override
  $GetDataCopyWith<GetData> get copyWith =>
      _$GetDataCopyWithImpl<GetData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String currentUserID, String documentName),
    @required
        Result eventsReceived(
            Either<EventFailure, KtList<Event>> failureOrNotes),
  }) {
    assert(getData != null);
    assert(eventsReceived != null);
    return getData(currentUserID, documentName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String currentUserID, String documentName),
    Result eventsReceived(Either<EventFailure, KtList<Event>> failureOrNotes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(currentUserID, documentName);
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

abstract class GetData implements CategoryEventsEvent {
  const factory GetData(String currentUserID, String documentName) = _$GetData;

  String get currentUserID;
  String get documentName;
  $GetDataCopyWith<GetData> get copyWith;
}

abstract class _$EventsReceivedCopyWith<$Res> {
  factory _$EventsReceivedCopyWith(
          _EventsReceived value, $Res Function(_EventsReceived) then) =
      __$EventsReceivedCopyWithImpl<$Res>;
  $Res call({Either<EventFailure, KtList<Event>> failureOrNotes});
}

class __$EventsReceivedCopyWithImpl<$Res>
    extends _$CategoryEventsEventCopyWithImpl<$Res>
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
    return 'CategoryEventsEvent.eventsReceived(failureOrNotes: $failureOrNotes)';
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
    @required Result getData(String currentUserID, String documentName),
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
    Result getData(String currentUserID, String documentName),
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

abstract class _EventsReceived implements CategoryEventsEvent {
  const factory _EventsReceived(
      Either<EventFailure, KtList<Event>> failureOrNotes) = _$_EventsReceived;

  Either<EventFailure, KtList<Event>> get failureOrNotes;
  _$EventsReceivedCopyWith<_EventsReceived> get copyWith;
}

class _$CategoryEventsStateTearOff {
  const _$CategoryEventsStateTearOff();

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
const $CategoryEventsState = _$CategoryEventsStateTearOff();

mixin _$CategoryEventsState {
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

abstract class $CategoryEventsStateCopyWith<$Res> {
  factory $CategoryEventsStateCopyWith(
          CategoryEventsState value, $Res Function(CategoryEventsState) then) =
      _$CategoryEventsStateCopyWithImpl<$Res>;
}

class _$CategoryEventsStateCopyWithImpl<$Res>
    implements $CategoryEventsStateCopyWith<$Res> {
  _$CategoryEventsStateCopyWithImpl(this._value, this._then);

  final CategoryEventsState _value;
  // ignore: unused_field
  final $Res Function(CategoryEventsState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$CategoryEventsStateCopyWithImpl<$Res>
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
    return 'CategoryEventsState.initial()';
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

abstract class Initial implements CategoryEventsState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$CategoryEventsStateCopyWithImpl<$Res>
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
    return 'CategoryEventsState.loadInProgress()';
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

abstract class DataTransferInProgress implements CategoryEventsState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Event> events});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$CategoryEventsStateCopyWithImpl<$Res>
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
    return 'CategoryEventsState.loadSuccess(events: $events)';
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

abstract class LoadSuccess implements CategoryEventsState {
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

class _$LoadFailureCopyWithImpl<$Res>
    extends _$CategoryEventsStateCopyWithImpl<$Res>
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
    return 'CategoryEventsState.loadFailure(eventFailure: $eventFailure)';
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

abstract class LoadFailure implements CategoryEventsState {
  const factory LoadFailure(EventFailure eventFailure) = _$LoadFailure;

  EventFailure get eventFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
