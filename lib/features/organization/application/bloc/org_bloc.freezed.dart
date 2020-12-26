// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'org_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OrgEventTearOff {
  const _$OrgEventTearOff();

  GetOrgData getData({String orgID, String currentUserID}) {
    return GetOrgData(
      orgID: orgID,
      currentUserID: currentUserID,
    );
  }

  AddFollower addFollower(String orgID, String currentUserID) {
    return AddFollower(
      orgID,
      currentUserID,
    );
  }

  RemoveFollower removeFollower(String orgID, String currentUserID) {
    return RemoveFollower(
      orgID,
      currentUserID,
    );
  }

  AdminsReceived adminsReceived(KtList<String> admins, String currentUserID) {
    return AdminsReceived(
      admins,
      currentUserID,
    );
  }

  MemberIDListReceived membersReceived(
      KtList<String> userIDList, String currentUserID) {
    return MemberIDListReceived(
      userIDList,
      currentUserID,
    );
  }

  AddUserToNotify addUserToNotify(String orgID) {
    return AddUserToNotify(
      orgID,
    );
  }

  RemoveUserFromNotify removeUserFromNotify(String orgID) {
    return RemoveUserFromNotify(
      orgID,
    );
  }

  BlockOrg blockOrg(String orgID) {
    return BlockOrg(
      orgID,
    );
  }

  UnBlockOrg unBlockOrg(String orgID) {
    return UnBlockOrg(
      orgID,
    );
  }
}

// ignore: unused_element
const $OrgEvent = _$OrgEventTearOff();

mixin _$OrgEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, String currentUserID),
    @required Result addFollower(String orgID, String currentUserID),
    @required Result removeFollower(String orgID, String currentUserID),
    @required
        Result adminsReceived(KtList<String> admins, String currentUserID),
    @required
        Result membersReceived(KtList<String> userIDList, String currentUserID),
    @required Result addUserToNotify(String orgID),
    @required Result removeUserFromNotify(String orgID),
    @required Result blockOrg(String orgID),
    @required Result unBlockOrg(String orgID),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, String currentUserID),
    Result addFollower(String orgID, String currentUserID),
    Result removeFollower(String orgID, String currentUserID),
    Result adminsReceived(KtList<String> admins, String currentUserID),
    Result membersReceived(KtList<String> userIDList, String currentUserID),
    Result addUserToNotify(String orgID),
    Result removeUserFromNotify(String orgID),
    Result blockOrg(String orgID),
    Result unBlockOrg(String orgID),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetOrgData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result adminsReceived(AdminsReceived value),
    @required Result membersReceived(MemberIDListReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result blockOrg(BlockOrg value),
    @required Result unBlockOrg(UnBlockOrg value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetOrgData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result adminsReceived(AdminsReceived value),
    Result membersReceived(MemberIDListReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    Result blockOrg(BlockOrg value),
    Result unBlockOrg(UnBlockOrg value),
    @required Result orElse(),
  });
}

abstract class $OrgEventCopyWith<$Res> {
  factory $OrgEventCopyWith(OrgEvent value, $Res Function(OrgEvent) then) =
      _$OrgEventCopyWithImpl<$Res>;
}

class _$OrgEventCopyWithImpl<$Res> implements $OrgEventCopyWith<$Res> {
  _$OrgEventCopyWithImpl(this._value, this._then);

  final OrgEvent _value;
  // ignore: unused_field
  final $Res Function(OrgEvent) _then;
}

abstract class $GetOrgDataCopyWith<$Res> {
  factory $GetOrgDataCopyWith(
          GetOrgData value, $Res Function(GetOrgData) then) =
      _$GetOrgDataCopyWithImpl<$Res>;
  $Res call({String orgID, String currentUserID});
}

