// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'event_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EventDetailEventTearOff {
  const _$EventDetailEventTearOff();

  GetUserData getData(
      {String senderID,
      String currentUserID,
      String orgID,
      String eventID,
      bool isOrg}) {
    return GetUserData(
      senderID: senderID,
      currentUserID: currentUserID,
      orgID: orgID,
      eventID: eventID,
      isOrg: isOrg,
    );
  }

  AddToRSVP addToRSVP(Event event) {
    return AddToRSVP(
      event,
    );
  }

  RemoveFromRSVP removeFromRSVP(Event event) {
    return RemoveFromRSVP(
      event,
    );
  }

  RSVPListReceived rsvpListReceived(
      Either<EventFailure, KtList<UserList>> rsvpList, String currentUserID) {
    return RSVPListReceived(
      rsvpList,
      currentUserID,
    );
  }

  DeleteEvent deleteEvent(Event event) {
    return DeleteEvent(
      event,
    );
  }
}

// ignore: unused_element
const $EventDetailEvent = _$EventDetailEventTearOff();

mixin _$EventDetailEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(String senderID, String currentUserID, String orgID,
            String eventID, bool isOrg),
    @required Result addToRSVP(Event event),
    @required Result removeFromRSVP(Event event),
    @required
        Result rsvpListReceived(Either<EventFailure, KtList<UserList>> rsvpList,
            String currentUserID),
    @required Result deleteEvent(Event event),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String senderID, String currentUserID, String orgID,
        String eventID, bool isOrg),
    Result addToRSVP(Event event),
    Result removeFromRSVP(Event event),
    Result rsvpListReceived(
        Either<EventFailure, KtList<UserList>> rsvpList, String currentUserID),
    Result deleteEvent(Event event),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addToRSVP(AddToRSVP value),
    @required Result removeFromRSVP(RemoveFromRSVP value),
    @required Result rsvpListReceived(RSVPListReceived value),
    @required Result deleteEvent(DeleteEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addToRSVP(AddToRSVP value),
    Result removeFromRSVP(RemoveFromRSVP value),
    Result rsvpListReceived(RSVPListReceived value),
    Result deleteEvent(DeleteEvent value),
    @required Result orElse(),
  });
}

abstract class $EventDetailEventCopyWith<$Res> {
  factory $EventDetailEventCopyWith(
          EventDetailEvent value, $Res Function(EventDetailEvent) then) =
      _$EventDetailEventCopyWithImpl<$Res>;
}

class _$EventDetailEventCopyWithImpl<$Res>
    implements $EventDetailEventCopyWith<$Res> {
  _$EventDetailEventCopyWithImpl(this._value, this._then);

  final EventDetailEvent _value;
  // ignore: unused_field
  final $Res Function(EventDetailEvent) _then;
}

abstract class $GetUserDataCopyWith<$Res> {
  factory $GetUserDataCopyWith(
          GetUserData value, $Res Function(GetUserData) then) =
      _$GetUserDataCopyWithImpl<$Res>;
  $Res call(
      {String senderID,
      String currentUserID,
      String orgID,
      String eventID,
      bool isOrg});
}

class _$GetUserDataCopyWithImpl<$Res>
    extends _$EventDetailEventCopyWithImpl<$Res>
    implements $GetUserDataCopyWith<$Res> {
  _$GetUserDataCopyWithImpl(
      GetUserData _value, $Res Function(GetUserData) _then)
      : super(_value, (v) => _then(v as GetUserData));

  @override
  GetUserData get _value => super._value as GetUserData;

  @override
  $Res call({
    Object senderID = freezed,
    Object currentUserID = freezed,
    Object orgID = freezed,
    Object eventID = freezed,
    Object isOrg = freezed,
  }) {
    return _then(GetUserData(
      senderID: senderID == freezed ? _value.senderID : senderID as String,
      currentUserID: currentUserID == freezed
          ? _value.currentUserID
          : currentUserID as String,
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      eventID: eventID == freezed ? _value.eventID : eventID as String,
      isOrg: isOrg == freezed ? _value.isOrg : isOrg as bool,
    ));
  }
}

