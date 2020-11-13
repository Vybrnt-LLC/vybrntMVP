// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'create_event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreateEventEventTearOff {
  const _$CreateEventEventTearOff();

  _Initialized initialized(
      Option<Event> initialEventOption, String currentUserID) {
    return _Initialized(
      initialEventOption,
      currentUserID,
    );
  }

  _AdminReceived adminReceived(KtList<String> admins, String currentUserID) {
    return _AdminReceived(
      admins,
      currentUserID,
    );
  }

  _EventNameChanged eventNameChanged(String eventName) {
    return _EventNameChanged(
      eventName,
    );
  }

  _StartTimeChanged startTimeChanged(DateTime startTime) {
    return _StartTimeChanged(
      startTime,
    );
  }

  _EndTimeChanged endTimeChanged(DateTime endTime) {
    return _EndTimeChanged(
      endTime,
    );
  }

  _EventImageUrlChanged eventImageUrlChanged(File image) {
    return _EventImageUrlChanged(
      image,
    );
  }

  _EventUrlChanged eventUrlChanged(String eventUrl) {
    return _EventUrlChanged(
      eventUrl,
    );
  }

  _EventCaptionChanged eventCaptionChanged(String eventCaption) {
    return _EventCaptionChanged(
      eventCaption,
    );
  }

  _EventLocationChanged eventLocationChanged(String eventLocation) {
    return _EventLocationChanged(
      eventLocation,
    );
  }

  _IdChanged idChanged(String id, String currentUserID) {
    return _IdChanged(
      id,
      currentUserID,
    );
  }

  _CategoryChanged categoryChanged(String category) {
    return _CategoryChanged(
      category,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

// ignore: unused_element
const $CreateEventEvent = _$CreateEventEventTearOff();

mixin _$CreateEventEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Event> initialEventOption, String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result eventNameChanged(String eventName),
    @required Result startTimeChanged(DateTime startTime),
    @required Result endTimeChanged(DateTime endTime),
    @required Result eventImageUrlChanged(File image),
    @required Result eventUrlChanged(String eventUrl),
    @required Result eventCaptionChanged(String eventCaption),
    @required Result eventLocationChanged(String eventLocation),
    @required Result idChanged(String id, String currentUserID),
    @required Result categoryChanged(String category),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Event> initialEventOption, String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result eventNameChanged(String eventName),
    Result startTimeChanged(DateTime startTime),
    Result endTimeChanged(DateTime endTime),
    Result eventImageUrlChanged(File image),
    Result eventUrlChanged(String eventUrl),
    Result eventCaptionChanged(String eventCaption),
    Result eventLocationChanged(String eventLocation),
    Result idChanged(String id, String currentUserID),
    Result categoryChanged(String category),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result eventNameChanged(_EventNameChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endTimeChanged(_EndTimeChanged value),
    @required Result eventImageUrlChanged(_EventImageUrlChanged value),
    @required Result eventUrlChanged(_EventUrlChanged value),
    @required Result eventCaptionChanged(_EventCaptionChanged value),
    @required Result eventLocationChanged(_EventLocationChanged value),
    @required Result idChanged(_IdChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result eventNameChanged(_EventNameChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endTimeChanged(_EndTimeChanged value),
    Result eventImageUrlChanged(_EventImageUrlChanged value),
    Result eventUrlChanged(_EventUrlChanged value),
    Result eventCaptionChanged(_EventCaptionChanged value),
    Result eventLocationChanged(_EventLocationChanged value),
    Result idChanged(_IdChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $CreateEventEventCopyWith<$Res> {
  factory $CreateEventEventCopyWith(
          CreateEventEvent value, $Res Function(CreateEventEvent) then) =
      _$CreateEventEventCopyWithImpl<$Res>;
}

class _$CreateEventEventCopyWithImpl<$Res>
    implements $CreateEventEventCopyWith<$Res> {
  _$CreateEventEventCopyWithImpl(this._value, this._then);

  final CreateEventEvent _value;
  // ignore: unused_field
  final $Res Function(CreateEventEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Event> initialEventOption, String currentUserID});
}

class __$InitializedCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialEventOption = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(_Initialized(
      initialEventOption == freezed
          ? _value.initialEventOption
          : initialEventOption as Option<Event>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialEventOption, this.currentUserID)
      : assert(initialEventOption != null),
        assert(currentUserID != null);

  @override
  final Option<Event> initialEventOption;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'CreateEventEvent.initialized(initialEventOption: $initialEventOption, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialEventOption, initialEventOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialEventOption, initialEventOption)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialEventOption) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Event> initialEventOption, String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result eventNameChanged(String eventName),
    @required Result startTimeChanged(DateTime startTime),
    @required Result endTimeChanged(DateTime endTime),
    @required Result eventImageUrlChanged(File image),
    @required Result eventUrlChanged(String eventUrl),
    @required Result eventCaptionChanged(String eventCaption),
    @required Result eventLocationChanged(String eventLocation),
    @required Result idChanged(String id, String currentUserID),
    @required Result categoryChanged(String category),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return initialized(initialEventOption, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Event> initialEventOption, String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result eventNameChanged(String eventName),
    Result startTimeChanged(DateTime startTime),
    Result endTimeChanged(DateTime endTime),
    Result eventImageUrlChanged(File image),
    Result eventUrlChanged(String eventUrl),
    Result eventCaptionChanged(String eventCaption),
    Result eventLocationChanged(String eventLocation),
    Result idChanged(String id, String currentUserID),
    Result categoryChanged(String category),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialEventOption, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result eventNameChanged(_EventNameChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endTimeChanged(_EndTimeChanged value),
    @required Result eventImageUrlChanged(_EventImageUrlChanged value),
    @required Result eventUrlChanged(_EventUrlChanged value),
    @required Result eventCaptionChanged(_EventCaptionChanged value),
    @required Result eventLocationChanged(_EventLocationChanged value),
    @required Result idChanged(_IdChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result eventNameChanged(_EventNameChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endTimeChanged(_EndTimeChanged value),
    Result eventImageUrlChanged(_EventImageUrlChanged value),
    Result eventUrlChanged(_EventUrlChanged value),
    Result eventCaptionChanged(_EventCaptionChanged value),
    Result eventLocationChanged(_EventLocationChanged value),
    Result idChanged(_IdChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CreateEventEvent {
  const factory _Initialized(
      Option<Event> initialEventOption, String currentUserID) = _$_Initialized;

  Option<Event> get initialEventOption;
  String get currentUserID;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$AdminReceivedCopyWith<$Res> {
  factory _$AdminReceivedCopyWith(
          _AdminReceived value, $Res Function(_AdminReceived) then) =
      __$AdminReceivedCopyWithImpl<$Res>;
  $Res call({KtList<String> admins, String currentUserID});
}

class __$AdminReceivedCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res>
    implements _$AdminReceivedCopyWith<$Res> {
  __$AdminReceivedCopyWithImpl(
      _AdminReceived _value, $Res Function(_AdminReceived) _then)
      : super(_value, (v) => _then(v as _AdminReceived));

  @override
  _AdminReceived get _value => super._value as _AdminReceived;

  @override
  $Res call({
    Object admins = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(_AdminReceived(
      admins == freezed ? _value.admins : admins as KtList<String>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$_AdminReceived implements _AdminReceived {
  const _$_AdminReceived(this.admins, this.currentUserID)
      : assert(admins != null),
        assert(currentUserID != null);

  @override
  final KtList<String> admins;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'CreateEventEvent.adminReceived(admins: $admins, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdminReceived &&
            (identical(other.admins, admins) ||
                const DeepCollectionEquality().equals(other.admins, admins)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(admins) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  _$AdminReceivedCopyWith<_AdminReceived> get copyWith =>
      __$AdminReceivedCopyWithImpl<_AdminReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Event> initialEventOption, String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result eventNameChanged(String eventName),
    @required Result startTimeChanged(DateTime startTime),
    @required Result endTimeChanged(DateTime endTime),
    @required Result eventImageUrlChanged(File image),
    @required Result eventUrlChanged(String eventUrl),
    @required Result eventCaptionChanged(String eventCaption),
    @required Result eventLocationChanged(String eventLocation),
    @required Result idChanged(String id, String currentUserID),
    @required Result categoryChanged(String category),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return adminReceived(admins, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Event> initialEventOption, String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result eventNameChanged(String eventName),
    Result startTimeChanged(DateTime startTime),
    Result endTimeChanged(DateTime endTime),
    Result eventImageUrlChanged(File image),
    Result eventUrlChanged(String eventUrl),
    Result eventCaptionChanged(String eventCaption),
    Result eventLocationChanged(String eventLocation),
    Result idChanged(String id, String currentUserID),
    Result categoryChanged(String category),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (adminReceived != null) {
      return adminReceived(admins, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result eventNameChanged(_EventNameChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endTimeChanged(_EndTimeChanged value),
    @required Result eventImageUrlChanged(_EventImageUrlChanged value),
    @required Result eventUrlChanged(_EventUrlChanged value),
    @required Result eventCaptionChanged(_EventCaptionChanged value),
    @required Result eventLocationChanged(_EventLocationChanged value),
    @required Result idChanged(_IdChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return adminReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result eventNameChanged(_EventNameChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endTimeChanged(_EndTimeChanged value),
    Result eventImageUrlChanged(_EventImageUrlChanged value),
    Result eventUrlChanged(_EventUrlChanged value),
    Result eventCaptionChanged(_EventCaptionChanged value),
    Result eventLocationChanged(_EventLocationChanged value),
    Result idChanged(_IdChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (adminReceived != null) {
      return adminReceived(this);
    }
    return orElse();
  }
}

abstract class _AdminReceived implements CreateEventEvent {
  const factory _AdminReceived(KtList<String> admins, String currentUserID) =
      _$_AdminReceived;

  KtList<String> get admins;
  String get currentUserID;
  _$AdminReceivedCopyWith<_AdminReceived> get copyWith;
}

abstract class _$EventNameChangedCopyWith<$Res> {
  factory _$EventNameChangedCopyWith(
          _EventNameChanged value, $Res Function(_EventNameChanged) then) =
      __$EventNameChangedCopyWithImpl<$Res>;
  $Res call({String eventName});
}

class __$EventNameChangedCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res>
    implements _$EventNameChangedCopyWith<$Res> {
  __$EventNameChangedCopyWithImpl(
      _EventNameChanged _value, $Res Function(_EventNameChanged) _then)
      : super(_value, (v) => _then(v as _EventNameChanged));

  @override
  _EventNameChanged get _value => super._value as _EventNameChanged;

  @override
  $Res call({
    Object eventName = freezed,
  }) {
    return _then(_EventNameChanged(
      eventName == freezed ? _value.eventName : eventName as String,
    ));
  }
}

class _$_EventNameChanged implements _EventNameChanged {
  const _$_EventNameChanged(this.eventName) : assert(eventName != null);

  @override
  final String eventName;

  @override
  String toString() {
    return 'CreateEventEvent.eventNameChanged(eventName: $eventName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventNameChanged &&
            (identical(other.eventName, eventName) ||
                const DeepCollectionEquality()
                    .equals(other.eventName, eventName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(eventName);

  @override
  _$EventNameChangedCopyWith<_EventNameChanged> get copyWith =>
      __$EventNameChangedCopyWithImpl<_EventNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Event> initialEventOption, String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result eventNameChanged(String eventName),
    @required Result startTimeChanged(DateTime startTime),
    @required Result endTimeChanged(DateTime endTime),
    @required Result eventImageUrlChanged(File image),
    @required Result eventUrlChanged(String eventUrl),
    @required Result eventCaptionChanged(String eventCaption),
    @required Result eventLocationChanged(String eventLocation),
    @required Result idChanged(String id, String currentUserID),
    @required Result categoryChanged(String category),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return eventNameChanged(eventName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Event> initialEventOption, String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result eventNameChanged(String eventName),
    Result startTimeChanged(DateTime startTime),
    Result endTimeChanged(DateTime endTime),
    Result eventImageUrlChanged(File image),
    Result eventUrlChanged(String eventUrl),
    Result eventCaptionChanged(String eventCaption),
    Result eventLocationChanged(String eventLocation),
    Result idChanged(String id, String currentUserID),
    Result categoryChanged(String category),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eventNameChanged != null) {
      return eventNameChanged(eventName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result eventNameChanged(_EventNameChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endTimeChanged(_EndTimeChanged value),
    @required Result eventImageUrlChanged(_EventImageUrlChanged value),
    @required Result eventUrlChanged(_EventUrlChanged value),
    @required Result eventCaptionChanged(_EventCaptionChanged value),
    @required Result eventLocationChanged(_EventLocationChanged value),
    @required Result idChanged(_IdChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return eventNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result eventNameChanged(_EventNameChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endTimeChanged(_EndTimeChanged value),
    Result eventImageUrlChanged(_EventImageUrlChanged value),
    Result eventUrlChanged(_EventUrlChanged value),
    Result eventCaptionChanged(_EventCaptionChanged value),
    Result eventLocationChanged(_EventLocationChanged value),
    Result idChanged(_IdChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eventNameChanged != null) {
      return eventNameChanged(this);
    }
    return orElse();
  }
}

abstract class _EventNameChanged implements CreateEventEvent {
  const factory _EventNameChanged(String eventName) = _$_EventNameChanged;

  String get eventName;
  _$EventNameChangedCopyWith<_EventNameChanged> get copyWith;
}

abstract class _$StartTimeChangedCopyWith<$Res> {
  factory _$StartTimeChangedCopyWith(
          _StartTimeChanged value, $Res Function(_StartTimeChanged) then) =
      __$StartTimeChangedCopyWithImpl<$Res>;
  $Res call({DateTime startTime});
}

class __$StartTimeChangedCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res>
    implements _$StartTimeChangedCopyWith<$Res> {
  __$StartTimeChangedCopyWithImpl(
      _StartTimeChanged _value, $Res Function(_StartTimeChanged) _then)
      : super(_value, (v) => _then(v as _StartTimeChanged));

  @override
  _StartTimeChanged get _value => super._value as _StartTimeChanged;

  @override
  $Res call({
    Object startTime = freezed,
  }) {
    return _then(_StartTimeChanged(
      startTime == freezed ? _value.startTime : startTime as DateTime,
    ));
  }
}

class _$_StartTimeChanged implements _StartTimeChanged {
  const _$_StartTimeChanged(this.startTime) : assert(startTime != null);

  @override
  final DateTime startTime;

  @override
  String toString() {
    return 'CreateEventEvent.startTimeChanged(startTime: $startTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartTimeChanged &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(startTime);

  @override
  _$StartTimeChangedCopyWith<_StartTimeChanged> get copyWith =>
      __$StartTimeChangedCopyWithImpl<_StartTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Event> initialEventOption, String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result eventNameChanged(String eventName),
    @required Result startTimeChanged(DateTime startTime),
    @required Result endTimeChanged(DateTime endTime),
    @required Result eventImageUrlChanged(File image),
    @required Result eventUrlChanged(String eventUrl),
    @required Result eventCaptionChanged(String eventCaption),
    @required Result eventLocationChanged(String eventLocation),
    @required Result idChanged(String id, String currentUserID),
    @required Result categoryChanged(String category),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return startTimeChanged(startTime);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Event> initialEventOption, String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result eventNameChanged(String eventName),
    Result startTimeChanged(DateTime startTime),
    Result endTimeChanged(DateTime endTime),
    Result eventImageUrlChanged(File image),
    Result eventUrlChanged(String eventUrl),
    Result eventCaptionChanged(String eventCaption),
    Result eventLocationChanged(String eventLocation),
    Result idChanged(String id, String currentUserID),
    Result categoryChanged(String category),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startTimeChanged != null) {
      return startTimeChanged(startTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result eventNameChanged(_EventNameChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endTimeChanged(_EndTimeChanged value),
    @required Result eventImageUrlChanged(_EventImageUrlChanged value),
    @required Result eventUrlChanged(_EventUrlChanged value),
    @required Result eventCaptionChanged(_EventCaptionChanged value),
    @required Result eventLocationChanged(_EventLocationChanged value),
    @required Result idChanged(_IdChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return startTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result eventNameChanged(_EventNameChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endTimeChanged(_EndTimeChanged value),
    Result eventImageUrlChanged(_EventImageUrlChanged value),
    Result eventUrlChanged(_EventUrlChanged value),
    Result eventCaptionChanged(_EventCaptionChanged value),
    Result eventLocationChanged(_EventLocationChanged value),
    Result idChanged(_IdChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startTimeChanged != null) {
      return startTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _StartTimeChanged implements CreateEventEvent {
  const factory _StartTimeChanged(DateTime startTime) = _$_StartTimeChanged;

  DateTime get startTime;
  _$StartTimeChangedCopyWith<_StartTimeChanged> get copyWith;
}

abstract class _$EndTimeChangedCopyWith<$Res> {
  factory _$EndTimeChangedCopyWith(
          _EndTimeChanged value, $Res Function(_EndTimeChanged) then) =
      __$EndTimeChangedCopyWithImpl<$Res>;
  $Res call({DateTime endTime});
}

class __$EndTimeChangedCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res>
    implements _$EndTimeChangedCopyWith<$Res> {
  __$EndTimeChangedCopyWithImpl(
      _EndTimeChanged _value, $Res Function(_EndTimeChanged) _then)
      : super(_value, (v) => _then(v as _EndTimeChanged));

  @override
  _EndTimeChanged get _value => super._value as _EndTimeChanged;

  @override
  $Res call({
    Object endTime = freezed,
  }) {
    return _then(_EndTimeChanged(
      endTime == freezed ? _value.endTime : endTime as DateTime,
    ));
  }
}

class _$_EndTimeChanged implements _EndTimeChanged {
  const _$_EndTimeChanged(this.endTime) : assert(endTime != null);

  @override
  final DateTime endTime;

  @override
  String toString() {
    return 'CreateEventEvent.endTimeChanged(endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EndTimeChanged &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality().equals(other.endTime, endTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(endTime);

  @override
  _$EndTimeChangedCopyWith<_EndTimeChanged> get copyWith =>
      __$EndTimeChangedCopyWithImpl<_EndTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Event> initialEventOption, String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result eventNameChanged(String eventName),
    @required Result startTimeChanged(DateTime startTime),
    @required Result endTimeChanged(DateTime endTime),
    @required Result eventImageUrlChanged(File image),
    @required Result eventUrlChanged(String eventUrl),
    @required Result eventCaptionChanged(String eventCaption),
    @required Result eventLocationChanged(String eventLocation),
    @required Result idChanged(String id, String currentUserID),
    @required Result categoryChanged(String category),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return endTimeChanged(endTime);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Event> initialEventOption, String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result eventNameChanged(String eventName),
    Result startTimeChanged(DateTime startTime),
    Result endTimeChanged(DateTime endTime),
    Result eventImageUrlChanged(File image),
    Result eventUrlChanged(String eventUrl),
    Result eventCaptionChanged(String eventCaption),
    Result eventLocationChanged(String eventLocation),
    Result idChanged(String id, String currentUserID),
    Result categoryChanged(String category),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (endTimeChanged != null) {
      return endTimeChanged(endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result eventNameChanged(_EventNameChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endTimeChanged(_EndTimeChanged value),
    @required Result eventImageUrlChanged(_EventImageUrlChanged value),
    @required Result eventUrlChanged(_EventUrlChanged value),
    @required Result eventCaptionChanged(_EventCaptionChanged value),
    @required Result eventLocationChanged(_EventLocationChanged value),
    @required Result idChanged(_IdChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return endTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result eventNameChanged(_EventNameChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endTimeChanged(_EndTimeChanged value),
    Result eventImageUrlChanged(_EventImageUrlChanged value),
    Result eventUrlChanged(_EventUrlChanged value),
    Result eventCaptionChanged(_EventCaptionChanged value),
    Result eventLocationChanged(_EventLocationChanged value),
    Result idChanged(_IdChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (endTimeChanged != null) {
      return endTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _EndTimeChanged implements CreateEventEvent {
  const factory _EndTimeChanged(DateTime endTime) = _$_EndTimeChanged;

  DateTime get endTime;
  _$EndTimeChangedCopyWith<_EndTimeChanged> get copyWith;
}

abstract class _$EventImageUrlChangedCopyWith<$Res> {
  factory _$EventImageUrlChangedCopyWith(_EventImageUrlChanged value,
          $Res Function(_EventImageUrlChanged) then) =
      __$EventImageUrlChangedCopyWithImpl<$Res>;
  $Res call({File image});
}

class __$EventImageUrlChangedCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res>
    implements _$EventImageUrlChangedCopyWith<$Res> {
  __$EventImageUrlChangedCopyWithImpl(
      _EventImageUrlChanged _value, $Res Function(_EventImageUrlChanged) _then)
      : super(_value, (v) => _then(v as _EventImageUrlChanged));

  @override
  _EventImageUrlChanged get _value => super._value as _EventImageUrlChanged;

  @override
  $Res call({
    Object image = freezed,
  }) {
    return _then(_EventImageUrlChanged(
      image == freezed ? _value.image : image as File,
    ));
  }
}

class _$_EventImageUrlChanged implements _EventImageUrlChanged {
  const _$_EventImageUrlChanged(this.image) : assert(image != null);

  @override
  final File image;

  @override
  String toString() {
    return 'CreateEventEvent.eventImageUrlChanged(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventImageUrlChanged &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @override
  _$EventImageUrlChangedCopyWith<_EventImageUrlChanged> get copyWith =>
      __$EventImageUrlChangedCopyWithImpl<_EventImageUrlChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Event> initialEventOption, String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result eventNameChanged(String eventName),
    @required Result startTimeChanged(DateTime startTime),
    @required Result endTimeChanged(DateTime endTime),
    @required Result eventImageUrlChanged(File image),
    @required Result eventUrlChanged(String eventUrl),
    @required Result eventCaptionChanged(String eventCaption),
    @required Result eventLocationChanged(String eventLocation),
    @required Result idChanged(String id, String currentUserID),
    @required Result categoryChanged(String category),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return eventImageUrlChanged(image);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Event> initialEventOption, String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result eventNameChanged(String eventName),
    Result startTimeChanged(DateTime startTime),
    Result endTimeChanged(DateTime endTime),
    Result eventImageUrlChanged(File image),
    Result eventUrlChanged(String eventUrl),
    Result eventCaptionChanged(String eventCaption),
    Result eventLocationChanged(String eventLocation),
    Result idChanged(String id, String currentUserID),
    Result categoryChanged(String category),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eventImageUrlChanged != null) {
      return eventImageUrlChanged(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result eventNameChanged(_EventNameChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endTimeChanged(_EndTimeChanged value),
    @required Result eventImageUrlChanged(_EventImageUrlChanged value),
    @required Result eventUrlChanged(_EventUrlChanged value),
    @required Result eventCaptionChanged(_EventCaptionChanged value),
    @required Result eventLocationChanged(_EventLocationChanged value),
    @required Result idChanged(_IdChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return eventImageUrlChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result eventNameChanged(_EventNameChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endTimeChanged(_EndTimeChanged value),
    Result eventImageUrlChanged(_EventImageUrlChanged value),
    Result eventUrlChanged(_EventUrlChanged value),
    Result eventCaptionChanged(_EventCaptionChanged value),
    Result eventLocationChanged(_EventLocationChanged value),
    Result idChanged(_IdChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eventImageUrlChanged != null) {
      return eventImageUrlChanged(this);
    }
    return orElse();
  }
}

abstract class _EventImageUrlChanged implements CreateEventEvent {
  const factory _EventImageUrlChanged(File image) = _$_EventImageUrlChanged;

  File get image;
  _$EventImageUrlChangedCopyWith<_EventImageUrlChanged> get copyWith;
}

abstract class _$EventUrlChangedCopyWith<$Res> {
  factory _$EventUrlChangedCopyWith(
          _EventUrlChanged value, $Res Function(_EventUrlChanged) then) =
      __$EventUrlChangedCopyWithImpl<$Res>;
  $Res call({String eventUrl});
}

class __$EventUrlChangedCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res>
    implements _$EventUrlChangedCopyWith<$Res> {
  __$EventUrlChangedCopyWithImpl(
      _EventUrlChanged _value, $Res Function(_EventUrlChanged) _then)
      : super(_value, (v) => _then(v as _EventUrlChanged));

  @override
  _EventUrlChanged get _value => super._value as _EventUrlChanged;

  @override
  $Res call({
    Object eventUrl = freezed,
  }) {
    return _then(_EventUrlChanged(
      eventUrl == freezed ? _value.eventUrl : eventUrl as String,
    ));
  }
}

class _$_EventUrlChanged implements _EventUrlChanged {
  const _$_EventUrlChanged(this.eventUrl) : assert(eventUrl != null);

  @override
  final String eventUrl;

  @override
  String toString() {
    return 'CreateEventEvent.eventUrlChanged(eventUrl: $eventUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventUrlChanged &&
            (identical(other.eventUrl, eventUrl) ||
                const DeepCollectionEquality()
                    .equals(other.eventUrl, eventUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(eventUrl);

  @override
  _$EventUrlChangedCopyWith<_EventUrlChanged> get copyWith =>
      __$EventUrlChangedCopyWithImpl<_EventUrlChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Event> initialEventOption, String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result eventNameChanged(String eventName),
    @required Result startTimeChanged(DateTime startTime),
    @required Result endTimeChanged(DateTime endTime),
    @required Result eventImageUrlChanged(File image),
    @required Result eventUrlChanged(String eventUrl),
    @required Result eventCaptionChanged(String eventCaption),
    @required Result eventLocationChanged(String eventLocation),
    @required Result idChanged(String id, String currentUserID),
    @required Result categoryChanged(String category),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return eventUrlChanged(eventUrl);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Event> initialEventOption, String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result eventNameChanged(String eventName),
    Result startTimeChanged(DateTime startTime),
    Result endTimeChanged(DateTime endTime),
    Result eventImageUrlChanged(File image),
    Result eventUrlChanged(String eventUrl),
    Result eventCaptionChanged(String eventCaption),
    Result eventLocationChanged(String eventLocation),
    Result idChanged(String id, String currentUserID),
    Result categoryChanged(String category),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eventUrlChanged != null) {
      return eventUrlChanged(eventUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result eventNameChanged(_EventNameChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endTimeChanged(_EndTimeChanged value),
    @required Result eventImageUrlChanged(_EventImageUrlChanged value),
    @required Result eventUrlChanged(_EventUrlChanged value),
    @required Result eventCaptionChanged(_EventCaptionChanged value),
    @required Result eventLocationChanged(_EventLocationChanged value),
    @required Result idChanged(_IdChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return eventUrlChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result eventNameChanged(_EventNameChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endTimeChanged(_EndTimeChanged value),
    Result eventImageUrlChanged(_EventImageUrlChanged value),
    Result eventUrlChanged(_EventUrlChanged value),
    Result eventCaptionChanged(_EventCaptionChanged value),
    Result eventLocationChanged(_EventLocationChanged value),
    Result idChanged(_IdChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eventUrlChanged != null) {
      return eventUrlChanged(this);
    }
    return orElse();
  }
}

abstract class _EventUrlChanged implements CreateEventEvent {
  const factory _EventUrlChanged(String eventUrl) = _$_EventUrlChanged;

  String get eventUrl;
  _$EventUrlChangedCopyWith<_EventUrlChanged> get copyWith;
}

abstract class _$EventCaptionChangedCopyWith<$Res> {
  factory _$EventCaptionChangedCopyWith(_EventCaptionChanged value,
          $Res Function(_EventCaptionChanged) then) =
      __$EventCaptionChangedCopyWithImpl<$Res>;
  $Res call({String eventCaption});
}

class __$EventCaptionChangedCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res>
    implements _$EventCaptionChangedCopyWith<$Res> {
  __$EventCaptionChangedCopyWithImpl(
      _EventCaptionChanged _value, $Res Function(_EventCaptionChanged) _then)
      : super(_value, (v) => _then(v as _EventCaptionChanged));

  @override
  _EventCaptionChanged get _value => super._value as _EventCaptionChanged;

  @override
  $Res call({
    Object eventCaption = freezed,
  }) {
    return _then(_EventCaptionChanged(
      eventCaption == freezed ? _value.eventCaption : eventCaption as String,
    ));
  }
}

class _$_EventCaptionChanged implements _EventCaptionChanged {
  const _$_EventCaptionChanged(this.eventCaption)
      : assert(eventCaption != null);

  @override
  final String eventCaption;

  @override
  String toString() {
    return 'CreateEventEvent.eventCaptionChanged(eventCaption: $eventCaption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventCaptionChanged &&
            (identical(other.eventCaption, eventCaption) ||
                const DeepCollectionEquality()
                    .equals(other.eventCaption, eventCaption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(eventCaption);

  @override
  _$EventCaptionChangedCopyWith<_EventCaptionChanged> get copyWith =>
      __$EventCaptionChangedCopyWithImpl<_EventCaptionChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Event> initialEventOption, String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result eventNameChanged(String eventName),
    @required Result startTimeChanged(DateTime startTime),
    @required Result endTimeChanged(DateTime endTime),
    @required Result eventImageUrlChanged(File image),
    @required Result eventUrlChanged(String eventUrl),
    @required Result eventCaptionChanged(String eventCaption),
    @required Result eventLocationChanged(String eventLocation),
    @required Result idChanged(String id, String currentUserID),
    @required Result categoryChanged(String category),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return eventCaptionChanged(eventCaption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Event> initialEventOption, String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result eventNameChanged(String eventName),
    Result startTimeChanged(DateTime startTime),
    Result endTimeChanged(DateTime endTime),
    Result eventImageUrlChanged(File image),
    Result eventUrlChanged(String eventUrl),
    Result eventCaptionChanged(String eventCaption),
    Result eventLocationChanged(String eventLocation),
    Result idChanged(String id, String currentUserID),
    Result categoryChanged(String category),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eventCaptionChanged != null) {
      return eventCaptionChanged(eventCaption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result eventNameChanged(_EventNameChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endTimeChanged(_EndTimeChanged value),
    @required Result eventImageUrlChanged(_EventImageUrlChanged value),
    @required Result eventUrlChanged(_EventUrlChanged value),
    @required Result eventCaptionChanged(_EventCaptionChanged value),
    @required Result eventLocationChanged(_EventLocationChanged value),
    @required Result idChanged(_IdChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return eventCaptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result eventNameChanged(_EventNameChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endTimeChanged(_EndTimeChanged value),
    Result eventImageUrlChanged(_EventImageUrlChanged value),
    Result eventUrlChanged(_EventUrlChanged value),
    Result eventCaptionChanged(_EventCaptionChanged value),
    Result eventLocationChanged(_EventLocationChanged value),
    Result idChanged(_IdChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eventCaptionChanged != null) {
      return eventCaptionChanged(this);
    }
    return orElse();
  }
}

abstract class _EventCaptionChanged implements CreateEventEvent {
  const factory _EventCaptionChanged(String eventCaption) =
      _$_EventCaptionChanged;

  String get eventCaption;
  _$EventCaptionChangedCopyWith<_EventCaptionChanged> get copyWith;
}

abstract class _$EventLocationChangedCopyWith<$Res> {
  factory _$EventLocationChangedCopyWith(_EventLocationChanged value,
          $Res Function(_EventLocationChanged) then) =
      __$EventLocationChangedCopyWithImpl<$Res>;
  $Res call({String eventLocation});
}

class __$EventLocationChangedCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res>
    implements _$EventLocationChangedCopyWith<$Res> {
  __$EventLocationChangedCopyWithImpl(
      _EventLocationChanged _value, $Res Function(_EventLocationChanged) _then)
      : super(_value, (v) => _then(v as _EventLocationChanged));

  @override
  _EventLocationChanged get _value => super._value as _EventLocationChanged;

  @override
  $Res call({
    Object eventLocation = freezed,
  }) {
    return _then(_EventLocationChanged(
      eventLocation == freezed ? _value.eventLocation : eventLocation as String,
    ));
  }
}

class _$_EventLocationChanged implements _EventLocationChanged {
  const _$_EventLocationChanged(this.eventLocation)
      : assert(eventLocation != null);

  @override
  final String eventLocation;

  @override
  String toString() {
    return 'CreateEventEvent.eventLocationChanged(eventLocation: $eventLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventLocationChanged &&
            (identical(other.eventLocation, eventLocation) ||
                const DeepCollectionEquality()
                    .equals(other.eventLocation, eventLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(eventLocation);

  @override
  _$EventLocationChangedCopyWith<_EventLocationChanged> get copyWith =>
      __$EventLocationChangedCopyWithImpl<_EventLocationChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Event> initialEventOption, String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result eventNameChanged(String eventName),
    @required Result startTimeChanged(DateTime startTime),
    @required Result endTimeChanged(DateTime endTime),
    @required Result eventImageUrlChanged(File image),
    @required Result eventUrlChanged(String eventUrl),
    @required Result eventCaptionChanged(String eventCaption),
    @required Result eventLocationChanged(String eventLocation),
    @required Result idChanged(String id, String currentUserID),
    @required Result categoryChanged(String category),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return eventLocationChanged(eventLocation);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Event> initialEventOption, String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result eventNameChanged(String eventName),
    Result startTimeChanged(DateTime startTime),
    Result endTimeChanged(DateTime endTime),
    Result eventImageUrlChanged(File image),
    Result eventUrlChanged(String eventUrl),
    Result eventCaptionChanged(String eventCaption),
    Result eventLocationChanged(String eventLocation),
    Result idChanged(String id, String currentUserID),
    Result categoryChanged(String category),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eventLocationChanged != null) {
      return eventLocationChanged(eventLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result eventNameChanged(_EventNameChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endTimeChanged(_EndTimeChanged value),
    @required Result eventImageUrlChanged(_EventImageUrlChanged value),
    @required Result eventUrlChanged(_EventUrlChanged value),
    @required Result eventCaptionChanged(_EventCaptionChanged value),
    @required Result eventLocationChanged(_EventLocationChanged value),
    @required Result idChanged(_IdChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return eventLocationChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result eventNameChanged(_EventNameChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endTimeChanged(_EndTimeChanged value),
    Result eventImageUrlChanged(_EventImageUrlChanged value),
    Result eventUrlChanged(_EventUrlChanged value),
    Result eventCaptionChanged(_EventCaptionChanged value),
    Result eventLocationChanged(_EventLocationChanged value),
    Result idChanged(_IdChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eventLocationChanged != null) {
      return eventLocationChanged(this);
    }
    return orElse();
  }
}

abstract class _EventLocationChanged implements CreateEventEvent {
  const factory _EventLocationChanged(String eventLocation) =
      _$_EventLocationChanged;

  String get eventLocation;
  _$EventLocationChangedCopyWith<_EventLocationChanged> get copyWith;
}

abstract class _$IdChangedCopyWith<$Res> {
  factory _$IdChangedCopyWith(
          _IdChanged value, $Res Function(_IdChanged) then) =
      __$IdChangedCopyWithImpl<$Res>;
  $Res call({String id, String currentUserID});
}

class __$IdChangedCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res>
    implements _$IdChangedCopyWith<$Res> {
  __$IdChangedCopyWithImpl(_IdChanged _value, $Res Function(_IdChanged) _then)
      : super(_value, (v) => _then(v as _IdChanged));

  @override
  _IdChanged get _value => super._value as _IdChanged;

  @override
  $Res call({
    Object id = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(_IdChanged(
      id == freezed ? _value.id : id as String,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$_IdChanged implements _IdChanged {
  const _$_IdChanged(this.id, this.currentUserID)
      : assert(id != null),
        assert(currentUserID != null);

  @override
  final String id;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'CreateEventEvent.idChanged(id: $id, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IdChanged &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  _$IdChangedCopyWith<_IdChanged> get copyWith =>
      __$IdChangedCopyWithImpl<_IdChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Event> initialEventOption, String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result eventNameChanged(String eventName),
    @required Result startTimeChanged(DateTime startTime),
    @required Result endTimeChanged(DateTime endTime),
    @required Result eventImageUrlChanged(File image),
    @required Result eventUrlChanged(String eventUrl),
    @required Result eventCaptionChanged(String eventCaption),
    @required Result eventLocationChanged(String eventLocation),
    @required Result idChanged(String id, String currentUserID),
    @required Result categoryChanged(String category),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return idChanged(id, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Event> initialEventOption, String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result eventNameChanged(String eventName),
    Result startTimeChanged(DateTime startTime),
    Result endTimeChanged(DateTime endTime),
    Result eventImageUrlChanged(File image),
    Result eventUrlChanged(String eventUrl),
    Result eventCaptionChanged(String eventCaption),
    Result eventLocationChanged(String eventLocation),
    Result idChanged(String id, String currentUserID),
    Result categoryChanged(String category),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idChanged != null) {
      return idChanged(id, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result eventNameChanged(_EventNameChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endTimeChanged(_EndTimeChanged value),
    @required Result eventImageUrlChanged(_EventImageUrlChanged value),
    @required Result eventUrlChanged(_EventUrlChanged value),
    @required Result eventCaptionChanged(_EventCaptionChanged value),
    @required Result eventLocationChanged(_EventLocationChanged value),
    @required Result idChanged(_IdChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return idChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result eventNameChanged(_EventNameChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endTimeChanged(_EndTimeChanged value),
    Result eventImageUrlChanged(_EventImageUrlChanged value),
    Result eventUrlChanged(_EventUrlChanged value),
    Result eventCaptionChanged(_EventCaptionChanged value),
    Result eventLocationChanged(_EventLocationChanged value),
    Result idChanged(_IdChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idChanged != null) {
      return idChanged(this);
    }
    return orElse();
  }
}

abstract class _IdChanged implements CreateEventEvent {
  const factory _IdChanged(String id, String currentUserID) = _$_IdChanged;

  String get id;
  String get currentUserID;
  _$IdChangedCopyWith<_IdChanged> get copyWith;
}

abstract class _$CategoryChangedCopyWith<$Res> {
  factory _$CategoryChangedCopyWith(
          _CategoryChanged value, $Res Function(_CategoryChanged) then) =
      __$CategoryChangedCopyWithImpl<$Res>;
  $Res call({String category});
}

class __$CategoryChangedCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res>
    implements _$CategoryChangedCopyWith<$Res> {
  __$CategoryChangedCopyWithImpl(
      _CategoryChanged _value, $Res Function(_CategoryChanged) _then)
      : super(_value, (v) => _then(v as _CategoryChanged));

  @override
  _CategoryChanged get _value => super._value as _CategoryChanged;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(_CategoryChanged(
      category == freezed ? _value.category : category as String,
    ));
  }
}

class _$_CategoryChanged implements _CategoryChanged {
  const _$_CategoryChanged(this.category) : assert(category != null);

  @override
  final String category;

  @override
  String toString() {
    return 'CreateEventEvent.categoryChanged(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryChanged &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @override
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith =>
      __$CategoryChangedCopyWithImpl<_CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Event> initialEventOption, String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result eventNameChanged(String eventName),
    @required Result startTimeChanged(DateTime startTime),
    @required Result endTimeChanged(DateTime endTime),
    @required Result eventImageUrlChanged(File image),
    @required Result eventUrlChanged(String eventUrl),
    @required Result eventCaptionChanged(String eventCaption),
    @required Result eventLocationChanged(String eventLocation),
    @required Result idChanged(String id, String currentUserID),
    @required Result categoryChanged(String category),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Event> initialEventOption, String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result eventNameChanged(String eventName),
    Result startTimeChanged(DateTime startTime),
    Result endTimeChanged(DateTime endTime),
    Result eventImageUrlChanged(File image),
    Result eventUrlChanged(String eventUrl),
    Result eventCaptionChanged(String eventCaption),
    Result eventLocationChanged(String eventLocation),
    Result idChanged(String id, String currentUserID),
    Result categoryChanged(String category),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result eventNameChanged(_EventNameChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endTimeChanged(_EndTimeChanged value),
    @required Result eventImageUrlChanged(_EventImageUrlChanged value),
    @required Result eventUrlChanged(_EventUrlChanged value),
    @required Result eventCaptionChanged(_EventCaptionChanged value),
    @required Result eventLocationChanged(_EventLocationChanged value),
    @required Result idChanged(_IdChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result eventNameChanged(_EventNameChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endTimeChanged(_EndTimeChanged value),
    Result eventImageUrlChanged(_EventImageUrlChanged value),
    Result eventUrlChanged(_EventUrlChanged value),
    Result eventCaptionChanged(_EventCaptionChanged value),
    Result eventLocationChanged(_EventLocationChanged value),
    Result idChanged(_IdChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryChanged implements CreateEventEvent {
  const factory _CategoryChanged(String category) = _$_CategoryChanged;

  String get category;
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res> extends _$CreateEventEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'CreateEventEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Event> initialEventOption, String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result eventNameChanged(String eventName),
    @required Result startTimeChanged(DateTime startTime),
    @required Result endTimeChanged(DateTime endTime),
    @required Result eventImageUrlChanged(File image),
    @required Result eventUrlChanged(String eventUrl),
    @required Result eventCaptionChanged(String eventCaption),
    @required Result eventLocationChanged(String eventLocation),
    @required Result idChanged(String id, String currentUserID),
    @required Result categoryChanged(String category),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Event> initialEventOption, String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result eventNameChanged(String eventName),
    Result startTimeChanged(DateTime startTime),
    Result endTimeChanged(DateTime endTime),
    Result eventImageUrlChanged(File image),
    Result eventUrlChanged(String eventUrl),
    Result eventCaptionChanged(String eventCaption),
    Result eventLocationChanged(String eventLocation),
    Result idChanged(String id, String currentUserID),
    Result categoryChanged(String category),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result eventNameChanged(_EventNameChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endTimeChanged(_EndTimeChanged value),
    @required Result eventImageUrlChanged(_EventImageUrlChanged value),
    @required Result eventUrlChanged(_EventUrlChanged value),
    @required Result eventCaptionChanged(_EventCaptionChanged value),
    @required Result eventLocationChanged(_EventLocationChanged value),
    @required Result idChanged(_IdChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(eventNameChanged != null);
    assert(startTimeChanged != null);
    assert(endTimeChanged != null);
    assert(eventImageUrlChanged != null);
    assert(eventUrlChanged != null);
    assert(eventCaptionChanged != null);
    assert(eventLocationChanged != null);
    assert(idChanged != null);
    assert(categoryChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result eventNameChanged(_EventNameChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endTimeChanged(_EndTimeChanged value),
    Result eventImageUrlChanged(_EventImageUrlChanged value),
    Result eventUrlChanged(_EventUrlChanged value),
    Result eventCaptionChanged(_EventCaptionChanged value),
    Result eventLocationChanged(_EventLocationChanged value),
    Result idChanged(_IdChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements CreateEventEvent {
  const factory _Saved() = _$_Saved;
}

class _$CreateEventStateTearOff {
  const _$CreateEventStateTearOff();

  _CreateEventState call(
      {@required
          Event event,
      @required
          KtList<OrgList> admins,
      @required
          String id,
      @required
          List<String> categories,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<EventFailure, Unit>> saveFailureOrSuccessOption}) {
    return _CreateEventState(
      event: event,
      admins: admins,
      id: id,
      categories: categories,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $CreateEventState = _$CreateEventStateTearOff();

mixin _$CreateEventState {
  Event get event;
  KtList<OrgList> get admins;
  String get id;
  List<String> get categories;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<EventFailure, Unit>> get saveFailureOrSuccessOption;

  $CreateEventStateCopyWith<CreateEventState> get copyWith;
}

abstract class $CreateEventStateCopyWith<$Res> {
  factory $CreateEventStateCopyWith(
          CreateEventState value, $Res Function(CreateEventState) then) =
      _$CreateEventStateCopyWithImpl<$Res>;
  $Res call(
      {Event event,
      KtList<OrgList> admins,
      String id,
      List<String> categories,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<EventFailure, Unit>> saveFailureOrSuccessOption});

  $EventCopyWith<$Res> get event;
}

class _$CreateEventStateCopyWithImpl<$Res>
    implements $CreateEventStateCopyWith<$Res> {
  _$CreateEventStateCopyWithImpl(this._value, this._then);

  final CreateEventState _value;
  // ignore: unused_field
  final $Res Function(CreateEventState) _then;

  @override
  $Res call({
    Object event = freezed,
    Object admins = freezed,
    Object id = freezed,
    Object categories = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      event: event == freezed ? _value.event : event as Event,
      admins: admins == freezed ? _value.admins : admins as KtList<OrgList>,
      id: id == freezed ? _value.id : id as String,
      categories: categories == freezed
          ? _value.categories
          : categories as List<String>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<EventFailure, Unit>>,
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

abstract class _$CreateEventStateCopyWith<$Res>
    implements $CreateEventStateCopyWith<$Res> {
  factory _$CreateEventStateCopyWith(
          _CreateEventState value, $Res Function(_CreateEventState) then) =
      __$CreateEventStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Event event,
      KtList<OrgList> admins,
      String id,
      List<String> categories,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<EventFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $EventCopyWith<$Res> get event;
}

class __$CreateEventStateCopyWithImpl<$Res>
    extends _$CreateEventStateCopyWithImpl<$Res>
    implements _$CreateEventStateCopyWith<$Res> {
  __$CreateEventStateCopyWithImpl(
      _CreateEventState _value, $Res Function(_CreateEventState) _then)
      : super(_value, (v) => _then(v as _CreateEventState));

  @override
  _CreateEventState get _value => super._value as _CreateEventState;

  @override
  $Res call({
    Object event = freezed,
    Object admins = freezed,
    Object id = freezed,
    Object categories = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_CreateEventState(
      event: event == freezed ? _value.event : event as Event,
      admins: admins == freezed ? _value.admins : admins as KtList<OrgList>,
      id: id == freezed ? _value.id : id as String,
      categories: categories == freezed
          ? _value.categories
          : categories as List<String>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<EventFailure, Unit>>,
    ));
  }
}

class _$_CreateEventState implements _CreateEventState {
  const _$_CreateEventState(
      {@required this.event,
      @required this.admins,
      @required this.id,
      @required this.categories,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(event != null),
        assert(admins != null),
        assert(id != null),
        assert(categories != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Event event;
  @override
  final KtList<OrgList> admins;
  @override
  final String id;
  @override
  final List<String> categories;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<EventFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'CreateEventState(event: $event, admins: $admins, id: $id, categories: $categories, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateEventState &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)) &&
            (identical(other.admins, admins) ||
                const DeepCollectionEquality().equals(other.admins, admins)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(event) ^
      const DeepCollectionEquality().hash(admins) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$CreateEventStateCopyWith<_CreateEventState> get copyWith =>
      __$CreateEventStateCopyWithImpl<_CreateEventState>(this, _$identity);
}

abstract class _CreateEventState implements CreateEventState {
  const factory _CreateEventState(
          {@required
              Event event,
          @required
              KtList<OrgList> admins,
          @required
              String id,
          @required
              List<String> categories,
          @required
              bool showErrorMessages,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<EventFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_CreateEventState;

  @override
  Event get event;
  @override
  KtList<OrgList> get admins;
  @override
  String get id;
  @override
  List<String> get categories;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<EventFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$CreateEventStateCopyWith<_CreateEventState> get copyWith;
}
