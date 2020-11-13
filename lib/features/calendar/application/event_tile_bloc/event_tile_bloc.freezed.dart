// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'event_tile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EventTileEventTearOff {
  const _$EventTileEventTearOff();

  GetData getData(Event event) {
    return GetData(
      event,
    );
  }

  DeleteEvent deleteEvent(Event event) {
    return DeleteEvent(
      event,
    );
  }
}

// ignore: unused_element
const $EventTileEvent = _$EventTileEventTearOff();

mixin _$EventTileEvent {
  Event get event;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Event event),
    @required Result deleteEvent(Event event),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Event event),
    Result deleteEvent(Event event),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetData value),
    @required Result deleteEvent(DeleteEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetData value),
    Result deleteEvent(DeleteEvent value),
    @required Result orElse(),
  });

  $EventTileEventCopyWith<EventTileEvent> get copyWith;
}

abstract class $EventTileEventCopyWith<$Res> {
  factory $EventTileEventCopyWith(
          EventTileEvent value, $Res Function(EventTileEvent) then) =
      _$EventTileEventCopyWithImpl<$Res>;
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

class _$EventTileEventCopyWithImpl<$Res>
    implements $EventTileEventCopyWith<$Res> {
  _$EventTileEventCopyWithImpl(this._value, this._then);

  final EventTileEvent _value;
  // ignore: unused_field
  final $Res Function(EventTileEvent) _then;

  @override
  $Res call({
    Object event = freezed,
  }) {
    return _then(_value.copyWith(
      event: event == freezed ? _value.event : event as Event,
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

abstract class $GetDataCopyWith<$Res> implements $EventTileEventCopyWith<$Res> {
  factory $GetDataCopyWith(GetData value, $Res Function(GetData) then) =
      _$GetDataCopyWithImpl<$Res>;
  @override
  $Res call({Event event});

  @override
  $EventCopyWith<$Res> get event;
}

class _$GetDataCopyWithImpl<$Res> extends _$EventTileEventCopyWithImpl<$Res>
    implements $GetDataCopyWith<$Res> {
  _$GetDataCopyWithImpl(GetData _value, $Res Function(GetData) _then)
      : super(_value, (v) => _then(v as GetData));

  @override
  GetData get _value => super._value as GetData;

  @override
  $Res call({
    Object event = freezed,
  }) {
    return _then(GetData(
      event == freezed ? _value.event : event as Event,
    ));
  }
}

class _$GetData implements GetData {
  const _$GetData(this.event) : assert(event != null);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventTileEvent.getData(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetData &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event);

  @override
  $GetDataCopyWith<GetData> get copyWith =>
      _$GetDataCopyWithImpl<GetData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Event event),
    @required Result deleteEvent(Event event),
  }) {
    assert(getData != null);
    assert(deleteEvent != null);
    return getData(event);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Event event),
    Result deleteEvent(Event event),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetData value),
    @required Result deleteEvent(DeleteEvent value),
  }) {
    assert(getData != null);
    assert(deleteEvent != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetData value),
    Result deleteEvent(DeleteEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetData implements EventTileEvent {
  const factory GetData(Event event) = _$GetData;

  @override
  Event get event;
  @override
  $GetDataCopyWith<GetData> get copyWith;
}

abstract class $DeleteEventCopyWith<$Res>
    implements $EventTileEventCopyWith<$Res> {
  factory $DeleteEventCopyWith(
          DeleteEvent value, $Res Function(DeleteEvent) then) =
      _$DeleteEventCopyWithImpl<$Res>;
  @override
  $Res call({Event event});

  @override
  $EventCopyWith<$Res> get event;
}

class _$DeleteEventCopyWithImpl<$Res> extends _$EventTileEventCopyWithImpl<$Res>
    implements $DeleteEventCopyWith<$Res> {
  _$DeleteEventCopyWithImpl(
      DeleteEvent _value, $Res Function(DeleteEvent) _then)
      : super(_value, (v) => _then(v as DeleteEvent));

  @override
  DeleteEvent get _value => super._value as DeleteEvent;

  @override
  $Res call({
    Object event = freezed,
  }) {
    return _then(DeleteEvent(
      event == freezed ? _value.event : event as Event,
    ));
  }
}

class _$DeleteEvent implements DeleteEvent {
  const _$DeleteEvent(this.event) : assert(event != null);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventTileEvent.deleteEvent(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteEvent &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event);

  @override
  $DeleteEventCopyWith<DeleteEvent> get copyWith =>
      _$DeleteEventCopyWithImpl<DeleteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Event event),
    @required Result deleteEvent(Event event),
  }) {
    assert(getData != null);
    assert(deleteEvent != null);
    return deleteEvent(event);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Event event),
    Result deleteEvent(Event event),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteEvent != null) {
      return deleteEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetData value),
    @required Result deleteEvent(DeleteEvent value),
  }) {
    assert(getData != null);
    assert(deleteEvent != null);
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetData value),
    Result deleteEvent(DeleteEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteEvent implements EventTileEvent {
  const factory DeleteEvent(Event event) = _$DeleteEvent;

  @override
  Event get event;
  @override
  $DeleteEventCopyWith<DeleteEvent> get copyWith;
}

class _$EventTileStateTearOff {
  const _$EventTileStateTearOff();

  _EventTileState call({@required Organization org, @required User user}) {
    return _EventTileState(
      org: org,
      user: user,
    );
  }
}

// ignore: unused_element
const $EventTileState = _$EventTileStateTearOff();

mixin _$EventTileState {
  Organization get org;
  User get user;

  $EventTileStateCopyWith<EventTileState> get copyWith;
}

abstract class $EventTileStateCopyWith<$Res> {
  factory $EventTileStateCopyWith(
          EventTileState value, $Res Function(EventTileState) then) =
      _$EventTileStateCopyWithImpl<$Res>;
  $Res call({Organization org, User user});

  $OrganizationCopyWith<$Res> get org;
  $UserCopyWith<$Res> get user;
}

class _$EventTileStateCopyWithImpl<$Res>
    implements $EventTileStateCopyWith<$Res> {
  _$EventTileStateCopyWithImpl(this._value, this._then);

  final EventTileState _value;
  // ignore: unused_field
  final $Res Function(EventTileState) _then;

  @override
  $Res call({
    Object org = freezed,
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      org: org == freezed ? _value.org : org as Organization,
      user: user == freezed ? _value.user : user as User,
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

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$EventTileStateCopyWith<$Res>
    implements $EventTileStateCopyWith<$Res> {
  factory _$EventTileStateCopyWith(
          _EventTileState value, $Res Function(_EventTileState) then) =
      __$EventTileStateCopyWithImpl<$Res>;
  @override
  $Res call({Organization org, User user});

  @override
  $OrganizationCopyWith<$Res> get org;
  @override
  $UserCopyWith<$Res> get user;
}

class __$EventTileStateCopyWithImpl<$Res>
    extends _$EventTileStateCopyWithImpl<$Res>
    implements _$EventTileStateCopyWith<$Res> {
  __$EventTileStateCopyWithImpl(
      _EventTileState _value, $Res Function(_EventTileState) _then)
      : super(_value, (v) => _then(v as _EventTileState));

  @override
  _EventTileState get _value => super._value as _EventTileState;

  @override
  $Res call({
    Object org = freezed,
    Object user = freezed,
  }) {
    return _then(_EventTileState(
      org: org == freezed ? _value.org : org as Organization,
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

class _$_EventTileState implements _EventTileState {
  const _$_EventTileState({@required this.org, @required this.user})
      : assert(org != null),
        assert(user != null);

  @override
  final Organization org;
  @override
  final User user;

  @override
  String toString() {
    return 'EventTileState(org: $org, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventTileState &&
            (identical(other.org, org) ||
                const DeepCollectionEquality().equals(other.org, org)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(org) ^
      const DeepCollectionEquality().hash(user);

  @override
  _$EventTileStateCopyWith<_EventTileState> get copyWith =>
      __$EventTileStateCopyWithImpl<_EventTileState>(this, _$identity);
}

abstract class _EventTileState implements EventTileState {
  const factory _EventTileState(
      {@required Organization org, @required User user}) = _$_EventTileState;

  @override
  Organization get org;
  @override
  User get user;
  @override
  _$EventTileStateCopyWith<_EventTileState> get copyWith;
}