class _$GetOrgDataCopyWithImpl<$Res> extends _$OrgEventCopyWithImpl<$Res>
    implements $GetOrgDataCopyWith<$Res> {
  _$GetOrgDataCopyWithImpl(GetOrgData _value, $Res Function(GetOrgData) _then)
      : super(_value, (v) => _then(v as GetOrgData));

  @override
  GetOrgData get _value => super._value as GetOrgData;

  @override
  $Res call({
    Object orgID = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(GetOrgData(
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      currentUserID: currentUserID == freezed
          ? _value.currentUserID
          : currentUserID as String,
    ));
  }
}

class _$GetOrgData implements GetOrgData {
  const _$GetOrgData({this.orgID, this.currentUserID});

  @override
  final String orgID;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'OrgEvent.getData(orgID: $orgID, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetOrgData &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $GetOrgDataCopyWith<GetOrgData> get copyWith =>
      _$GetOrgDataCopyWithImpl<GetOrgData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, String currentUserID),
    @required Result addFollower(String orgID, String currentUserID),
    @required Result removeFollower(String orgID, String currentUserID),
    @required
        Result adminsReceived(KtList<String> admins, String currentUserID),
    @required
        Result membersReceived(KtList<String> userIDList, String currentUserID),
    @required Result addUserToNotify(String orgID),
    @required Result removeUserFromNotify(String orgID),
    @required Result blockOrg(String orgID),
    @required Result unBlockOrg(String orgID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return getData(orgID, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, String currentUserID),
    Result addFollower(String orgID, String currentUserID),
    Result removeFollower(String orgID, String currentUserID),
    Result adminsReceived(KtList<String> admins, String currentUserID),
    Result membersReceived(KtList<String> userIDList, String currentUserID),
    Result addUserToNotify(String orgID),
    Result removeUserFromNotify(String orgID),
    Result blockOrg(String orgID),
    Result unBlockOrg(String orgID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(orgID, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetOrgData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result adminsReceived(AdminsReceived value),
    @required Result membersReceived(MemberIDListReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result blockOrg(BlockOrg value),
    @required Result unBlockOrg(UnBlockOrg value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetOrgData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result adminsReceived(AdminsReceived value),
    Result membersReceived(MemberIDListReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    Result blockOrg(BlockOrg value),
    Result unBlockOrg(UnBlockOrg value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetOrgData implements OrgEvent {
  const factory GetOrgData({String orgID, String currentUserID}) = _$GetOrgData;

  String get orgID;
  String get currentUserID;
  $GetOrgDataCopyWith<GetOrgData> get copyWith;
}

abstract class $AddFollowerCopyWith<$Res> {
  factory $AddFollowerCopyWith(
          AddFollower value, $Res Function(AddFollower) then) =
      _$AddFollowerCopyWithImpl<$Res>;
  $Res call({String orgID, String currentUserID});
}

class _$AddFollowerCopyWithImpl<$Res> extends _$OrgEventCopyWithImpl<$Res>
    implements $AddFollowerCopyWith<$Res> {
  _$AddFollowerCopyWithImpl(
      AddFollower _value, $Res Function(AddFollower) _then)
      : super(_value, (v) => _then(v as AddFollower));

  @override
  AddFollower get _value => super._value as AddFollower;

  @override
  $Res call({
    Object orgID = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(AddFollower(
      orgID == freezed ? _value.orgID : orgID as String,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$AddFollower implements AddFollower {
  const _$AddFollower(this.orgID, this.currentUserID)
      : assert(orgID != null),
        assert(currentUserID != null);

  @override
  final String orgID;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'OrgEvent.addFollower(orgID: $orgID, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddFollower &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $AddFollowerCopyWith<AddFollower> get copyWith =>
      _$AddFollowerCopyWithImpl<AddFollower>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, String currentUserID),
    @required Result addFollower(String orgID, String currentUserID),
    @required Result removeFollower(String orgID, String currentUserID),
    @required
        Result adminsReceived(KtList<String> admins, String currentUserID),
    @required
        Result membersReceived(KtList<String> userIDList, String currentUserID),
    @required Result addUserToNotify(String orgID),
    @required Result removeUserFromNotify(String orgID),
    @required Result blockOrg(String orgID),
    @required Result unBlockOrg(String orgID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return addFollower(orgID, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, String currentUserID),
    Result addFollower(String orgID, String currentUserID),
    Result removeFollower(String orgID, String currentUserID),
    Result adminsReceived(KtList<String> admins, String currentUserID),
    Result membersReceived(KtList<String> userIDList, String currentUserID),
    Result addUserToNotify(String orgID),
    Result removeUserFromNotify(String orgID),
    Result blockOrg(String orgID),
    Result unBlockOrg(String orgID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addFollower != null) {
      return addFollower(orgID, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetOrgData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result adminsReceived(AdminsReceived value),
    @required Result membersReceived(MemberIDListReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result blockOrg(BlockOrg value),
    @required Result unBlockOrg(UnBlockOrg value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return addFollower(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetOrgData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result adminsReceived(AdminsReceived value),
    Result membersReceived(MemberIDListReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    Result blockOrg(BlockOrg value),
    Result unBlockOrg(UnBlockOrg value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addFollower != null) {
      return addFollower(this);
    }
    return orElse();
  }
}

abstract class AddFollower implements OrgEvent {
  const factory AddFollower(String orgID, String currentUserID) = _$AddFollower;

  String get orgID;
  String get currentUserID;
  $AddFollowerCopyWith<AddFollower> get copyWith;
}

abstract class $RemoveFollowerCopyWith<$Res> {
  factory $RemoveFollowerCopyWith(
          RemoveFollower value, $Res Function(RemoveFollower) then) =
      _$RemoveFollowerCopyWithImpl<$Res>;
  $Res call({String orgID, String currentUserID});
}

class _$RemoveFollowerCopyWithImpl<$Res> extends _$OrgEventCopyWithImpl<$Res>
    implements $RemoveFollowerCopyWith<$Res> {
  _$RemoveFollowerCopyWithImpl(
      RemoveFollower _value, $Res Function(RemoveFollower) _then)
      : super(_value, (v) => _then(v as RemoveFollower));

  @override
  RemoveFollower get _value => super._value as RemoveFollower;

  @override
  $Res call({
    Object orgID = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(RemoveFollower(
      orgID == freezed ? _value.orgID : orgID as String,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$RemoveFollower implements RemoveFollower {
  const _$RemoveFollower(this.orgID, this.currentUserID)
      : assert(orgID != null),
        assert(currentUserID != null);

  @override
  final String orgID;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'OrgEvent.removeFollower(orgID: $orgID, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveFollower &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $RemoveFollowerCopyWith<RemoveFollower> get copyWith =>
      _$RemoveFollowerCopyWithImpl<RemoveFollower>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, String currentUserID),
    @required Result addFollower(String orgID, String currentUserID),
    @required Result removeFollower(String orgID, String currentUserID),
    @required
        Result adminsReceived(KtList<String> admins, String currentUserID),
    @required
        Result membersReceived(KtList<String> userIDList, String currentUserID),
    @required Result addUserToNotify(String orgID),
    @required Result removeUserFromNotify(String orgID),
    @required Result blockOrg(String orgID),
    @required Result unBlockOrg(String orgID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return removeFollower(orgID, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, String currentUserID),
    Result addFollower(String orgID, String currentUserID),
    Result removeFollower(String orgID, String currentUserID),
    Result adminsReceived(KtList<String> admins, String currentUserID),
    Result membersReceived(KtList<String> userIDList, String currentUserID),
    Result addUserToNotify(String orgID),
    Result removeUserFromNotify(String orgID),
    Result blockOrg(String orgID),
    Result unBlockOrg(String orgID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeFollower != null) {
      return removeFollower(orgID, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetOrgData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result adminsReceived(AdminsReceived value),
    @required Result membersReceived(MemberIDListReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result blockOrg(BlockOrg value),
    @required Result unBlockOrg(UnBlockOrg value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return removeFollower(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetOrgData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result adminsReceived(AdminsReceived value),
    Result membersReceived(MemberIDListReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    Result blockOrg(BlockOrg value),
    Result unBlockOrg(UnBlockOrg value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeFollower != null) {
      return removeFollower(this);
    }
    return orElse();
  }
}

abstract class RemoveFollower implements OrgEvent {
  const factory RemoveFollower(String orgID, String currentUserID) =
      _$RemoveFollower;

  String get orgID;
  String get currentUserID;
  $RemoveFollowerCopyWith<RemoveFollower> get copyWith;
}

abstract class $AdminsReceivedCopyWith<$Res> {
  factory $AdminsReceivedCopyWith(
          AdminsReceived value, $Res Function(AdminsReceived) then) =
      _$AdminsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<String> admins, String currentUserID});
}

class _$AdminsReceivedCopyWithImpl<$Res> extends _$OrgEventCopyWithImpl<$Res>
    implements $AdminsReceivedCopyWith<$Res> {
  _$AdminsReceivedCopyWithImpl(
      AdminsReceived _value, $Res Function(AdminsReceived) _then)
      : super(_value, (v) => _then(v as AdminsReceived));

  @override
  AdminsReceived get _value => super._value as AdminsReceived;

  @override
  $Res call({
    Object admins = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(AdminsReceived(
      admins == freezed ? _value.admins : admins as KtList<String>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$AdminsReceived implements AdminsReceived {
  const _$AdminsReceived(this.admins, this.currentUserID)
      : assert(admins != null),
        assert(currentUserID != null);

  @override
  final KtList<String> admins;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'OrgEvent.adminsReceived(admins: $admins, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdminsReceived &&
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
  $AdminsReceivedCopyWith<AdminsReceived> get copyWith =>
      _$AdminsReceivedCopyWithImpl<AdminsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, String currentUserID),
    @required Result addFollower(String orgID, String currentUserID),
    @required Result removeFollower(String orgID, String currentUserID),
    @required
        Result adminsReceived(KtList<String> admins, String currentUserID),
    @required
        Result membersReceived(KtList<String> userIDList, String currentUserID),
    @required Result addUserToNotify(String orgID),
    @required Result removeUserFromNotify(String orgID),
    @required Result blockOrg(String orgID),
    @required Result unBlockOrg(String orgID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return adminsReceived(admins, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, String currentUserID),
    Result addFollower(String orgID, String currentUserID),
    Result removeFollower(String orgID, String currentUserID),
    Result adminsReceived(KtList<String> admins, String currentUserID),
    Result membersReceived(KtList<String> userIDList, String currentUserID),
    Result addUserToNotify(String orgID),
    Result removeUserFromNotify(String orgID),
    Result blockOrg(String orgID),
    Result unBlockOrg(String orgID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (adminsReceived != null) {
      return adminsReceived(admins, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetOrgData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result adminsReceived(AdminsReceived value),
    @required Result membersReceived(MemberIDListReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result blockOrg(BlockOrg value),
    @required Result unBlockOrg(UnBlockOrg value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return adminsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetOrgData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result adminsReceived(AdminsReceived value),
    Result membersReceived(MemberIDListReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    Result blockOrg(BlockOrg value),
    Result unBlockOrg(UnBlockOrg value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (adminsReceived != null) {
      return adminsReceived(this);
    }
    return orElse();
  }
}

abstract class AdminsReceived implements OrgEvent {
  const factory AdminsReceived(KtList<String> admins, String currentUserID) =
      _$AdminsReceived;

  KtList<String> get admins;
  String get currentUserID;
  $AdminsReceivedCopyWith<AdminsReceived> get copyWith;
}

abstract class $MemberIDListReceivedCopyWith<$Res> {
  factory $MemberIDListReceivedCopyWith(MemberIDListReceived value,
          $Res Function(MemberIDListReceived) then) =
      _$MemberIDListReceivedCopyWithImpl<$Res>;
  $Res call({KtList<String> userIDList, String currentUserID});
}

class _$MemberIDListReceivedCopyWithImpl<$Res>
    extends _$OrgEventCopyWithImpl<$Res>
    implements $MemberIDListReceivedCopyWith<$Res> {
  _$MemberIDListReceivedCopyWithImpl(
      MemberIDListReceived _value, $Res Function(MemberIDListReceived) _then)
      : super(_value, (v) => _then(v as MemberIDListReceived));

  @override
  MemberIDListReceived get _value => super._value as MemberIDListReceived;

  @override
  $Res call({
    Object userIDList = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(MemberIDListReceived(
      userIDList == freezed ? _value.userIDList : userIDList as KtList<String>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$MemberIDListReceived implements MemberIDListReceived {
  const _$MemberIDListReceived(this.userIDList, this.currentUserID)
      : assert(userIDList != null),
        assert(currentUserID != null);

  @override
  final KtList<String> userIDList;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'OrgEvent.membersReceived(userIDList: $userIDList, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MemberIDListReceived &&
            (identical(other.userIDList, userIDList) ||
                const DeepCollectionEquality()
                    .equals(other.userIDList, userIDList)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userIDList) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $MemberIDListReceivedCopyWith<MemberIDListReceived> get copyWith =>
      _$MemberIDListReceivedCopyWithImpl<MemberIDListReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, String currentUserID),
    @required Result addFollower(String orgID, String currentUserID),
    @required Result removeFollower(String orgID, String currentUserID),
    @required
        Result adminsReceived(KtList<String> admins, String currentUserID),
    @required
        Result membersReceived(KtList<String> userIDList, String currentUserID),
    @required Result addUserToNotify(String orgID),
    @required Result removeUserFromNotify(String orgID),
    @required Result blockOrg(String orgID),
    @required Result unBlockOrg(String orgID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return membersReceived(userIDList, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, String currentUserID),
    Result addFollower(String orgID, String currentUserID),
    Result removeFollower(String orgID, String currentUserID),
    Result adminsReceived(KtList<String> admins, String currentUserID),
    Result membersReceived(KtList<String> userIDList, String currentUserID),
    Result addUserToNotify(String orgID),
    Result removeUserFromNotify(String orgID),
    Result blockOrg(String orgID),
    Result unBlockOrg(String orgID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (membersReceived != null) {
      return membersReceived(userIDList, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetOrgData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result adminsReceived(AdminsReceived value),
    @required Result membersReceived(MemberIDListReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result blockOrg(BlockOrg value),
    @required Result unBlockOrg(UnBlockOrg value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return membersReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetOrgData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result adminsReceived(AdminsReceived value),
    Result membersReceived(MemberIDListReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    Result blockOrg(BlockOrg value),
    Result unBlockOrg(UnBlockOrg value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (membersReceived != null) {
      return membersReceived(this);
    }
    return orElse();
  }
}

abstract class MemberIDListReceived implements OrgEvent {
  const factory MemberIDListReceived(
      KtList<String> userIDList, String currentUserID) = _$MemberIDListReceived;

  KtList<String> get userIDList;
  String get currentUserID;
  $MemberIDListReceivedCopyWith<MemberIDListReceived> get copyWith;
}

abstract class $AddUserToNotifyCopyWith<$Res> {
  factory $AddUserToNotifyCopyWith(
          AddUserToNotify value, $Res Function(AddUserToNotify) then) =
      _$AddUserToNotifyCopyWithImpl<$Res>;
  $Res call({String orgID});
}

class _$AddUserToNotifyCopyWithImpl<$Res> extends _$OrgEventCopyWithImpl<$Res>
    implements $AddUserToNotifyCopyWith<$Res> {
  _$AddUserToNotifyCopyWithImpl(
      AddUserToNotify _value, $Res Function(AddUserToNotify) _then)
      : super(_value, (v) => _then(v as AddUserToNotify));

  @override
  AddUserToNotify get _value => super._value as AddUserToNotify;

  @override
  $Res call({
    Object orgID = freezed,
  }) {
    return _then(AddUserToNotify(
      orgID == freezed ? _value.orgID : orgID as String,
    ));
  }
}

class _$AddUserToNotify implements AddUserToNotify {
  const _$AddUserToNotify(this.orgID) : assert(orgID != null);

  @override
  final String orgID;

  @override
  String toString() {
    return 'OrgEvent.addUserToNotify(orgID: $orgID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddUserToNotify &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orgID);

  @override
  $AddUserToNotifyCopyWith<AddUserToNotify> get copyWith =>
      _$AddUserToNotifyCopyWithImpl<AddUserToNotify>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, String currentUserID),
    @required Result addFollower(String orgID, String currentUserID),
    @required Result removeFollower(String orgID, String currentUserID),
    @required
        Result adminsReceived(KtList<String> admins, String currentUserID),
    @required
        Result membersReceived(KtList<String> userIDList, String currentUserID),
    @required Result addUserToNotify(String orgID),
    @required Result removeUserFromNotify(String orgID),
    @required Result blockOrg(String orgID),
    @required Result unBlockOrg(String orgID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return addUserToNotify(orgID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, String currentUserID),
    Result addFollower(String orgID, String currentUserID),
    Result removeFollower(String orgID, String currentUserID),
    Result adminsReceived(KtList<String> admins, String currentUserID),
    Result membersReceived(KtList<String> userIDList, String currentUserID),
    Result addUserToNotify(String orgID),
    Result removeUserFromNotify(String orgID),
    Result blockOrg(String orgID),
    Result unBlockOrg(String orgID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addUserToNotify != null) {
      return addUserToNotify(orgID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetOrgData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result adminsReceived(AdminsReceived value),
    @required Result membersReceived(MemberIDListReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result blockOrg(BlockOrg value),
    @required Result unBlockOrg(UnBlockOrg value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return addUserToNotify(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetOrgData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result adminsReceived(AdminsReceived value),
    Result membersReceived(MemberIDListReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    Result blockOrg(BlockOrg value),
    Result unBlockOrg(UnBlockOrg value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addUserToNotify != null) {
      return addUserToNotify(this);
    }
    return orElse();
  }
}

abstract class AddUserToNotify implements OrgEvent {
  const factory AddUserToNotify(String orgID) = _$AddUserToNotify;

  String get orgID;
  $AddUserToNotifyCopyWith<AddUserToNotify> get copyWith;
}

abstract class $RemoveUserFromNotifyCopyWith<$Res> {
  factory $RemoveUserFromNotifyCopyWith(RemoveUserFromNotify value,
          $Res Function(RemoveUserFromNotify) then) =
      _$RemoveUserFromNotifyCopyWithImpl<$Res>;
  $Res call({String orgID});
}

class _$RemoveUserFromNotifyCopyWithImpl<$Res>
    extends _$OrgEventCopyWithImpl<$Res>
    implements $RemoveUserFromNotifyCopyWith<$Res> {
  _$RemoveUserFromNotifyCopyWithImpl(
      RemoveUserFromNotify _value, $Res Function(RemoveUserFromNotify) _then)
      : super(_value, (v) => _then(v as RemoveUserFromNotify));

  @override
  RemoveUserFromNotify get _value => super._value as RemoveUserFromNotify;

  @override
  $Res call({
    Object orgID = freezed,
  }) {
    return _then(RemoveUserFromNotify(
      orgID == freezed ? _value.orgID : orgID as String,
    ));
  }
}

class _$RemoveUserFromNotify implements RemoveUserFromNotify {
  const _$RemoveUserFromNotify(this.orgID) : assert(orgID != null);

  @override
  final String orgID;

  @override
  String toString() {
    return 'OrgEvent.removeUserFromNotify(orgID: $orgID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveUserFromNotify &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orgID);

  @override
  $RemoveUserFromNotifyCopyWith<RemoveUserFromNotify> get copyWith =>
      _$RemoveUserFromNotifyCopyWithImpl<RemoveUserFromNotify>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, String currentUserID),
    @required Result addFollower(String orgID, String currentUserID),
    @required Result removeFollower(String orgID, String currentUserID),
    @required
        Result adminsReceived(KtList<String> admins, String currentUserID),
    @required
        Result membersReceived(KtList<String> userIDList, String currentUserID),
    @required Result addUserToNotify(String orgID),
    @required Result removeUserFromNotify(String orgID),
    @required Result blockOrg(String orgID),
    @required Result unBlockOrg(String orgID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return removeUserFromNotify(orgID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, String currentUserID),
    Result addFollower(String orgID, String currentUserID),
    Result removeFollower(String orgID, String currentUserID),
    Result adminsReceived(KtList<String> admins, String currentUserID),
    Result membersReceived(KtList<String> userIDList, String currentUserID),
    Result addUserToNotify(String orgID),
    Result removeUserFromNotify(String orgID),
    Result blockOrg(String orgID),
    Result unBlockOrg(String orgID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeUserFromNotify != null) {
      return removeUserFromNotify(orgID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetOrgData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result adminsReceived(AdminsReceived value),
    @required Result membersReceived(MemberIDListReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result blockOrg(BlockOrg value),
    @required Result unBlockOrg(UnBlockOrg value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return removeUserFromNotify(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetOrgData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result adminsReceived(AdminsReceived value),
    Result membersReceived(MemberIDListReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    Result blockOrg(BlockOrg value),
    Result unBlockOrg(UnBlockOrg value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeUserFromNotify != null) {
      return removeUserFromNotify(this);
    }
    return orElse();
  }
}

abstract class RemoveUserFromNotify implements OrgEvent {
  const factory RemoveUserFromNotify(String orgID) = _$RemoveUserFromNotify;

  String get orgID;
  $RemoveUserFromNotifyCopyWith<RemoveUserFromNotify> get copyWith;
}

abstract class $BlockOrgCopyWith<$Res> {
  factory $BlockOrgCopyWith(BlockOrg value, $Res Function(BlockOrg) then) =
      _$BlockOrgCopyWithImpl<$Res>;
  $Res call({String orgID});
}

class _$BlockOrgCopyWithImpl<$Res> extends _$OrgEventCopyWithImpl<$Res>
    implements $BlockOrgCopyWith<$Res> {
  _$BlockOrgCopyWithImpl(BlockOrg _value, $Res Function(BlockOrg) _then)
      : super(_value, (v) => _then(v as BlockOrg));

  @override
  BlockOrg get _value => super._value as BlockOrg;

  @override
  $Res call({
    Object orgID = freezed,
  }) {
    return _then(BlockOrg(
      orgID == freezed ? _value.orgID : orgID as String,
    ));
  }
}

class _$BlockOrg implements BlockOrg {
  const _$BlockOrg(this.orgID) : assert(orgID != null);

  @override
  final String orgID;

  @override
  String toString() {
    return 'OrgEvent.blockOrg(orgID: $orgID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BlockOrg &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orgID);

  @override
  $BlockOrgCopyWith<BlockOrg> get copyWith =>
      _$BlockOrgCopyWithImpl<BlockOrg>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, String currentUserID),
    @required Result addFollower(String orgID, String currentUserID),
    @required Result removeFollower(String orgID, String currentUserID),
    @required
        Result adminsReceived(KtList<String> admins, String currentUserID),
    @required
        Result membersReceived(KtList<String> userIDList, String currentUserID),
    @required Result addUserToNotify(String orgID),
    @required Result removeUserFromNotify(String orgID),
    @required Result blockOrg(String orgID),
    @required Result unBlockOrg(String orgID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return blockOrg(orgID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, String currentUserID),
    Result addFollower(String orgID, String currentUserID),
    Result removeFollower(String orgID, String currentUserID),
    Result adminsReceived(KtList<String> admins, String currentUserID),
    Result membersReceived(KtList<String> userIDList, String currentUserID),
    Result addUserToNotify(String orgID),
    Result removeUserFromNotify(String orgID),
    Result blockOrg(String orgID),
    Result unBlockOrg(String orgID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blockOrg != null) {
      return blockOrg(orgID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetOrgData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result adminsReceived(AdminsReceived value),
    @required Result membersReceived(MemberIDListReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result blockOrg(BlockOrg value),
    @required Result unBlockOrg(UnBlockOrg value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return blockOrg(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetOrgData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result adminsReceived(AdminsReceived value),
    Result membersReceived(MemberIDListReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    Result blockOrg(BlockOrg value),
    Result unBlockOrg(UnBlockOrg value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blockOrg != null) {
      return blockOrg(this);
    }
    return orElse();
  }
}

abstract class BlockOrg implements OrgEvent {
  const factory BlockOrg(String orgID) = _$BlockOrg;

  String get orgID;
  $BlockOrgCopyWith<BlockOrg> get copyWith;
}

abstract class $UnBlockOrgCopyWith<$Res> {
  factory $UnBlockOrgCopyWith(
          UnBlockOrg value, $Res Function(UnBlockOrg) then) =
      _$UnBlockOrgCopyWithImpl<$Res>;
  $Res call({String orgID});
}

class _$UnBlockOrgCopyWithImpl<$Res> extends _$OrgEventCopyWithImpl<$Res>
    implements $UnBlockOrgCopyWith<$Res> {
  _$UnBlockOrgCopyWithImpl(UnBlockOrg _value, $Res Function(UnBlockOrg) _then)
      : super(_value, (v) => _then(v as UnBlockOrg));

  @override
  UnBlockOrg get _value => super._value as UnBlockOrg;

  @override
  $Res call({
    Object orgID = freezed,
  }) {
    return _then(UnBlockOrg(
      orgID == freezed ? _value.orgID : orgID as String,
    ));
  }
}

class _$UnBlockOrg implements UnBlockOrg {
  const _$UnBlockOrg(this.orgID) : assert(orgID != null);

  @override
  final String orgID;

  @override
  String toString() {
    return 'OrgEvent.unBlockOrg(orgID: $orgID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnBlockOrg &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orgID);

  @override
  $UnBlockOrgCopyWith<UnBlockOrg> get copyWith =>
      _$UnBlockOrgCopyWithImpl<UnBlockOrg>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String orgID, String currentUserID),
    @required Result addFollower(String orgID, String currentUserID),
    @required Result removeFollower(String orgID, String currentUserID),
    @required
        Result adminsReceived(KtList<String> admins, String currentUserID),
    @required
        Result membersReceived(KtList<String> userIDList, String currentUserID),
    @required Result addUserToNotify(String orgID),
    @required Result removeUserFromNotify(String orgID),
    @required Result blockOrg(String orgID),
    @required Result unBlockOrg(String orgID),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return unBlockOrg(orgID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String orgID, String currentUserID),
    Result addFollower(String orgID, String currentUserID),
    Result removeFollower(String orgID, String currentUserID),
    Result adminsReceived(KtList<String> admins, String currentUserID),
    Result membersReceived(KtList<String> userIDList, String currentUserID),
    Result addUserToNotify(String orgID),
    Result removeUserFromNotify(String orgID),
    Result blockOrg(String orgID),
    Result unBlockOrg(String orgID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unBlockOrg != null) {
      return unBlockOrg(orgID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetOrgData value),
    @required Result addFollower(AddFollower value),
    @required Result removeFollower(RemoveFollower value),
    @required Result adminsReceived(AdminsReceived value),
    @required Result membersReceived(MemberIDListReceived value),
    @required Result addUserToNotify(AddUserToNotify value),
    @required Result removeUserFromNotify(RemoveUserFromNotify value),
    @required Result blockOrg(BlockOrg value),
    @required Result unBlockOrg(UnBlockOrg value),
  }) {
    assert(getData != null);
    assert(addFollower != null);
    assert(removeFollower != null);
    assert(adminsReceived != null);
    assert(membersReceived != null);
    assert(addUserToNotify != null);
    assert(removeUserFromNotify != null);
    assert(blockOrg != null);
    assert(unBlockOrg != null);
    return unBlockOrg(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetOrgData value),
    Result addFollower(AddFollower value),
    Result removeFollower(RemoveFollower value),
    Result adminsReceived(AdminsReceived value),
    Result membersReceived(MemberIDListReceived value),
    Result addUserToNotify(AddUserToNotify value),
    Result removeUserFromNotify(RemoveUserFromNotify value),
    Result blockOrg(BlockOrg value),
    Result unBlockOrg(UnBlockOrg value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unBlockOrg != null) {
      return unBlockOrg(this);
    }
    return orElse();
  }
}

abstract class UnBlockOrg implements OrgEvent {
  const factory UnBlockOrg(String orgID) = _$UnBlockOrg;

  String get orgID;
  $UnBlockOrgCopyWith<UnBlockOrg> get copyWith;
}

class _$OrgStateTearOff {
  const _$OrgStateTearOff();

  _OrgState call(
      {@required bool isAdmin,
      @required bool isFollowing,
      @required bool isBlocking,
      @required int postCount,
      @required int memberCount,
      @required int photoCount,
      @required KtList<String> userIDList,
      @required bool isNotified,
      @required String shareLink}) {
    return _OrgState(
      isAdmin: isAdmin,
      isFollowing: isFollowing,
      isBlocking: isBlocking,
      postCount: postCount,
      memberCount: memberCount,
      photoCount: photoCount,
      userIDList: userIDList,
      isNotified: isNotified,
      shareLink: shareLink,
    );
  }
}

// ignore: unused_element
const $OrgState = _$OrgStateTearOff();

mixin _$OrgState {
  bool get isAdmin;
  bool get isFollowing;
  bool get isBlocking;
  int get postCount;
  int get memberCount;
  int get photoCount;
  KtList<String> get userIDList;
  bool get isNotified;
  String get shareLink;

  $OrgStateCopyWith<OrgState> get copyWith;
}

abstract class $OrgStateCopyWith<$Res> {
  factory $OrgStateCopyWith(OrgState value, $Res Function(OrgState) then) =
      _$OrgStateCopyWithImpl<$Res>;
  $Res call(
      {bool isAdmin,
      bool isFollowing,
      bool isBlocking,
      int postCount,
      int memberCount,
      int photoCount,
      KtList<String> userIDList,
      bool isNotified,
      String shareLink});
}

class _$OrgStateCopyWithImpl<$Res> implements $OrgStateCopyWith<$Res> {
  _$OrgStateCopyWithImpl(this._value, this._then);

  final OrgState _value;
  // ignore: unused_field
  final $Res Function(OrgState) _then;

  @override
  $Res call({
    Object isAdmin = freezed,
    Object isFollowing = freezed,
    Object isBlocking = freezed,
    Object postCount = freezed,
    Object memberCount = freezed,
    Object photoCount = freezed,
    Object userIDList = freezed,
    Object isNotified = freezed,
    Object shareLink = freezed,
  }) {
    return _then(_value.copyWith(
      isAdmin: isAdmin == freezed ? _value.isAdmin : isAdmin as bool,
      isFollowing:
          isFollowing == freezed ? _value.isFollowing : isFollowing as bool,
      isBlocking:
          isBlocking == freezed ? _value.isBlocking : isBlocking as bool,
      postCount: postCount == freezed ? _value.postCount : postCount as int,
      memberCount:
          memberCount == freezed ? _value.memberCount : memberCount as int,
      photoCount: photoCount == freezed ? _value.photoCount : photoCount as int,
      userIDList: userIDList == freezed
          ? _value.userIDList
          : userIDList as KtList<String>,
      isNotified:
          isNotified == freezed ? _value.isNotified : isNotified as bool,
      shareLink: shareLink == freezed ? _value.shareLink : shareLink as String,
    ));
  }
}

abstract class _$OrgStateCopyWith<$Res> implements $OrgStateCopyWith<$Res> {
  factory _$OrgStateCopyWith(_OrgState value, $Res Function(_OrgState) then) =
      __$OrgStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isAdmin,
      bool isFollowing,
      bool isBlocking,
      int postCount,
      int memberCount,
      int photoCount,
      KtList<String> userIDList,
      bool isNotified,
      String shareLink});
}

class __$OrgStateCopyWithImpl<$Res> extends _$OrgStateCopyWithImpl<$Res>
    implements _$OrgStateCopyWith<$Res> {
  __$OrgStateCopyWithImpl(_OrgState _value, $Res Function(_OrgState) _then)
      : super(_value, (v) => _then(v as _OrgState));

  @override
  _OrgState get _value => super._value as _OrgState;

  @override
  $Res call({
    Object isAdmin = freezed,
    Object isFollowing = freezed,
    Object isBlocking = freezed,
    Object postCount = freezed,
    Object memberCount = freezed,
    Object photoCount = freezed,
    Object userIDList = freezed,
    Object isNotified = freezed,
    Object shareLink = freezed,
  }) {
    return _then(_OrgState(
      isAdmin: isAdmin == freezed ? _value.isAdmin : isAdmin as bool,
      isFollowing:
          isFollowing == freezed ? _value.isFollowing : isFollowing as bool,
      isBlocking:
          isBlocking == freezed ? _value.isBlocking : isBlocking as bool,
      postCount: postCount == freezed ? _value.postCount : postCount as int,
      memberCount:
          memberCount == freezed ? _value.memberCount : memberCount as int,
      photoCount: photoCount == freezed ? _value.photoCount : photoCount as int,
      userIDList: userIDList == freezed
          ? _value.userIDList
          : userIDList as KtList<String>,
      isNotified:
          isNotified == freezed ? _value.isNotified : isNotified as bool,
      shareLink: shareLink == freezed ? _value.shareLink : shareLink as String,
    ));
  }
}

class _$_OrgState implements _OrgState {
  const _$_OrgState(
      {@required this.isAdmin,
      @required this.isFollowing,
      @required this.isBlocking,
      @required this.postCount,
      @required this.memberCount,
      @required this.photoCount,
      @required this.userIDList,
      @required this.isNotified,
      @required this.shareLink})
      : assert(isAdmin != null),
        assert(isFollowing != null),
        assert(isBlocking != null),
        assert(postCount != null),
        assert(memberCount != null),
        assert(photoCount != null),
        assert(userIDList != null),
        assert(isNotified != null),
        assert(shareLink != null);

  @override
  final bool isAdmin;
  @override
  final bool isFollowing;
  @override
  final bool isBlocking;
  @override
  final int postCount;
  @override
  final int memberCount;
  @override
  final int photoCount;
  @override
  final KtList<String> userIDList;
  @override
  final bool isNotified;
  @override
  final String shareLink;

  @override
  String toString() {
    return 'OrgState(isAdmin: $isAdmin, isFollowing: $isFollowing, isBlocking: $isBlocking, postCount: $postCount, memberCount: $memberCount, photoCount: $photoCount, userIDList: $userIDList, isNotified: $isNotified, shareLink: $shareLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrgState &&
            (identical(other.isAdmin, isAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isAdmin, isAdmin)) &&
            (identical(other.isFollowing, isFollowing) ||
                const DeepCollectionEquality()
                    .equals(other.isFollowing, isFollowing)) &&
            (identical(other.isBlocking, isBlocking) ||
                const DeepCollectionEquality()
                    .equals(other.isBlocking, isBlocking)) &&
            (identical(other.postCount, postCount) ||
                const DeepCollectionEquality()
                    .equals(other.postCount, postCount)) &&
            (identical(other.memberCount, memberCount) ||
                const DeepCollectionEquality()
                    .equals(other.memberCount, memberCount)) &&
            (identical(other.photoCount, photoCount) ||
                const DeepCollectionEquality()
                    .equals(other.photoCount, photoCount)) &&
            (identical(other.userIDList, userIDList) ||
                const DeepCollectionEquality()
                    .equals(other.userIDList, userIDList)) &&
            (identical(other.isNotified, isNotified) ||
                const DeepCollectionEquality()
                    .equals(other.isNotified, isNotified)) &&
            (identical(other.shareLink, shareLink) ||
                const DeepCollectionEquality()
                    .equals(other.shareLink, shareLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAdmin) ^
      const DeepCollectionEquality().hash(isFollowing) ^
      const DeepCollectionEquality().hash(isBlocking) ^
      const DeepCollectionEquality().hash(postCount) ^
      const DeepCollectionEquality().hash(memberCount) ^
      const DeepCollectionEquality().hash(photoCount) ^
      const DeepCollectionEquality().hash(userIDList) ^
      const DeepCollectionEquality().hash(isNotified) ^
      const DeepCollectionEquality().hash(shareLink);

  @override
  _$OrgStateCopyWith<_OrgState> get copyWith =>
      __$OrgStateCopyWithImpl<_OrgState>(this, _$identity);
}

abstract class _OrgState implements OrgState {
  const factory _OrgState(
      {@required bool isAdmin,
      @required bool isFollowing,
      @required bool isBlocking,
      @required int postCount,
      @required int memberCount,
      @required int photoCount,
      @required KtList<String> userIDList,
      @required bool isNotified,
      @required String shareLink}) = _$_OrgState;

  @override
  bool get isAdmin;
  @override
  bool get isFollowing;
  @override
  bool get isBlocking;
  @override
  int get postCount;
  @override
  int get memberCount;
  @override
  int get photoCount;
  @override
  KtList<String> get userIDList;
  @override
  bool get isNotified;
  @override
  String get shareLink;
  @override
  _$OrgStateCopyWith<_OrgState> get copyWith;
}
