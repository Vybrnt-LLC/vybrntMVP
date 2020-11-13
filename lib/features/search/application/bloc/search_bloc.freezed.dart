// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  GetUserSearch getUserSearch(String name) {
    return GetUserSearch(
      name,
    );
  }

  GetSearch getSearch(String name) {
    return GetSearch(
      name,
    );
  }

  GetOrgSearch getOrgSearch(String name) {
    return GetOrgSearch(
      name,
    );
  }

  GetVerifiedOrgSearch getVerifiedOrgSearch(String name) {
    return GetVerifiedOrgSearch(
      name,
    );
  }

  UsersReceived usersReceived(KtList<UserList> users) {
    return UsersReceived(
      users,
    );
  }

  OrgsReceived orgsReceived(KtList<OrgList> orgs) {
    return OrgsReceived(
      orgs,
    );
  }

  VerifiedOrgsReceived verifiedOrgsReceived(KtList<OrgList> verifiedOrgs) {
    return VerifiedOrgsReceived(
      verifiedOrgs,
    );
  }
}

// ignore: unused_element
const $SearchEvent = _$SearchEventTearOff();

mixin _$SearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserSearch(String name),
    @required Result getSearch(String name),
    @required Result getOrgSearch(String name),
    @required Result getVerifiedOrgSearch(String name),
    @required Result usersReceived(KtList<UserList> users),
    @required Result orgsReceived(KtList<OrgList> orgs),
    @required Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserSearch(String name),
    Result getSearch(String name),
    Result getOrgSearch(String name),
    Result getVerifiedOrgSearch(String name),
    Result usersReceived(KtList<UserList> users),
    Result orgsReceived(KtList<OrgList> orgs),
    Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserSearch(GetUserSearch value),
    @required Result getSearch(GetSearch value),
    @required Result getOrgSearch(GetOrgSearch value),
    @required Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    @required Result usersReceived(UsersReceived value),
    @required Result orgsReceived(OrgsReceived value),
    @required Result verifiedOrgsReceived(VerifiedOrgsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserSearch(GetUserSearch value),
    Result getSearch(GetSearch value),
    Result getOrgSearch(GetOrgSearch value),
    Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    Result usersReceived(UsersReceived value),
    Result orgsReceived(OrgsReceived value),
    Result verifiedOrgsReceived(VerifiedOrgsReceived value),
    @required Result orElse(),
  });
}

abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

