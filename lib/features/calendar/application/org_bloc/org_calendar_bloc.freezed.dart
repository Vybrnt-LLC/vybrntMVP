// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'org_calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OrgCalendarEventTearOff {
  const _$OrgCalendarEventTearOff();

  ToggledTrue toggleTrue(String currentUserID, String orgID) {
    return ToggledTrue(
      currentUserID,
      orgID,
    );
  }

  ToggledFalse toggleFalse(String currentUserID, String orgID) {
    return ToggledFalse(
      currentUserID,
      orgID,
    );
  }

  GetData getData(String currentUserID) {
    return GetData(
      currentUserID,
    );
  }

  _OrgsReceived orgsReceived(
      Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes,
      String currentUserID) {
    return _OrgsReceived(
      failureOrNotes,
      currentUserID,
    );
  }
}

// ignore: unused_element
const $OrgCalendarEvent = _$OrgCalendarEventTearOff();

mixin _$OrgCalendarEvent {
  String get currentUserID;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result toggleTrue(String currentUserID, String orgID),
    @required Result toggleFalse(String currentUserID, String orgID),
    @required Result getData(String currentUserID),
    @required
        Result orgsReceived(
            Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes,
            String currentUserID),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result toggleTrue(String currentUserID, String orgID),
    Result toggleFalse(String currentUserID, String orgID),
    Result getData(String currentUserID),
    Result orgsReceived(Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes,
        String currentUserID),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result toggleTrue(ToggledTrue value),
    @required Result toggleFalse(ToggledFalse value),
    @required Result getData(GetData value),
    @required Result orgsReceived(_OrgsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result toggleTrue(ToggledTrue value),
    Result toggleFalse(ToggledFalse value),
    Result getData(GetData value),
    Result orgsReceived(_OrgsReceived value),
    @required Result orElse(),
  });

  $OrgCalendarEventCopyWith<OrgCalendarEvent> get copyWith;
}

abstract class $OrgCalendarEventCopyWith<$Res> {
  factory $OrgCalendarEventCopyWith(
          OrgCalendarEvent value, $Res Function(OrgCalendarEvent) then) =
      _$OrgCalendarEventCopyWithImpl<$Res>;
  $Res call({String currentUserID});
}

class _$OrgCalendarEventCopyWithImpl<$Res>
    implements $OrgCalendarEventCopyWith<$Res> {
  _$OrgCalendarEventCopyWithImpl(this._value, this._then);

  final OrgCalendarEvent _value;
  // ignore: unused_field
  final $Res Function(OrgCalendarEvent) _then;

  @override
  $Res call({
    Object currentUserID = freezed,
  }) {
    return _then(_value.copyWith(
      currentUserID: currentUserID == freezed
          ? _value.currentUserID
          : currentUserID as String,
    ));
  }
}

abstract class $ToggledTrueCopyWith<$Res>
    implements $OrgCalendarEventCopyWith<$Res> {
  factory $ToggledTrueCopyWith(
          ToggledTrue value, $Res Function(ToggledTrue) then) =
      _$ToggledTrueCopyWithImpl<$Res>;
  @override
  $Res call({String currentUserID, String orgID});
}

class _$ToggledTrueCopyWithImpl<$Res>
    extends _$OrgCalendarEventCopyWithImpl<$Res>
    implements $ToggledTrueCopyWith<$Res> {
  _$ToggledTrueCopyWithImpl(
      ToggledTrue _value, $Res Function(ToggledTrue) _then)
      : super(_value, (v) => _then(v as ToggledTrue));

  @override
  ToggledTrue get _value => super._value as ToggledTrue;

  @override
  $Res call({
    Object currentUserID = freezed,
    Object orgID = freezed,
  }) {
    return _then(ToggledTrue(
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
      orgID == freezed ? _value.orgID : orgID as String,
    ));
  }
}

class _$ToggledTrue implements ToggledTrue {
  const _$ToggledTrue(this.currentUserID, this.orgID)
      : assert(currentUserID != null),
        assert(orgID != null);

  @override
  final String currentUserID;
  @override
  final String orgID;

