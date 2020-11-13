// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserListEventTearOff {
  const _$UserListEventTearOff();

  GetUserData getUserData(KtList<String> userIDList) {
    return GetUserData(
      userIDList,
    );
  }

  AddToRSVP getOrgData(KtList<String> orgIDList) {
    return AddToRSVP(
      orgIDList,
    );
  }
}

// ignore: unused_element
const $UserListEvent = _$UserListEventTearOff();

mixin _$UserListEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserData(KtList<String> userIDList),
    @required Result getOrgData(KtList<String> orgIDList),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserData(KtList<String> userIDList),
    Result getOrgData(KtList<String> orgIDList),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserData(GetUserData value),
    @required Result getOrgData(AddToRSVP value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserData(GetUserData value),
    Result getOrgData(AddToRSVP value),
    @required Result orElse(),
  });
}

abstract class $UserListEventCopyWith<$Res> {
  factory $UserListEventCopyWith(
          UserListEvent value, $Res Function(UserListEvent) then) =
      _$UserListEventCopyWithImpl<$Res>;
}

class _$UserListEventCopyWithImpl<$Res>
    implements $UserListEventCopyWith<$Res> {
  _$UserListEventCopyWithImpl(this._value, this._then);

  final UserListEvent _value;
  // ignore: unused_field
  final $Res Function(UserListEvent) _then;
}

abstract class $GetUserDataCopyWith<$Res> {
  factory $GetUserDataCopyWith(
          GetUserData value, $Res Function(GetUserData) then) =
      _$GetUserDataCopyWithImpl<$Res>;
  $Res call({KtList<String> userIDList});
}

class _$GetUserDataCopyWithImpl<$Res> extends _$UserListEventCopyWithImpl<$Res>
    implements $GetUserDataCopyWith<$Res> {
  _$GetUserDataCopyWithImpl(
      GetUserData _value, $Res Function(GetUserData) _then)
      : super(_value, (v) => _then(v as GetUserData));

  @override
  GetUserData get _value => super._value as GetUserData;

  @override
  $Res call({
    Object userIDList = freezed,
  }) {
    return _then(GetUserData(
      userIDList == freezed ? _value.userIDList : userIDList as KtList<String>,
    ));
  }
}

class _$GetUserData implements GetUserData {
  const _$GetUserData(this.userIDList) : assert(userIDList != null);

  @override
  final KtList<String> userIDList;