abstract class $GetUserSearchCopyWith<$Res> {
  factory $GetUserSearchCopyWith(
          GetUserSearch value, $Res Function(GetUserSearch) then) =
      _$GetUserSearchCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$GetUserSearchCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $GetUserSearchCopyWith<$Res> {
  _$GetUserSearchCopyWithImpl(
      GetUserSearch _value, $Res Function(GetUserSearch) _then)
      : super(_value, (v) => _then(v as GetUserSearch));

  @override
  GetUserSearch get _value => super._value as GetUserSearch;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(GetUserSearch(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$GetUserSearch implements GetUserSearch {
  const _$GetUserSearch(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'SearchEvent.getUserSearch(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserSearch &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $GetUserSearchCopyWith<GetUserSearch> get copyWith =>
      _$GetUserSearchCopyWithImpl<GetUserSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserSearch(String name),
    @required Result getSearch(String name),
    @required Result getOrgSearch(String name),
    @required Result getVerifiedOrgSearch(String name),
    @required Result usersReceived(KtList<UserList> users),
    @required Result orgsReceived(KtList<OrgList> orgs),
    @required Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
  }) {
    assert(getUserSearch != null);
    assert(getSearch != null);
    assert(getOrgSearch != null);
    assert(getVerifiedOrgSearch != null);
    assert(usersReceived != null);
    assert(orgsReceived != null);
    assert(verifiedOrgsReceived != null);
    return getUserSearch(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserSearch(String name),
    Result getSearch(String name),
    Result getOrgSearch(String name),
    Result getVerifiedOrgSearch(String name),
    Result usersReceived(KtList<UserList> users),
    Result orgsReceived(KtList<OrgList> orgs),
    Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserSearch != null) {
      return getUserSearch(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserSearch(GetUserSearch value),
    @required Result getSearch(GetSearch value),
    @required Result getOrgSearch(GetOrgSearch value),
    @required Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    @required Result usersReceived(UsersReceived value),
    @required Result orgsReceived(OrgsReceived value),
    @required Result verifiedOrgsReceived(VerifiedOrgsReceived value),
  }) {
    assert(getUserSearch != null);
    assert(getSearch != null);
    assert(getOrgSearch != null);
    assert(getVerifiedOrgSearch != null);
    assert(usersReceived != null);
    assert(orgsReceived != null);
    assert(verifiedOrgsReceived != null);
    return getUserSearch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserSearch(GetUserSearch value),
    Result getSearch(GetSearch value),
    Result getOrgSearch(GetOrgSearch value),
    Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    Result usersReceived(UsersReceived value),
    Result orgsReceived(OrgsReceived value),
    Result verifiedOrgsReceived(VerifiedOrgsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserSearch != null) {
      return getUserSearch(this);
    }
    return orElse();
  }
}

abstract class GetUserSearch implements SearchEvent {
  const factory GetUserSearch(String name) = _$GetUserSearch;

  String get name;
  $GetUserSearchCopyWith<GetUserSearch> get copyWith;
}

abstract class $GetSearchCopyWith<$Res> {
  factory $GetSearchCopyWith(GetSearch value, $Res Function(GetSearch) then) =
      _$GetSearchCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$GetSearchCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $GetSearchCopyWith<$Res> {
  _$GetSearchCopyWithImpl(GetSearch _value, $Res Function(GetSearch) _then)
      : super(_value, (v) => _then(v as GetSearch));

  @override
  GetSearch get _value => super._value as GetSearch;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(GetSearch(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$GetSearch implements GetSearch {
  const _$GetSearch(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'SearchEvent.getSearch(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSearch &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $GetSearchCopyWith<GetSearch> get copyWith =>
      _$GetSearchCopyWithImpl<GetSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserSearch(String name),
    @required Result getSearch(String name),
    @required Result getOrgSearch(String name),
    @required Result getVerifiedOrgSearch(String name),
    @required Result usersReceived(KtList<UserList> users),
    @required Result orgsReceived(KtList<OrgList> orgs),
    @required Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
  }) {
    assert(getUserSearch != null);
    assert(getSearch != null);
    assert(getOrgSearch != null);
    assert(getVerifiedOrgSearch != null);
    assert(usersReceived != null);
    assert(orgsReceived != null);
    assert(verifiedOrgsReceived != null);
    return getSearch(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserSearch(String name),
    Result getSearch(String name),
    Result getOrgSearch(String name),
    Result getVerifiedOrgSearch(String name),
    Result usersReceived(KtList<UserList> users),
    Result orgsReceived(KtList<OrgList> orgs),
    Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSearch != null) {
      return getSearch(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserSearch(GetUserSearch value),
    @required Result getSearch(GetSearch value),
    @required Result getOrgSearch(GetOrgSearch value),
    @required Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    @required Result usersReceived(UsersReceived value),
    @required Result orgsReceived(OrgsReceived value),
    @required Result verifiedOrgsReceived(VerifiedOrgsReceived value),
  }) {
    assert(getUserSearch != null);
    assert(getSearch != null);
    assert(getOrgSearch != null);
    assert(getVerifiedOrgSearch != null);
    assert(usersReceived != null);
    assert(orgsReceived != null);
    assert(verifiedOrgsReceived != null);
    return getSearch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserSearch(GetUserSearch value),
    Result getSearch(GetSearch value),
    Result getOrgSearch(GetOrgSearch value),
    Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    Result usersReceived(UsersReceived value),
    Result orgsReceived(OrgsReceived value),
    Result verifiedOrgsReceived(VerifiedOrgsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSearch != null) {
      return getSearch(this);
    }
    return orElse();
  }
}

abstract class GetSearch implements SearchEvent {
  const factory GetSearch(String name) = _$GetSearch;

  String get name;
  $GetSearchCopyWith<GetSearch> get copyWith;
}

abstract class $GetOrgSearchCopyWith<$Res> {
  factory $GetOrgSearchCopyWith(
          GetOrgSearch value, $Res Function(GetOrgSearch) then) =
      _$GetOrgSearchCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$GetOrgSearchCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $GetOrgSearchCopyWith<$Res> {
  _$GetOrgSearchCopyWithImpl(
      GetOrgSearch _value, $Res Function(GetOrgSearch) _then)
      : super(_value, (v) => _then(v as GetOrgSearch));

  @override
  GetOrgSearch get _value => super._value as GetOrgSearch;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(GetOrgSearch(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$GetOrgSearch implements GetOrgSearch {
  const _$GetOrgSearch(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'SearchEvent.getOrgSearch(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetOrgSearch &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $GetOrgSearchCopyWith<GetOrgSearch> get copyWith =>
      _$GetOrgSearchCopyWithImpl<GetOrgSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserSearch(String name),
    @required Result getSearch(String name),
    @required Result getOrgSearch(String name),
    @required Result getVerifiedOrgSearch(String name),
    @required Result usersReceived(KtList<UserList> users),
    @required Result orgsReceived(KtList<OrgList> orgs),
    @required Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
  }) {
    assert(getUserSearch != null);
    assert(getSearch != null);
    assert(getOrgSearch != null);
    assert(getVerifiedOrgSearch != null);
    assert(usersReceived != null);
    assert(orgsReceived != null);
    assert(verifiedOrgsReceived != null);
    return getOrgSearch(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserSearch(String name),
    Result getSearch(String name),
    Result getOrgSearch(String name),
    Result getVerifiedOrgSearch(String name),
    Result usersReceived(KtList<UserList> users),
    Result orgsReceived(KtList<OrgList> orgs),
    Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getOrgSearch != null) {
      return getOrgSearch(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserSearch(GetUserSearch value),
    @required Result getSearch(GetSearch value),
    @required Result getOrgSearch(GetOrgSearch value),
    @required Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    @required Result usersReceived(UsersReceived value),
    @required Result orgsReceived(OrgsReceived value),
    @required Result verifiedOrgsReceived(VerifiedOrgsReceived value),
  }) {
    assert(getUserSearch != null);
    assert(getSearch != null);
    assert(getOrgSearch != null);
    assert(getVerifiedOrgSearch != null);
    assert(usersReceived != null);
    assert(orgsReceived != null);
    assert(verifiedOrgsReceived != null);
    return getOrgSearch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserSearch(GetUserSearch value),
    Result getSearch(GetSearch value),
    Result getOrgSearch(GetOrgSearch value),
    Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    Result usersReceived(UsersReceived value),
    Result orgsReceived(OrgsReceived value),
    Result verifiedOrgsReceived(VerifiedOrgsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getOrgSearch != null) {
      return getOrgSearch(this);
    }
    return orElse();
  }
}

abstract class GetOrgSearch implements SearchEvent {
  const factory GetOrgSearch(String name) = _$GetOrgSearch;

  String get name;
  $GetOrgSearchCopyWith<GetOrgSearch> get copyWith;
}

abstract class $GetVerifiedOrgSearchCopyWith<$Res> {
  factory $GetVerifiedOrgSearchCopyWith(GetVerifiedOrgSearch value,
          $Res Function(GetVerifiedOrgSearch) then) =
      _$GetVerifiedOrgSearchCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$GetVerifiedOrgSearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $GetVerifiedOrgSearchCopyWith<$Res> {
  _$GetVerifiedOrgSearchCopyWithImpl(
      GetVerifiedOrgSearch _value, $Res Function(GetVerifiedOrgSearch) _then)
      : super(_value, (v) => _then(v as GetVerifiedOrgSearch));

  @override
  GetVerifiedOrgSearch get _value => super._value as GetVerifiedOrgSearch;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(GetVerifiedOrgSearch(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$GetVerifiedOrgSearch implements GetVerifiedOrgSearch {
  const _$GetVerifiedOrgSearch(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'SearchEvent.getVerifiedOrgSearch(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetVerifiedOrgSearch &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $GetVerifiedOrgSearchCopyWith<GetVerifiedOrgSearch> get copyWith =>
      _$GetVerifiedOrgSearchCopyWithImpl<GetVerifiedOrgSearch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserSearch(String name),
    @required Result getSearch(String name),
    @required Result getOrgSearch(String name),
    @required Result getVerifiedOrgSearch(String name),
    @required Result usersReceived(KtList<UserList> users),
    @required Result orgsReceived(KtList<OrgList> orgs),
    @required Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
  }) {
    assert(getUserSearch != null);
    assert(getSearch != null);
    assert(getOrgSearch != null);
    assert(getVerifiedOrgSearch != null);
    assert(usersReceived != null);
    assert(orgsReceived != null);
    assert(verifiedOrgsReceived != null);
    return getVerifiedOrgSearch(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserSearch(String name),
    Result getSearch(String name),
    Result getOrgSearch(String name),
    Result getVerifiedOrgSearch(String name),
    Result usersReceived(KtList<UserList> users),
    Result orgsReceived(KtList<OrgList> orgs),
    Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getVerifiedOrgSearch != null) {
      return getVerifiedOrgSearch(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserSearch(GetUserSearch value),
    @required Result getSearch(GetSearch value),
    @required Result getOrgSearch(GetOrgSearch value),
    @required Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    @required Result usersReceived(UsersReceived value),
    @required Result orgsReceived(OrgsReceived value),
    @required Result verifiedOrgsReceived(VerifiedOrgsReceived value),
  }) {
    assert(getUserSearch != null);
    assert(getSearch != null);
    assert(getOrgSearch != null);
    assert(getVerifiedOrgSearch != null);
    assert(usersReceived != null);
    assert(orgsReceived != null);
    assert(verifiedOrgsReceived != null);
    return getVerifiedOrgSearch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserSearch(GetUserSearch value),
    Result getSearch(GetSearch value),
    Result getOrgSearch(GetOrgSearch value),
    Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    Result usersReceived(UsersReceived value),
    Result orgsReceived(OrgsReceived value),
    Result verifiedOrgsReceived(VerifiedOrgsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getVerifiedOrgSearch != null) {
      return getVerifiedOrgSearch(this);
    }
    return orElse();
  }
}

abstract class GetVerifiedOrgSearch implements SearchEvent {
  const factory GetVerifiedOrgSearch(String name) = _$GetVerifiedOrgSearch;

  String get name;
  $GetVerifiedOrgSearchCopyWith<GetVerifiedOrgSearch> get copyWith;
}

abstract class $UsersReceivedCopyWith<$Res> {
  factory $UsersReceivedCopyWith(
          UsersReceived value, $Res Function(UsersReceived) then) =
      _$UsersReceivedCopyWithImpl<$Res>;
  $Res call({KtList<UserList> users});
}

class _$UsersReceivedCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $UsersReceivedCopyWith<$Res> {
  _$UsersReceivedCopyWithImpl(
      UsersReceived _value, $Res Function(UsersReceived) _then)
      : super(_value, (v) => _then(v as UsersReceived));

  @override
  UsersReceived get _value => super._value as UsersReceived;

  @override
  $Res call({
    Object users = freezed,
  }) {
    return _then(UsersReceived(
      users == freezed ? _value.users : users as KtList<UserList>,
    ));
  }
}

class _$UsersReceived implements UsersReceived {
  const _$UsersReceived(this.users) : assert(users != null);

  @override
  final KtList<UserList> users;

  @override
  String toString() {
    return 'SearchEvent.usersReceived(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersReceived &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @override
  $UsersReceivedCopyWith<UsersReceived> get copyWith =>
      _$UsersReceivedCopyWithImpl<UsersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserSearch(String name),
    @required Result getSearch(String name),
    @required Result getOrgSearch(String name),
    @required Result getVerifiedOrgSearch(String name),
    @required Result usersReceived(KtList<UserList> users),
    @required Result orgsReceived(KtList<OrgList> orgs),
    @required Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
  }) {
    assert(getUserSearch != null);
    assert(getSearch != null);
    assert(getOrgSearch != null);
    assert(getVerifiedOrgSearch != null);
    assert(usersReceived != null);
    assert(orgsReceived != null);
    assert(verifiedOrgsReceived != null);
    return usersReceived(users);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserSearch(String name),
    Result getSearch(String name),
    Result getOrgSearch(String name),
    Result getVerifiedOrgSearch(String name),
    Result usersReceived(KtList<UserList> users),
    Result orgsReceived(KtList<OrgList> orgs),
    Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usersReceived != null) {
      return usersReceived(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserSearch(GetUserSearch value),
    @required Result getSearch(GetSearch value),
    @required Result getOrgSearch(GetOrgSearch value),
    @required Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    @required Result usersReceived(UsersReceived value),
    @required Result orgsReceived(OrgsReceived value),
    @required Result verifiedOrgsReceived(VerifiedOrgsReceived value),
  }) {
    assert(getUserSearch != null);
    assert(getSearch != null);
    assert(getOrgSearch != null);
    assert(getVerifiedOrgSearch != null);
    assert(usersReceived != null);
    assert(orgsReceived != null);
    assert(verifiedOrgsReceived != null);
    return usersReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserSearch(GetUserSearch value),
    Result getSearch(GetSearch value),
    Result getOrgSearch(GetOrgSearch value),
    Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    Result usersReceived(UsersReceived value),
    Result orgsReceived(OrgsReceived value),
    Result verifiedOrgsReceived(VerifiedOrgsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usersReceived != null) {
      return usersReceived(this);
    }
    return orElse();
  }
}

abstract class UsersReceived implements SearchEvent {
  const factory UsersReceived(KtList<UserList> users) = _$UsersReceived;

  KtList<UserList> get users;
  $UsersReceivedCopyWith<UsersReceived> get copyWith;
}

abstract class $OrgsReceivedCopyWith<$Res> {
  factory $OrgsReceivedCopyWith(
          OrgsReceived value, $Res Function(OrgsReceived) then) =
      _$OrgsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<OrgList> orgs});
}

class _$OrgsReceivedCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $OrgsReceivedCopyWith<$Res> {
  _$OrgsReceivedCopyWithImpl(
      OrgsReceived _value, $Res Function(OrgsReceived) _then)
      : super(_value, (v) => _then(v as OrgsReceived));

  @override
  OrgsReceived get _value => super._value as OrgsReceived;

  @override
  $Res call({
    Object orgs = freezed,
  }) {
    return _then(OrgsReceived(
      orgs == freezed ? _value.orgs : orgs as KtList<OrgList>,
    ));
  }
}

class _$OrgsReceived implements OrgsReceived {
  const _$OrgsReceived(this.orgs) : assert(orgs != null);

  @override
  final KtList<OrgList> orgs;

  @override
  String toString() {
    return 'SearchEvent.orgsReceived(orgs: $orgs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrgsReceived &&
            (identical(other.orgs, orgs) ||
                const DeepCollectionEquality().equals(other.orgs, orgs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orgs);

  @override
  $OrgsReceivedCopyWith<OrgsReceived> get copyWith =>
      _$OrgsReceivedCopyWithImpl<OrgsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserSearch(String name),
    @required Result getSearch(String name),
    @required Result getOrgSearch(String name),
    @required Result getVerifiedOrgSearch(String name),
    @required Result usersReceived(KtList<UserList> users),
    @required Result orgsReceived(KtList<OrgList> orgs),
    @required Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
  }) {
    assert(getUserSearch != null);
    assert(getSearch != null);
    assert(getOrgSearch != null);
    assert(getVerifiedOrgSearch != null);
    assert(usersReceived != null);
    assert(orgsReceived != null);
    assert(verifiedOrgsReceived != null);
    return orgsReceived(orgs);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserSearch(String name),
    Result getSearch(String name),
    Result getOrgSearch(String name),
    Result getVerifiedOrgSearch(String name),
    Result usersReceived(KtList<UserList> users),
    Result orgsReceived(KtList<OrgList> orgs),
    Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orgsReceived != null) {
      return orgsReceived(orgs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserSearch(GetUserSearch value),
    @required Result getSearch(GetSearch value),
    @required Result getOrgSearch(GetOrgSearch value),
    @required Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    @required Result usersReceived(UsersReceived value),
    @required Result orgsReceived(OrgsReceived value),
    @required Result verifiedOrgsReceived(VerifiedOrgsReceived value),
  }) {
    assert(getUserSearch != null);
    assert(getSearch != null);
    assert(getOrgSearch != null);
    assert(getVerifiedOrgSearch != null);
    assert(usersReceived != null);
    assert(orgsReceived != null);
    assert(verifiedOrgsReceived != null);
    return orgsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserSearch(GetUserSearch value),
    Result getSearch(GetSearch value),
    Result getOrgSearch(GetOrgSearch value),
    Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    Result usersReceived(UsersReceived value),
    Result orgsReceived(OrgsReceived value),
    Result verifiedOrgsReceived(VerifiedOrgsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orgsReceived != null) {
      return orgsReceived(this);
    }
    return orElse();
  }
}

abstract class OrgsReceived implements SearchEvent {
  const factory OrgsReceived(KtList<OrgList> orgs) = _$OrgsReceived;

  KtList<OrgList> get orgs;
  $OrgsReceivedCopyWith<OrgsReceived> get copyWith;
}

abstract class $VerifiedOrgsReceivedCopyWith<$Res> {
  factory $VerifiedOrgsReceivedCopyWith(VerifiedOrgsReceived value,
          $Res Function(VerifiedOrgsReceived) then) =
      _$VerifiedOrgsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<OrgList> verifiedOrgs});
}

class _$VerifiedOrgsReceivedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $VerifiedOrgsReceivedCopyWith<$Res> {
  _$VerifiedOrgsReceivedCopyWithImpl(
      VerifiedOrgsReceived _value, $Res Function(VerifiedOrgsReceived) _then)
      : super(_value, (v) => _then(v as VerifiedOrgsReceived));

  @override
  VerifiedOrgsReceived get _value => super._value as VerifiedOrgsReceived;

  @override
  $Res call({
    Object verifiedOrgs = freezed,
  }) {
    return _then(VerifiedOrgsReceived(
      verifiedOrgs == freezed
          ? _value.verifiedOrgs
          : verifiedOrgs as KtList<OrgList>,
    ));
  }
}

class _$VerifiedOrgsReceived implements VerifiedOrgsReceived {
  const _$VerifiedOrgsReceived(this.verifiedOrgs)
      : assert(verifiedOrgs != null);

  @override
  final KtList<OrgList> verifiedOrgs;

  @override
  String toString() {
    return 'SearchEvent.verifiedOrgsReceived(verifiedOrgs: $verifiedOrgs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerifiedOrgsReceived &&
            (identical(other.verifiedOrgs, verifiedOrgs) ||
                const DeepCollectionEquality()
                    .equals(other.verifiedOrgs, verifiedOrgs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(verifiedOrgs);

  @override
  $VerifiedOrgsReceivedCopyWith<VerifiedOrgsReceived> get copyWith =>
      _$VerifiedOrgsReceivedCopyWithImpl<VerifiedOrgsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserSearch(String name),
    @required Result getSearch(String name),
    @required Result getOrgSearch(String name),
    @required Result getVerifiedOrgSearch(String name),
    @required Result usersReceived(KtList<UserList> users),
    @required Result orgsReceived(KtList<OrgList> orgs),
    @required Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
  }) {
    assert(getUserSearch != null);
    assert(getSearch != null);
    assert(getOrgSearch != null);
    assert(getVerifiedOrgSearch != null);
    assert(usersReceived != null);
    assert(orgsReceived != null);
    assert(verifiedOrgsReceived != null);
    return verifiedOrgsReceived(verifiedOrgs);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserSearch(String name),
    Result getSearch(String name),
    Result getOrgSearch(String name),
    Result getVerifiedOrgSearch(String name),
    Result usersReceived(KtList<UserList> users),
    Result orgsReceived(KtList<OrgList> orgs),
    Result verifiedOrgsReceived(KtList<OrgList> verifiedOrgs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifiedOrgsReceived != null) {
      return verifiedOrgsReceived(verifiedOrgs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserSearch(GetUserSearch value),
    @required Result getSearch(GetSearch value),
    @required Result getOrgSearch(GetOrgSearch value),
    @required Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    @required Result usersReceived(UsersReceived value),
    @required Result orgsReceived(OrgsReceived value),
    @required Result verifiedOrgsReceived(VerifiedOrgsReceived value),
  }) {
    assert(getUserSearch != null);
    assert(getSearch != null);
    assert(getOrgSearch != null);
    assert(getVerifiedOrgSearch != null);
    assert(usersReceived != null);
    assert(orgsReceived != null);
    assert(verifiedOrgsReceived != null);
    return verifiedOrgsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserSearch(GetUserSearch value),
    Result getSearch(GetSearch value),
    Result getOrgSearch(GetOrgSearch value),
    Result getVerifiedOrgSearch(GetVerifiedOrgSearch value),
    Result usersReceived(UsersReceived value),
    Result orgsReceived(OrgsReceived value),
    Result verifiedOrgsReceived(VerifiedOrgsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifiedOrgsReceived != null) {
      return verifiedOrgsReceived(this);
    }
    return orElse();
  }
}

abstract class VerifiedOrgsReceived implements SearchEvent {
  const factory VerifiedOrgsReceived(KtList<OrgList> verifiedOrgs) =
      _$VerifiedOrgsReceived;

  KtList<OrgList> get verifiedOrgs;
  $VerifiedOrgsReceivedCopyWith<VerifiedOrgsReceived> get copyWith;
}

class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchState call(
      {@required KtList<UserList> users,
      @required KtList<OrgList> orgs,
      @required KtList<OrgList> verifiedOrgs}) {
    return _SearchState(
      users: users,
      orgs: orgs,
      verifiedOrgs: verifiedOrgs,
    );
  }
}

// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

mixin _$SearchState {
  KtList<UserList> get users;
  KtList<OrgList> get orgs;
  KtList<OrgList> get verifiedOrgs;

  $SearchStateCopyWith<SearchState> get copyWith;
}

abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<UserList> users,
      KtList<OrgList> orgs,
      KtList<OrgList> verifiedOrgs});
}

class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object users = freezed,
    Object orgs = freezed,
    Object verifiedOrgs = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed ? _value.users : users as KtList<UserList>,
      orgs: orgs == freezed ? _value.orgs : orgs as KtList<OrgList>,
      verifiedOrgs: verifiedOrgs == freezed
          ? _value.verifiedOrgs
          : verifiedOrgs as KtList<OrgList>,
    ));
  }
}

abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<UserList> users,
      KtList<OrgList> orgs,
      KtList<OrgList> verifiedOrgs});
}

class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object users = freezed,
    Object orgs = freezed,
    Object verifiedOrgs = freezed,
  }) {
    return _then(_SearchState(
      users: users == freezed ? _value.users : users as KtList<UserList>,
      orgs: orgs == freezed ? _value.orgs : orgs as KtList<OrgList>,
      verifiedOrgs: verifiedOrgs == freezed
          ? _value.verifiedOrgs
          : verifiedOrgs as KtList<OrgList>,
    ));
  }
}

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {@required this.users, @required this.orgs, @required this.verifiedOrgs})
      : assert(users != null),
        assert(orgs != null),
        assert(verifiedOrgs != null);

  @override
  final KtList<UserList> users;
  @override
  final KtList<OrgList> orgs;
  @override
  final KtList<OrgList> verifiedOrgs;

  @override
  String toString() {
    return 'SearchState(users: $users, orgs: $orgs, verifiedOrgs: $verifiedOrgs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchState &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.orgs, orgs) ||
                const DeepCollectionEquality().equals(other.orgs, orgs)) &&
            (identical(other.verifiedOrgs, verifiedOrgs) ||
                const DeepCollectionEquality()
                    .equals(other.verifiedOrgs, verifiedOrgs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(orgs) ^
      const DeepCollectionEquality().hash(verifiedOrgs);

  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {@required KtList<UserList> users,
      @required KtList<OrgList> orgs,
      @required KtList<OrgList> verifiedOrgs}) = _$_SearchState;

  @override
  KtList<UserList> get users;
  @override
  KtList<OrgList> get orgs;
  @override
  KtList<OrgList> get verifiedOrgs;
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith;
}