  @override
  String toString() {
    return 'OrgCalendarEvent.toggleTrue(currentUserID: $currentUserID, orgID: $orgID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToggledTrue &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)) &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentUserID) ^
      const DeepCollectionEquality().hash(orgID);

  @override
  $ToggledTrueCopyWith<ToggledTrue> get copyWith =>
      _$ToggledTrueCopyWithImpl<ToggledTrue>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result toggleTrue(String currentUserID, String orgID),
    @required Result toggleFalse(String currentUserID, String orgID),
    @required Result getData(String currentUserID),
    @required
        Result orgsReceived(
            Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes,
            String currentUserID),
  }) {
    assert(toggleTrue != null);
    assert(toggleFalse != null);
    assert(getData != null);
    assert(orgsReceived != null);
    return toggleTrue(currentUserID, orgID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result toggleTrue(String currentUserID, String orgID),
    Result toggleFalse(String currentUserID, String orgID),
    Result getData(String currentUserID),
    Result orgsReceived(Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes,
        String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleTrue != null) {
      return toggleTrue(currentUserID, orgID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result toggleTrue(ToggledTrue value),
    @required Result toggleFalse(ToggledFalse value),
    @required Result getData(GetData value),
    @required Result orgsReceived(_OrgsReceived value),
  }) {
    assert(toggleTrue != null);
    assert(toggleFalse != null);
    assert(getData != null);
    assert(orgsReceived != null);
    return toggleTrue(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result toggleTrue(ToggledTrue value),
    Result toggleFalse(ToggledFalse value),
    Result getData(GetData value),
    Result orgsReceived(_OrgsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleTrue != null) {
      return toggleTrue(this);
    }
    return orElse();
  }
}

abstract class ToggledTrue implements OrgCalendarEvent {
  const factory ToggledTrue(String currentUserID, String orgID) = _$ToggledTrue;

  @override
  String get currentUserID;
  String get orgID;
  @override
  $ToggledTrueCopyWith<ToggledTrue> get copyWith;
}

abstract class $ToggledFalseCopyWith<$Res>
    implements $OrgCalendarEventCopyWith<$Res> {
  factory $ToggledFalseCopyWith(
          ToggledFalse value, $Res Function(ToggledFalse) then) =
      _$ToggledFalseCopyWithImpl<$Res>;
  @override
  $Res call({String currentUserID, String orgID});
}

class _$ToggledFalseCopyWithImpl<$Res>
    extends _$OrgCalendarEventCopyWithImpl<$Res>
    implements $ToggledFalseCopyWith<$Res> {
  _$ToggledFalseCopyWithImpl(
      ToggledFalse _value, $Res Function(ToggledFalse) _then)
      : super(_value, (v) => _then(v as ToggledFalse));

  @override
  ToggledFalse get _value => super._value as ToggledFalse;

  @override
  $Res call({
    Object currentUserID = freezed,
    Object orgID = freezed,
  }) {
    return _then(ToggledFalse(
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
      orgID == freezed ? _value.orgID : orgID as String,
    ));
  }
}

class _$ToggledFalse implements ToggledFalse {
  const _$ToggledFalse(this.currentUserID, this.orgID)
      : assert(currentUserID != null),
        assert(orgID != null);

  @override
  final String currentUserID;
  @override
  final String orgID;

  @override
  String toString() {
    return 'OrgCalendarEvent.toggleFalse(currentUserID: $currentUserID, orgID: $orgID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToggledFalse &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)) &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentUserID) ^
      const DeepCollectionEquality().hash(orgID);

  @override
  $ToggledFalseCopyWith<ToggledFalse> get copyWith =>
      _$ToggledFalseCopyWithImpl<ToggledFalse>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result toggleTrue(String currentUserID, String orgID),
    @required Result toggleFalse(String currentUserID, String orgID),
    @required Result getData(String currentUserID),
    @required
        Result orgsReceived(
            Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes,
            String currentUserID),
  }) {
    assert(toggleTrue != null);
    assert(toggleFalse != null);
    assert(getData != null);
    assert(orgsReceived != null);
    return toggleFalse(currentUserID, orgID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result toggleTrue(String currentUserID, String orgID),
    Result toggleFalse(String currentUserID, String orgID),
    Result getData(String currentUserID),
    Result orgsReceived(Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes,
        String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleFalse != null) {
      return toggleFalse(currentUserID, orgID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result toggleTrue(ToggledTrue value),
    @required Result toggleFalse(ToggledFalse value),
    @required Result getData(GetData value),
    @required Result orgsReceived(_OrgsReceived value),
  }) {
    assert(toggleTrue != null);
    assert(toggleFalse != null);
    assert(getData != null);
    assert(orgsReceived != null);
    return toggleFalse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result toggleTrue(ToggledTrue value),
    Result toggleFalse(ToggledFalse value),
    Result getData(GetData value),
    Result orgsReceived(_OrgsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleFalse != null) {
      return toggleFalse(this);
    }
    return orElse();
  }
}

abstract class ToggledFalse implements OrgCalendarEvent {
  const factory ToggledFalse(String currentUserID, String orgID) =
      _$ToggledFalse;

  @override
  String get currentUserID;
  String get orgID;
  @override
  $ToggledFalseCopyWith<ToggledFalse> get copyWith;
}

abstract class $GetDataCopyWith<$Res>
    implements $OrgCalendarEventCopyWith<$Res> {
  factory $GetDataCopyWith(GetData value, $Res Function(GetData) then) =
      _$GetDataCopyWithImpl<$Res>;
  @override
  $Res call({String currentUserID});
}

class _$GetDataCopyWithImpl<$Res> extends _$OrgCalendarEventCopyWithImpl<$Res>
    implements $GetDataCopyWith<$Res> {
  _$GetDataCopyWithImpl(GetData _value, $Res Function(GetData) _then)
      : super(_value, (v) => _then(v as GetData));

  @override
  GetData get _value => super._value as GetData;

  @override
  $Res call({
    Object currentUserID = freezed,
  }) {
    return _then(GetData(
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$GetData implements GetData {
  const _$GetData(this.currentUserID) : assert(currentUserID != null);

  @override
  final String currentUserID;

  @override
  String toString() {
    return 'OrgCalendarEvent.getData(currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetData &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentUserID);

  @override
  $GetDataCopyWith<GetData> get copyWith =>
      _$GetDataCopyWithImpl<GetData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result toggleTrue(String currentUserID, String orgID),
    @required Result toggleFalse(String currentUserID, String orgID),
    @required Result getData(String currentUserID),
    @required
        Result orgsReceived(
            Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes,
            String currentUserID),
  }) {
    assert(toggleTrue != null);
    assert(toggleFalse != null);
    assert(getData != null);
    assert(orgsReceived != null);
    return getData(currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result toggleTrue(String currentUserID, String orgID),
    Result toggleFalse(String currentUserID, String orgID),
    Result getData(String currentUserID),
    Result orgsReceived(Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes,
        String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result toggleTrue(ToggledTrue value),
    @required Result toggleFalse(ToggledFalse value),
    @required Result getData(GetData value),
    @required Result orgsReceived(_OrgsReceived value),
  }) {
    assert(toggleTrue != null);
    assert(toggleFalse != null);
    assert(getData != null);
    assert(orgsReceived != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result toggleTrue(ToggledTrue value),
    Result toggleFalse(ToggledFalse value),
    Result getData(GetData value),
    Result orgsReceived(_OrgsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetData implements OrgCalendarEvent {
  const factory GetData(String currentUserID) = _$GetData;

  @override
  String get currentUserID;
  @override
  $GetDataCopyWith<GetData> get copyWith;
}

abstract class _$OrgsReceivedCopyWith<$Res>
    implements $OrgCalendarEventCopyWith<$Res> {
  factory _$OrgsReceivedCopyWith(
          _OrgsReceived value, $Res Function(_OrgsReceived) then) =
      __$OrgsReceivedCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes,
      String currentUserID});
}

class __$OrgsReceivedCopyWithImpl<$Res>
    extends _$OrgCalendarEventCopyWithImpl<$Res>
    implements _$OrgsReceivedCopyWith<$Res> {
  __$OrgsReceivedCopyWithImpl(
      _OrgsReceived _value, $Res Function(_OrgsReceived) _then)
      : super(_value, (v) => _then(v as _OrgsReceived));

  @override
  _OrgsReceived get _value => super._value as _OrgsReceived;

  @override
  $Res call({
    Object failureOrNotes = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(_OrgsReceived(
      failureOrNotes == freezed
          ? _value.failureOrNotes
          : failureOrNotes as Either<OrgFailure, KtList<OrgCalendar>>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$_OrgsReceived implements _OrgsReceived {
  const _$_OrgsReceived(this.failureOrNotes, this.currentUserID)
      : assert(failureOrNotes != null),
        assert(currentUserID != null);

  @override
  final Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'OrgCalendarEvent.orgsReceived(failureOrNotes: $failureOrNotes, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrgsReceived &&
            (identical(other.failureOrNotes, failureOrNotes) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrNotes, failureOrNotes)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNotes) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  _$OrgsReceivedCopyWith<_OrgsReceived> get copyWith =>
      __$OrgsReceivedCopyWithImpl<_OrgsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result toggleTrue(String currentUserID, String orgID),
    @required Result toggleFalse(String currentUserID, String orgID),
    @required Result getData(String currentUserID),
    @required
        Result orgsReceived(
            Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes,
            String currentUserID),
  }) {
    assert(toggleTrue != null);
    assert(toggleFalse != null);
    assert(getData != null);
    assert(orgsReceived != null);
    return orgsReceived(failureOrNotes, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result toggleTrue(String currentUserID, String orgID),
    Result toggleFalse(String currentUserID, String orgID),
    Result getData(String currentUserID),
    Result orgsReceived(Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes,
        String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orgsReceived != null) {
      return orgsReceived(failureOrNotes, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result toggleTrue(ToggledTrue value),
    @required Result toggleFalse(ToggledFalse value),
    @required Result getData(GetData value),
    @required Result orgsReceived(_OrgsReceived value),
  }) {
    assert(toggleTrue != null);
    assert(toggleFalse != null);
    assert(getData != null);
    assert(orgsReceived != null);
    return orgsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result toggleTrue(ToggledTrue value),
    Result toggleFalse(ToggledFalse value),
    Result getData(GetData value),
    Result orgsReceived(_OrgsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orgsReceived != null) {
      return orgsReceived(this);
    }
    return orElse();
  }
}

abstract class _OrgsReceived implements OrgCalendarEvent {
  const factory _OrgsReceived(
      Either<OrgFailure, KtList<OrgCalendar>> failureOrNotes,
      String currentUserID) = _$_OrgsReceived;

  Either<OrgFailure, KtList<OrgCalendar>> get failureOrNotes;
  @override
  String get currentUserID;
  @override
  _$OrgsReceivedCopyWith<_OrgsReceived> get copyWith;
}

class _$OrgCalendarStateTearOff {
  const _$OrgCalendarStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

  LoadSuccess loadSuccess(
      KtList<OrgCalendar> organizations, KtList<OrgList> updatedOrgs) {
    return LoadSuccess(
      organizations,
      updatedOrgs,
    );
  }

  LoadFailure loadFailure(OrgFailure eventFailure) {
    return LoadFailure(
      eventFailure,
    );
  }
}

// ignore: unused_element
const $OrgCalendarState = _$OrgCalendarStateTearOff();

mixin _$OrgCalendarState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(
            KtList<OrgCalendar> organizations, KtList<OrgList> updatedOrgs),
    @required Result loadFailure(OrgFailure eventFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(
        KtList<OrgCalendar> organizations, KtList<OrgList> updatedOrgs),
    Result loadFailure(OrgFailure eventFailure),
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

abstract class $OrgCalendarStateCopyWith<$Res> {
  factory $OrgCalendarStateCopyWith(
          OrgCalendarState value, $Res Function(OrgCalendarState) then) =
      _$OrgCalendarStateCopyWithImpl<$Res>;
}

class _$OrgCalendarStateCopyWithImpl<$Res>
    implements $OrgCalendarStateCopyWith<$Res> {
  _$OrgCalendarStateCopyWithImpl(this._value, this._then);

  final OrgCalendarState _value;
  // ignore: unused_field
  final $Res Function(OrgCalendarState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$OrgCalendarStateCopyWithImpl<$Res>
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
    return 'OrgCalendarState.initial()';
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
    @required
        Result loadSuccess(
            KtList<OrgCalendar> organizations, KtList<OrgList> updatedOrgs),
    @required Result loadFailure(OrgFailure eventFailure),
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
    Result loadSuccess(
        KtList<OrgCalendar> organizations, KtList<OrgList> updatedOrgs),
    Result loadFailure(OrgFailure eventFailure),
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

abstract class Initial implements OrgCalendarState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$OrgCalendarStateCopyWithImpl<$Res>
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
    return 'OrgCalendarState.loadInProgress()';
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
    @required
        Result loadSuccess(
            KtList<OrgCalendar> organizations, KtList<OrgList> updatedOrgs),
    @required Result loadFailure(OrgFailure eventFailure),
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
    Result loadSuccess(
        KtList<OrgCalendar> organizations, KtList<OrgList> updatedOrgs),
    Result loadFailure(OrgFailure eventFailure),
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

abstract class DataTransferInProgress implements OrgCalendarState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<OrgCalendar> organizations, KtList<OrgList> updatedOrgs});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$OrgCalendarStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object organizations = freezed,
    Object updatedOrgs = freezed,
  }) {
    return _then(LoadSuccess(
      organizations == freezed
          ? _value.organizations
          : organizations as KtList<OrgCalendar>,
      updatedOrgs == freezed
          ? _value.updatedOrgs
          : updatedOrgs as KtList<OrgList>,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.organizations, this.updatedOrgs)
      : assert(organizations != null),
        assert(updatedOrgs != null);

  @override
  final KtList<OrgCalendar> organizations;
  @override
  final KtList<OrgList> updatedOrgs;

  @override
  String toString() {
    return 'OrgCalendarState.loadSuccess(organizations: $organizations, updatedOrgs: $updatedOrgs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.organizations, organizations) ||
                const DeepCollectionEquality()
                    .equals(other.organizations, organizations)) &&
            (identical(other.updatedOrgs, updatedOrgs) ||
                const DeepCollectionEquality()
                    .equals(other.updatedOrgs, updatedOrgs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(organizations) ^
      const DeepCollectionEquality().hash(updatedOrgs);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadSuccess(
            KtList<OrgCalendar> organizations, KtList<OrgList> updatedOrgs),
    @required Result loadFailure(OrgFailure eventFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(organizations, updatedOrgs);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(
        KtList<OrgCalendar> organizations, KtList<OrgList> updatedOrgs),
    Result loadFailure(OrgFailure eventFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(organizations, updatedOrgs);
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

abstract class LoadSuccess implements OrgCalendarState {
  const factory LoadSuccess(
          KtList<OrgCalendar> organizations, KtList<OrgList> updatedOrgs) =
      _$LoadSuccess;

  KtList<OrgCalendar> get organizations;
  KtList<OrgList> get updatedOrgs;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({OrgFailure eventFailure});

  $OrgFailureCopyWith<$Res> get eventFailure;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$OrgCalendarStateCopyWithImpl<$Res>
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
          : eventFailure as OrgFailure,
    ));
  }

  @override
  $OrgFailureCopyWith<$Res> get eventFailure {
    if (_value.eventFailure == null) {
      return null;
    }
    return $OrgFailureCopyWith<$Res>(_value.eventFailure, (value) {
      return _then(_value.copyWith(eventFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.eventFailure) : assert(eventFailure != null);

  @override
  final OrgFailure eventFailure;

  @override
  String toString() {
    return 'OrgCalendarState.loadFailure(eventFailure: $eventFailure)';
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
    @required
        Result loadSuccess(
            KtList<OrgCalendar> organizations, KtList<OrgList> updatedOrgs),
    @required Result loadFailure(OrgFailure eventFailure),
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
    Result loadSuccess(
        KtList<OrgCalendar> organizations, KtList<OrgList> updatedOrgs),
    Result loadFailure(OrgFailure eventFailure),
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

abstract class LoadFailure implements OrgCalendarState {
  const factory LoadFailure(OrgFailure eventFailure) = _$LoadFailure;

  OrgFailure get eventFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