class _$GetUserData implements GetUserData {
  const _$GetUserData(
      {this.senderID,
      this.currentUserID,
      this.orgID,
      this.eventID,
      this.isOrg});

  @override
  final String senderID;
  @override
  final String currentUserID;
  @override
  final String orgID;
  @override
  final String eventID;
  @override
  final bool isOrg;

  @override
  String toString() {
    return 'EventDetailEvent.getData(senderID: $senderID, currentUserID: $currentUserID, orgID: $orgID, eventID: $eventID, isOrg: $isOrg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserData &&
            (identical(other.senderID, senderID) ||
                const DeepCollectionEquality()
                    .equals(other.senderID, senderID)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)) &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.eventID, eventID) ||
                const DeepCollectionEquality()
                    .equals(other.eventID, eventID)) &&
            (identical(other.isOrg, isOrg) ||
                const DeepCollectionEquality().equals(other.isOrg, isOrg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(senderID) ^
      const DeepCollectionEquality().hash(currentUserID) ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(eventID) ^
      const DeepCollectionEquality().hash(isOrg);

  @override
  $GetUserDataCopyWith<GetUserData> get copyWith =>
      _$GetUserDataCopyWithImpl<GetUserData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(String senderID, String currentUserID, String orgID,
            String eventID, bool isOrg),
    @required Result addToRSVP(Event event),
    @required Result removeFromRSVP(Event event),
    @required
        Result rsvpListReceived(Either<EventFailure, KtList<UserList>> rsvpList,
            String currentUserID),
    @required Result deleteEvent(Event event),
  }) {
    assert(getData != null);
    assert(addToRSVP != null);
    assert(removeFromRSVP != null);
    assert(rsvpListReceived != null);
    assert(deleteEvent != null);
    return getData(senderID, currentUserID, orgID, eventID, isOrg);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String senderID, String currentUserID, String orgID,
        String eventID, bool isOrg),
    Result addToRSVP(Event event),
    Result removeFromRSVP(Event event),
    Result rsvpListReceived(
        Either<EventFailure, KtList<UserList>> rsvpList, String currentUserID),
    Result deleteEvent(Event event),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(senderID, currentUserID, orgID, eventID, isOrg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addToRSVP(AddToRSVP value),
    @required Result removeFromRSVP(RemoveFromRSVP value),
    @required Result rsvpListReceived(RSVPListReceived value),
    @required Result deleteEvent(DeleteEvent value),
  }) {
    assert(getData != null);
    assert(addToRSVP != null);
    assert(removeFromRSVP != null);
    assert(rsvpListReceived != null);
    assert(deleteEvent != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addToRSVP(AddToRSVP value),
    Result removeFromRSVP(RemoveFromRSVP value),
    Result rsvpListReceived(RSVPListReceived value),
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

abstract class GetUserData implements EventDetailEvent {
  const factory GetUserData(
      {String senderID,
      String currentUserID,
      String orgID,
      String eventID,
      bool isOrg}) = _$GetUserData;

  String get senderID;
  String get currentUserID;
  String get orgID;
  String get eventID;
  bool get isOrg;
  $GetUserDataCopyWith<GetUserData> get copyWith;
}

abstract class $AddToRSVPCopyWith<$Res> {
  factory $AddToRSVPCopyWith(AddToRSVP value, $Res Function(AddToRSVP) then) =
      _$AddToRSVPCopyWithImpl<$Res>;
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

class _$AddToRSVPCopyWithImpl<$Res> extends _$EventDetailEventCopyWithImpl<$Res>
    implements $AddToRSVPCopyWith<$Res> {
  _$AddToRSVPCopyWithImpl(AddToRSVP _value, $Res Function(AddToRSVP) _then)
      : super(_value, (v) => _then(v as AddToRSVP));

  @override
  AddToRSVP get _value => super._value as AddToRSVP;

  @override
  $Res call({
    Object event = freezed,
  }) {
    return _then(AddToRSVP(
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

class _$AddToRSVP implements AddToRSVP {
  const _$AddToRSVP(this.event) : assert(event != null);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventDetailEvent.addToRSVP(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddToRSVP &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event);

  @override
  $AddToRSVPCopyWith<AddToRSVP> get copyWith =>
      _$AddToRSVPCopyWithImpl<AddToRSVP>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(String senderID, String currentUserID, String orgID,
            String eventID, bool isOrg),
    @required Result addToRSVP(Event event),
    @required Result removeFromRSVP(Event event),
    @required
        Result rsvpListReceived(Either<EventFailure, KtList<UserList>> rsvpList,
            String currentUserID),
    @required Result deleteEvent(Event event),
  }) {
    assert(getData != null);
    assert(addToRSVP != null);
    assert(removeFromRSVP != null);
    assert(rsvpListReceived != null);
    assert(deleteEvent != null);
    return addToRSVP(event);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String senderID, String currentUserID, String orgID,
        String eventID, bool isOrg),
    Result addToRSVP(Event event),
    Result removeFromRSVP(Event event),
    Result rsvpListReceived(
        Either<EventFailure, KtList<UserList>> rsvpList, String currentUserID),
    Result deleteEvent(Event event),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addToRSVP != null) {
      return addToRSVP(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addToRSVP(AddToRSVP value),
    @required Result removeFromRSVP(RemoveFromRSVP value),
    @required Result rsvpListReceived(RSVPListReceived value),
    @required Result deleteEvent(DeleteEvent value),
  }) {
    assert(getData != null);
    assert(addToRSVP != null);
    assert(removeFromRSVP != null);
    assert(rsvpListReceived != null);
    assert(deleteEvent != null);
    return addToRSVP(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addToRSVP(AddToRSVP value),
    Result removeFromRSVP(RemoveFromRSVP value),
    Result rsvpListReceived(RSVPListReceived value),
    Result deleteEvent(DeleteEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addToRSVP != null) {
      return addToRSVP(this);
    }
    return orElse();
  }
}

abstract class AddToRSVP implements EventDetailEvent {
  const factory AddToRSVP(Event event) = _$AddToRSVP;

  Event get event;
  $AddToRSVPCopyWith<AddToRSVP> get copyWith;
}

abstract class $RemoveFromRSVPCopyWith<$Res> {
  factory $RemoveFromRSVPCopyWith(
          RemoveFromRSVP value, $Res Function(RemoveFromRSVP) then) =
      _$RemoveFromRSVPCopyWithImpl<$Res>;
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

class _$RemoveFromRSVPCopyWithImpl<$Res>
    extends _$EventDetailEventCopyWithImpl<$Res>
    implements $RemoveFromRSVPCopyWith<$Res> {
  _$RemoveFromRSVPCopyWithImpl(
      RemoveFromRSVP _value, $Res Function(RemoveFromRSVP) _then)
      : super(_value, (v) => _then(v as RemoveFromRSVP));

  @override
  RemoveFromRSVP get _value => super._value as RemoveFromRSVP;

  @override
  $Res call({
    Object event = freezed,
  }) {
    return _then(RemoveFromRSVP(
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

class _$RemoveFromRSVP implements RemoveFromRSVP {
  const _$RemoveFromRSVP(this.event) : assert(event != null);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventDetailEvent.removeFromRSVP(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveFromRSVP &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event);

  @override
  $RemoveFromRSVPCopyWith<RemoveFromRSVP> get copyWith =>
      _$RemoveFromRSVPCopyWithImpl<RemoveFromRSVP>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(String senderID, String currentUserID, String orgID,
            String eventID, bool isOrg),
    @required Result addToRSVP(Event event),
    @required Result removeFromRSVP(Event event),
    @required
        Result rsvpListReceived(Either<EventFailure, KtList<UserList>> rsvpList,
            String currentUserID),
    @required Result deleteEvent(Event event),
  }) {
    assert(getData != null);
    assert(addToRSVP != null);
    assert(removeFromRSVP != null);
    assert(rsvpListReceived != null);
    assert(deleteEvent != null);
    return removeFromRSVP(event);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String senderID, String currentUserID, String orgID,
        String eventID, bool isOrg),
    Result addToRSVP(Event event),
    Result removeFromRSVP(Event event),
    Result rsvpListReceived(
        Either<EventFailure, KtList<UserList>> rsvpList, String currentUserID),
    Result deleteEvent(Event event),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeFromRSVP != null) {
      return removeFromRSVP(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addToRSVP(AddToRSVP value),
    @required Result removeFromRSVP(RemoveFromRSVP value),
    @required Result rsvpListReceived(RSVPListReceived value),
    @required Result deleteEvent(DeleteEvent value),
  }) {
    assert(getData != null);
    assert(addToRSVP != null);
    assert(removeFromRSVP != null);
    assert(rsvpListReceived != null);
    assert(deleteEvent != null);
    return removeFromRSVP(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addToRSVP(AddToRSVP value),
    Result removeFromRSVP(RemoveFromRSVP value),
    Result rsvpListReceived(RSVPListReceived value),
    Result deleteEvent(DeleteEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeFromRSVP != null) {
      return removeFromRSVP(this);
    }
    return orElse();
  }
}

abstract class RemoveFromRSVP implements EventDetailEvent {
  const factory RemoveFromRSVP(Event event) = _$RemoveFromRSVP;

  Event get event;
  $RemoveFromRSVPCopyWith<RemoveFromRSVP> get copyWith;
}

abstract class $RSVPListReceivedCopyWith<$Res> {
  factory $RSVPListReceivedCopyWith(
          RSVPListReceived value, $Res Function(RSVPListReceived) then) =
      _$RSVPListReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<EventFailure, KtList<UserList>> rsvpList, String currentUserID});
}

class _$RSVPListReceivedCopyWithImpl<$Res>
    extends _$EventDetailEventCopyWithImpl<$Res>
    implements $RSVPListReceivedCopyWith<$Res> {
  _$RSVPListReceivedCopyWithImpl(
      RSVPListReceived _value, $Res Function(RSVPListReceived) _then)
      : super(_value, (v) => _then(v as RSVPListReceived));

  @override
  RSVPListReceived get _value => super._value as RSVPListReceived;

  @override
  $Res call({
    Object rsvpList = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(RSVPListReceived(
      rsvpList == freezed
          ? _value.rsvpList
          : rsvpList as Either<EventFailure, KtList<UserList>>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$RSVPListReceived implements RSVPListReceived {
  const _$RSVPListReceived(this.rsvpList, this.currentUserID)
      : assert(rsvpList != null),
        assert(currentUserID != null);

  @override
  final Either<EventFailure, KtList<UserList>> rsvpList;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'EventDetailEvent.rsvpListReceived(rsvpList: $rsvpList, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RSVPListReceived &&
            (identical(other.rsvpList, rsvpList) ||
                const DeepCollectionEquality()
                    .equals(other.rsvpList, rsvpList)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rsvpList) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $RSVPListReceivedCopyWith<RSVPListReceived> get copyWith =>
      _$RSVPListReceivedCopyWithImpl<RSVPListReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(String senderID, String currentUserID, String orgID,
            String eventID, bool isOrg),
    @required Result addToRSVP(Event event),
    @required Result removeFromRSVP(Event event),
    @required
        Result rsvpListReceived(Either<EventFailure, KtList<UserList>> rsvpList,
            String currentUserID),
    @required Result deleteEvent(Event event),
  }) {
    assert(getData != null);
    assert(addToRSVP != null);
    assert(removeFromRSVP != null);
    assert(rsvpListReceived != null);
    assert(deleteEvent != null);
    return rsvpListReceived(rsvpList, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String senderID, String currentUserID, String orgID,
        String eventID, bool isOrg),
    Result addToRSVP(Event event),
    Result removeFromRSVP(Event event),
    Result rsvpListReceived(
        Either<EventFailure, KtList<UserList>> rsvpList, String currentUserID),
    Result deleteEvent(Event event),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rsvpListReceived != null) {
      return rsvpListReceived(rsvpList, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetUserData value),
    @required Result addToRSVP(AddToRSVP value),
    @required Result removeFromRSVP(RemoveFromRSVP value),
    @required Result rsvpListReceived(RSVPListReceived value),
    @required Result deleteEvent(DeleteEvent value),
  }) {
    assert(getData != null);
    assert(addToRSVP != null);
    assert(removeFromRSVP != null);
    assert(rsvpListReceived != null);
    assert(deleteEvent != null);
    return rsvpListReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addToRSVP(AddToRSVP value),
    Result removeFromRSVP(RemoveFromRSVP value),
    Result rsvpListReceived(RSVPListReceived value),
    Result deleteEvent(DeleteEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rsvpListReceived != null) {
      return rsvpListReceived(this);
    }
    return orElse();
  }
}

abstract class RSVPListReceived implements EventDetailEvent {
  const factory RSVPListReceived(
      Either<EventFailure, KtList<UserList>> rsvpList,
      String currentUserID) = _$RSVPListReceived;

  Either<EventFailure, KtList<UserList>> get rsvpList;
  String get currentUserID;
  $RSVPListReceivedCopyWith<RSVPListReceived> get copyWith;
}

abstract class $DeleteEventCopyWith<$Res> {
  factory $DeleteEventCopyWith(
          DeleteEvent value, $Res Function(DeleteEvent) then) =
      _$DeleteEventCopyWithImpl<$Res>;
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

class _$DeleteEventCopyWithImpl<$Res>
    extends _$EventDetailEventCopyWithImpl<$Res>
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

class _$DeleteEvent implements DeleteEvent {
  const _$DeleteEvent(this.event) : assert(event != null);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventDetailEvent.deleteEvent(event: $event)';
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
    @required
        Result getData(String senderID, String currentUserID, String orgID,
            String eventID, bool isOrg),
    @required Result addToRSVP(Event event),
    @required Result removeFromRSVP(Event event),
    @required
        Result rsvpListReceived(Either<EventFailure, KtList<UserList>> rsvpList,
            String currentUserID),
    @required Result deleteEvent(Event event),
  }) {
    assert(getData != null);
    assert(addToRSVP != null);
    assert(removeFromRSVP != null);
    assert(rsvpListReceived != null);
    assert(deleteEvent != null);
    return deleteEvent(event);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String senderID, String currentUserID, String orgID,
        String eventID, bool isOrg),
    Result addToRSVP(Event event),
    Result removeFromRSVP(Event event),
    Result rsvpListReceived(
        Either<EventFailure, KtList<UserList>> rsvpList, String currentUserID),
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
    @required Result getData(GetUserData value),
    @required Result addToRSVP(AddToRSVP value),
    @required Result removeFromRSVP(RemoveFromRSVP value),
    @required Result rsvpListReceived(RSVPListReceived value),
    @required Result deleteEvent(DeleteEvent value),
  }) {
    assert(getData != null);
    assert(addToRSVP != null);
    assert(removeFromRSVP != null);
    assert(rsvpListReceived != null);
    assert(deleteEvent != null);
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetUserData value),
    Result addToRSVP(AddToRSVP value),
    Result removeFromRSVP(RemoveFromRSVP value),
    Result rsvpListReceived(RSVPListReceived value),
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

abstract class DeleteEvent implements EventDetailEvent {
  const factory DeleteEvent(Event event) = _$DeleteEvent;

  Event get event;
  $DeleteEventCopyWith<DeleteEvent> get copyWith;
}

class _$EventDetailStateTearOff {
  const _$EventDetailStateTearOff();

  _EventDetailState call(
      {@required KtList<UserList> rsvpList,
      @required Organization org,
      @required User user,
      @required bool isRSVPed}) {
    return _EventDetailState(
      rsvpList: rsvpList,
      org: org,
      user: user,
      isRSVPed: isRSVPed,
    );
  }
}

// ignore: unused_element
const $EventDetailState = _$EventDetailStateTearOff();

mixin _$EventDetailState {
  KtList<UserList> get rsvpList;
  Organization get org;
  User get user;
  bool get isRSVPed;

  $EventDetailStateCopyWith<EventDetailState> get copyWith;
}

abstract class $EventDetailStateCopyWith<$Res> {
  factory $EventDetailStateCopyWith(
          EventDetailState value, $Res Function(EventDetailState) then) =
      _$EventDetailStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<UserList> rsvpList, Organization org, User user, bool isRSVPed});

  $OrganizationCopyWith<$Res> get org;
  $UserCopyWith<$Res> get user;
}

class _$EventDetailStateCopyWithImpl<$Res>
    implements $EventDetailStateCopyWith<$Res> {
  _$EventDetailStateCopyWithImpl(this._value, this._then);

  final EventDetailState _value;
  // ignore: unused_field
  final $Res Function(EventDetailState) _then;

  @override
  $Res call({
    Object rsvpList = freezed,
    Object org = freezed,
    Object user = freezed,
    Object isRSVPed = freezed,
  }) {
    return _then(_value.copyWith(
      rsvpList:
          rsvpList == freezed ? _value.rsvpList : rsvpList as KtList<UserList>,
      org: org == freezed ? _value.org : org as Organization,
      user: user == freezed ? _value.user : user as User,
      isRSVPed: isRSVPed == freezed ? _value.isRSVPed : isRSVPed as bool,
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

abstract class _$EventDetailStateCopyWith<$Res>
    implements $EventDetailStateCopyWith<$Res> {
  factory _$EventDetailStateCopyWith(
          _EventDetailState value, $Res Function(_EventDetailState) then) =
      __$EventDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<UserList> rsvpList, Organization org, User user, bool isRSVPed});

  @override
  $OrganizationCopyWith<$Res> get org;
  @override
  $UserCopyWith<$Res> get user;
}

class __$EventDetailStateCopyWithImpl<$Res>
    extends _$EventDetailStateCopyWithImpl<$Res>
    implements _$EventDetailStateCopyWith<$Res> {
  __$EventDetailStateCopyWithImpl(
      _EventDetailState _value, $Res Function(_EventDetailState) _then)
      : super(_value, (v) => _then(v as _EventDetailState));

  @override
  _EventDetailState get _value => super._value as _EventDetailState;

  @override
  $Res call({
    Object rsvpList = freezed,
    Object org = freezed,
    Object user = freezed,
    Object isRSVPed = freezed,
  }) {
    return _then(_EventDetailState(
      rsvpList:
          rsvpList == freezed ? _value.rsvpList : rsvpList as KtList<UserList>,
      org: org == freezed ? _value.org : org as Organization,
      user: user == freezed ? _value.user : user as User,
      isRSVPed: isRSVPed == freezed ? _value.isRSVPed : isRSVPed as bool,
    ));
  }
}

class _$_EventDetailState implements _EventDetailState {
  const _$_EventDetailState(
      {@required this.rsvpList,
      @required this.org,
      @required this.user,
      @required this.isRSVPed})
      : assert(rsvpList != null),
        assert(org != null),
        assert(user != null),
        assert(isRSVPed != null);

  @override
  final KtList<UserList> rsvpList;
  @override
  final Organization org;
  @override
  final User user;
  @override
  final bool isRSVPed;

  @override
  String toString() {
    return 'EventDetailState(rsvpList: $rsvpList, org: $org, user: $user, isRSVPed: $isRSVPed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventDetailState &&
            (identical(other.rsvpList, rsvpList) ||
                const DeepCollectionEquality()
                    .equals(other.rsvpList, rsvpList)) &&
            (identical(other.org, org) ||
                const DeepCollectionEquality().equals(other.org, org)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.isRSVPed, isRSVPed) ||
                const DeepCollectionEquality()
                    .equals(other.isRSVPed, isRSVPed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rsvpList) ^
      const DeepCollectionEquality().hash(org) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(isRSVPed);

  @override
  _$EventDetailStateCopyWith<_EventDetailState> get copyWith =>
      __$EventDetailStateCopyWithImpl<_EventDetailState>(this, _$identity);
}

abstract class _EventDetailState implements EventDetailState {
  const factory _EventDetailState(
      {@required KtList<UserList> rsvpList,
      @required Organization org,
      @required User user,
      @required bool isRSVPed}) = _$_EventDetailState;

  @override
  KtList<UserList> get rsvpList;
  @override
  Organization get org;
  @override
  User get user;
  @override
  bool get isRSVPed;
  @override
  _$EventDetailStateCopyWith<_EventDetailState> get copyWith;
}