  @override
  String toString() {
    return 'UserListEvent.getUserData(userIDList: $userIDList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserData &&
            (identical(other.userIDList, userIDList) ||
                const DeepCollectionEquality()
                    .equals(other.userIDList, userIDList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userIDList);

  @override
  $GetUserDataCopyWith<GetUserData> get copyWith =>
      _$GetUserDataCopyWithImpl<GetUserData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserData(KtList<String> userIDList),
    @required Result getOrgData(KtList<String> orgIDList),
  }) {
    assert(getUserData != null);
    assert(getOrgData != null);
    return getUserData(userIDList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserData(KtList<String> userIDList),
    Result getOrgData(KtList<String> orgIDList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserData != null) {
      return getUserData(userIDList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserData(GetUserData value),
    @required Result getOrgData(AddToRSVP value),
  }) {
    assert(getUserData != null);
    assert(getOrgData != null);
    return getUserData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserData(GetUserData value),
    Result getOrgData(AddToRSVP value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserData != null) {
      return getUserData(this);
    }
    return orElse();
  }
}

abstract class GetUserData implements UserListEvent {
  const factory GetUserData(KtList<String> userIDList) = _$GetUserData;

  KtList<String> get userIDList;
  $GetUserDataCopyWith<GetUserData> get copyWith;
}

abstract class $AddToRSVPCopyWith<$Res> {
  factory $AddToRSVPCopyWith(AddToRSVP value, $Res Function(AddToRSVP) then) =
      _$AddToRSVPCopyWithImpl<$Res>;
  $Res call({KtList<String> orgIDList});
}

class _$AddToRSVPCopyWithImpl<$Res> extends _$UserListEventCopyWithImpl<$Res>
    implements $AddToRSVPCopyWith<$Res> {
  _$AddToRSVPCopyWithImpl(AddToRSVP _value, $Res Function(AddToRSVP) _then)
      : super(_value, (v) => _then(v as AddToRSVP));

  @override
  AddToRSVP get _value => super._value as AddToRSVP;

  @override
  $Res call({
    Object orgIDList = freezed,
  }) {
    return _then(AddToRSVP(
      orgIDList == freezed ? _value.orgIDList : orgIDList as KtList<String>,
    ));
  }
}

class _$AddToRSVP implements AddToRSVP {
  const _$AddToRSVP(this.orgIDList) : assert(orgIDList != null);

  @override
  final KtList<String> orgIDList;

  @override
  String toString() {
    return 'UserListEvent.getOrgData(orgIDList: $orgIDList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddToRSVP &&
            (identical(other.orgIDList, orgIDList) ||
                const DeepCollectionEquality()
                    .equals(other.orgIDList, orgIDList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orgIDList);

  @override
  $AddToRSVPCopyWith<AddToRSVP> get copyWith =>
      _$AddToRSVPCopyWithImpl<AddToRSVP>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserData(KtList<String> userIDList),
    @required Result getOrgData(KtList<String> orgIDList),
  }) {
    assert(getUserData != null);
    assert(getOrgData != null);
    return getOrgData(orgIDList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserData(KtList<String> userIDList),
    Result getOrgData(KtList<String> orgIDList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getOrgData != null) {
      return getOrgData(orgIDList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserData(GetUserData value),
    @required Result getOrgData(AddToRSVP value),
  }) {
    assert(getUserData != null);
    assert(getOrgData != null);
    return getOrgData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserData(GetUserData value),
    Result getOrgData(AddToRSVP value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getOrgData != null) {
      return getOrgData(this);
    }
    return orElse();
  }
}

abstract class AddToRSVP implements UserListEvent {
  const factory AddToRSVP(KtList<String> orgIDList) = _$AddToRSVP;

  KtList<String> get orgIDList;
  $AddToRSVPCopyWith<AddToRSVP> get copyWith;
}

class _$UserListStateTearOff {
  const _$UserListStateTearOff();

  _UserListState call(
      {@required bool isOrgList,
      @required KtList<UserList> users,
      @required KtList<OrgList> orgs}) {
    return _UserListState(
      isOrgList: isOrgList,
      users: users,
      orgs: orgs,
    );
  }
}

// ignore: unused_element
const $UserListState = _$UserListStateTearOff();

mixin _$UserListState {
  bool get isOrgList;
  KtList<UserList> get users;
  KtList<OrgList> get orgs;

  $UserListStateCopyWith<UserListState> get copyWith;
}

abstract class $UserListStateCopyWith<$Res> {
  factory $UserListStateCopyWith(
          UserListState value, $Res Function(UserListState) then) =
      _$UserListStateCopyWithImpl<$Res>;
  $Res call({bool isOrgList, KtList<UserList> users, KtList<OrgList> orgs});
}

class _$UserListStateCopyWithImpl<$Res>
    implements $UserListStateCopyWith<$Res> {
  _$UserListStateCopyWithImpl(this._value, this._then);

  final UserListState _value;
  // ignore: unused_field
  final $Res Function(UserListState) _then;

  @override
  $Res call({
    Object isOrgList = freezed,
    Object users = freezed,
    Object orgs = freezed,
  }) {
    return _then(_value.copyWith(
      isOrgList: isOrgList == freezed ? _value.isOrgList : isOrgList as bool,
      users: users == freezed ? _value.users : users as KtList<UserList>,
      orgs: orgs == freezed ? _value.orgs : orgs as KtList<OrgList>,
    ));
  }
}

abstract class _$UserListStateCopyWith<$Res>
    implements $UserListStateCopyWith<$Res> {
  factory _$UserListStateCopyWith(
          _UserListState value, $Res Function(_UserListState) then) =
      __$UserListStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isOrgList, KtList<UserList> users, KtList<OrgList> orgs});
}

class __$UserListStateCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res>
    implements _$UserListStateCopyWith<$Res> {
  __$UserListStateCopyWithImpl(
      _UserListState _value, $Res Function(_UserListState) _then)
      : super(_value, (v) => _then(v as _UserListState));

  @override
  _UserListState get _value => super._value as _UserListState;

  @override
  $Res call({
    Object isOrgList = freezed,
    Object users = freezed,
    Object orgs = freezed,
  }) {
    return _then(_UserListState(
      isOrgList: isOrgList == freezed ? _value.isOrgList : isOrgList as bool,
      users: users == freezed ? _value.users : users as KtList<UserList>,
      orgs: orgs == freezed ? _value.orgs : orgs as KtList<OrgList>,
    ));
  }
}

class _$_UserListState implements _UserListState {
  const _$_UserListState(
      {@required this.isOrgList, @required this.users, @required this.orgs})
      : assert(isOrgList != null),
        assert(users != null),
        assert(orgs != null);

  @override
  final bool isOrgList;
  @override
  final KtList<UserList> users;
  @override
  final KtList<OrgList> orgs;

  @override
  String toString() {
    return 'UserListState(isOrgList: $isOrgList, users: $users, orgs: $orgs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserListState &&
            (identical(other.isOrgList, isOrgList) ||
                const DeepCollectionEquality()
                    .equals(other.isOrgList, isOrgList)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.orgs, orgs) ||
                const DeepCollectionEquality().equals(other.orgs, orgs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isOrgList) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(orgs);

  @override
  _$UserListStateCopyWith<_UserListState> get copyWith =>
      __$UserListStateCopyWithImpl<_UserListState>(this, _$identity);
}

abstract class _UserListState implements UserListState {
  const factory _UserListState(
      {@required bool isOrgList,
      @required KtList<UserList> users,
      @required KtList<OrgList> orgs}) = _$_UserListState;

  @override
  bool get isOrgList;
  @override
  KtList<UserList> get users;
  @override
  KtList<OrgList> get orgs;
  @override
  _$UserListStateCopyWith<_UserListState> get copyWith;
}
