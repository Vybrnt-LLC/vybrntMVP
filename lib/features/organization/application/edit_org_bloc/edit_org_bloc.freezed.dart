// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'edit_org_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EditOrgEventTearOff {
  const _$EditOrgEventTearOff();

  GetEditOrgData getData(Organization org) {
    return GetEditOrgData(
      org,
    );
  }

  GetSearch getSearch(String name) {
    return GetSearch(
      name,
    );
  }

  AddEMember addEMember(String orgID, EMember eMember) {
    return AddEMember(
      orgID,
      eMember,
    );
  }

  RemoveFAQ removeFAQ(String faqID, String orgID) {
    return RemoveFAQ(
      faqID,
      orgID,
    );
  }

  SaveFAQ saveFAQ(String orgID) {
    return SaveFAQ(
      orgID,
    );
  }

  QuestionChanged questionChanged(String question) {
    return QuestionChanged(
      question,
    );
  }

  AnswerChanged answerChanged(String answer) {
    return AnswerChanged(
      answer,
    );
  }

  RemoveEMember removeEMember(String userID, String orgID) {
    return RemoveEMember(
      userID,
      orgID,
    );
  }

  EBoardReceived eboardReceived(KtList<EMember> eboard) {
    return EBoardReceived(
      eboard,
    );
  }

  FAQsReceived faqsReceived(KtList<FAQ> faqList) {
    return FAQsReceived(
      faqList,
    );
  }

  SearchReceived searchReceived(KtList<UserList> searchList) {
    return SearchReceived(
      searchList,
    );
  }

  SaveOrg saveOrg() {
    return const SaveOrg();
  }

  CreateOrg createOrg(String currentUserID) {
    return CreateOrg(
      currentUserID,
    );
  }

  OrgProfileImageChanged orgProfileImageChanged(String url, File image) {
    return OrgProfileImageChanged(
      url,
      image,
    );
  }

  OrgBannerImageChanged orgBannerImageChanged(String url, File image) {
    return OrgBannerImageChanged(
      url,
      image,
    );
  }

  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

  AbbvChanged abbvChanged(String abbv) {
    return AbbvChanged(
      abbv,
    );
  }

  PrimaryColorChanged primaryColorChanged(String primaryColor) {
    return PrimaryColorChanged(
      primaryColor,
    );
  }

  SecondaryColorChanged secondaryColorChanged(String secondaryColor) {
    return SecondaryColorChanged(
      secondaryColor,
    );
  }

  MissionStatementChanged missionStatementChanged(String missionStatement) {
    return MissionStatementChanged(
      missionStatement,
    );
  }

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  OfficeLocationChanged officeLocationChanged(String officeLocation) {
    return OfficeLocationChanged(
      officeLocation,
    );
  }

  EMemberSelected eMemberSelected(UniqueId userID) {
    return EMemberSelected(
      userID,
    );
  }

  PositionChanged positionChanged(String position) {
    return PositionChanged(
      position,
    );
  }

  InstagramURLChanged instagramURLChanged(String instagramURL) {
    return InstagramURLChanged(
      instagramURL,
    );
  }

  FacebookURLChanged facebookURLChanged(String facebookURL) {
    return FacebookURLChanged(
      facebookURL,
    );
  }

  WebsiteURLChanged websiteURLChanged(String websiteURL) {
    return WebsiteURLChanged(
      websiteURL,
    );
  }

  TwitterURLChanged twitterURLChanged(String twitterURL) {
    return TwitterURLChanged(
      twitterURL,
    );
  }

  AdminTitleChanged adminTitleChanged(String adminTitle) {
    return AdminTitleChanged(
      adminTitle,
    );
  }

  LinkedInURLChanged linkedInURLChanged(String linkedInURL) {
    return LinkedInURLChanged(
      linkedInURL,
    );
  }
}

// ignore: unused_element
const $EditOrgEvent = _$EditOrgEventTearOff();

mixin _$EditOrgEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  });
}

abstract class $EditOrgEventCopyWith<$Res> {
  factory $EditOrgEventCopyWith(
          EditOrgEvent value, $Res Function(EditOrgEvent) then) =
      _$EditOrgEventCopyWithImpl<$Res>;
}

class _$EditOrgEventCopyWithImpl<$Res> implements $EditOrgEventCopyWith<$Res> {
  _$EditOrgEventCopyWithImpl(this._value, this._then);

  final EditOrgEvent _value;
  // ignore: unused_field
  final $Res Function(EditOrgEvent) _then;
}

abstract class $GetEditOrgDataCopyWith<$Res> {
  factory $GetEditOrgDataCopyWith(
          GetEditOrgData value, $Res Function(GetEditOrgData) then) =
      _$GetEditOrgDataCopyWithImpl<$Res>;
  $Res call({Organization org});

  $OrganizationCopyWith<$Res> get org;
}

class _$GetEditOrgDataCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $GetEditOrgDataCopyWith<$Res> {
  _$GetEditOrgDataCopyWithImpl(
      GetEditOrgData _value, $Res Function(GetEditOrgData) _then)
      : super(_value, (v) => _then(v as GetEditOrgData));

  @override
  GetEditOrgData get _value => super._value as GetEditOrgData;

  @override
  $Res call({
    Object org = freezed,
  }) {
    return _then(GetEditOrgData(
      org == freezed ? _value.org : org as Organization,
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
}

class _$GetEditOrgData implements GetEditOrgData {
  const _$GetEditOrgData(this.org) : assert(org != null);

  @override
  final Organization org;

  @override
  String toString() {
    return 'EditOrgEvent.getData(org: $org)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetEditOrgData &&
            (identical(other.org, org) ||
                const DeepCollectionEquality().equals(other.org, org)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(org);

  @override
  $GetEditOrgDataCopyWith<GetEditOrgData> get copyWith =>
      _$GetEditOrgDataCopyWithImpl<GetEditOrgData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return getData(org);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(org);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetEditOrgData implements EditOrgEvent {
  const factory GetEditOrgData(Organization org) = _$GetEditOrgData;

  Organization get org;
  $GetEditOrgDataCopyWith<GetEditOrgData> get copyWith;
}

abstract class $GetSearchCopyWith<$Res> {
  factory $GetSearchCopyWith(GetSearch value, $Res Function(GetSearch) then) =
      _$GetSearchCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$GetSearchCopyWithImpl<$Res> extends _$EditOrgEventCopyWithImpl<$Res>
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
    return 'EditOrgEvent.getSearch(name: $name)';
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
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return getSearch(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
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
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return getSearch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSearch != null) {
      return getSearch(this);
    }
    return orElse();
  }
}

abstract class GetSearch implements EditOrgEvent {
  const factory GetSearch(String name) = _$GetSearch;

  String get name;
  $GetSearchCopyWith<GetSearch> get copyWith;
}

abstract class $AddEMemberCopyWith<$Res> {
  factory $AddEMemberCopyWith(
          AddEMember value, $Res Function(AddEMember) then) =
      _$AddEMemberCopyWithImpl<$Res>;
  $Res call({String orgID, EMember eMember});

  $EMemberCopyWith<$Res> get eMember;
}

class _$AddEMemberCopyWithImpl<$Res> extends _$EditOrgEventCopyWithImpl<$Res>
    implements $AddEMemberCopyWith<$Res> {
  _$AddEMemberCopyWithImpl(AddEMember _value, $Res Function(AddEMember) _then)
      : super(_value, (v) => _then(v as AddEMember));

  @override
  AddEMember get _value => super._value as AddEMember;

  @override
  $Res call({
    Object orgID = freezed,
    Object eMember = freezed,
  }) {
    return _then(AddEMember(
      orgID == freezed ? _value.orgID : orgID as String,
      eMember == freezed ? _value.eMember : eMember as EMember,
    ));
  }

  @override
  $EMemberCopyWith<$Res> get eMember {
    if (_value.eMember == null) {
      return null;
    }
    return $EMemberCopyWith<$Res>(_value.eMember, (value) {
      return _then(_value.copyWith(eMember: value));
    });
  }
}

class _$AddEMember implements AddEMember {
  const _$AddEMember(this.orgID, this.eMember)
      : assert(orgID != null),
        assert(eMember != null);

  @override
  final String orgID;
  @override
  final EMember eMember;

  @override
  String toString() {
    return 'EditOrgEvent.addEMember(orgID: $orgID, eMember: $eMember)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddEMember &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.eMember, eMember) ||
                const DeepCollectionEquality().equals(other.eMember, eMember)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(eMember);

  @override
  $AddEMemberCopyWith<AddEMember> get copyWith =>
      _$AddEMemberCopyWithImpl<AddEMember>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return addEMember(orgID, eMember);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addEMember != null) {
      return addEMember(orgID, eMember);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return addEMember(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addEMember != null) {
      return addEMember(this);
    }
    return orElse();
  }
}

abstract class AddEMember implements EditOrgEvent {
  const factory AddEMember(String orgID, EMember eMember) = _$AddEMember;

  String get orgID;
  EMember get eMember;
  $AddEMemberCopyWith<AddEMember> get copyWith;
}

abstract class $RemoveFAQCopyWith<$Res> {
  factory $RemoveFAQCopyWith(RemoveFAQ value, $Res Function(RemoveFAQ) then) =
      _$RemoveFAQCopyWithImpl<$Res>;
  $Res call({String faqID, String orgID});
}

class _$RemoveFAQCopyWithImpl<$Res> extends _$EditOrgEventCopyWithImpl<$Res>
    implements $RemoveFAQCopyWith<$Res> {
  _$RemoveFAQCopyWithImpl(RemoveFAQ _value, $Res Function(RemoveFAQ) _then)
      : super(_value, (v) => _then(v as RemoveFAQ));

  @override
  RemoveFAQ get _value => super._value as RemoveFAQ;

  @override
  $Res call({
    Object faqID = freezed,
    Object orgID = freezed,
  }) {
    return _then(RemoveFAQ(
      faqID == freezed ? _value.faqID : faqID as String,
      orgID == freezed ? _value.orgID : orgID as String,
    ));
  }
}

class _$RemoveFAQ implements RemoveFAQ {
  const _$RemoveFAQ(this.faqID, this.orgID)
      : assert(faqID != null),
        assert(orgID != null);

  @override
  final String faqID;
  @override
  final String orgID;

  @override
  String toString() {
    return 'EditOrgEvent.removeFAQ(faqID: $faqID, orgID: $orgID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveFAQ &&
            (identical(other.faqID, faqID) ||
                const DeepCollectionEquality().equals(other.faqID, faqID)) &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(faqID) ^
      const DeepCollectionEquality().hash(orgID);

  @override
  $RemoveFAQCopyWith<RemoveFAQ> get copyWith =>
      _$RemoveFAQCopyWithImpl<RemoveFAQ>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return removeFAQ(faqID, orgID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeFAQ != null) {
      return removeFAQ(faqID, orgID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return removeFAQ(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeFAQ != null) {
      return removeFAQ(this);
    }
    return orElse();
  }
}

abstract class RemoveFAQ implements EditOrgEvent {
  const factory RemoveFAQ(String faqID, String orgID) = _$RemoveFAQ;

  String get faqID;
  String get orgID;
  $RemoveFAQCopyWith<RemoveFAQ> get copyWith;
}

abstract class $SaveFAQCopyWith<$Res> {
  factory $SaveFAQCopyWith(SaveFAQ value, $Res Function(SaveFAQ) then) =
      _$SaveFAQCopyWithImpl<$Res>;
  $Res call({String orgID});
}

class _$SaveFAQCopyWithImpl<$Res> extends _$EditOrgEventCopyWithImpl<$Res>
    implements $SaveFAQCopyWith<$Res> {
  _$SaveFAQCopyWithImpl(SaveFAQ _value, $Res Function(SaveFAQ) _then)
      : super(_value, (v) => _then(v as SaveFAQ));

  @override
  SaveFAQ get _value => super._value as SaveFAQ;

  @override
  $Res call({
    Object orgID = freezed,
  }) {
    return _then(SaveFAQ(
      orgID == freezed ? _value.orgID : orgID as String,
    ));
  }
}

class _$SaveFAQ implements SaveFAQ {
  const _$SaveFAQ(this.orgID) : assert(orgID != null);

  @override
  final String orgID;

  @override
  String toString() {
    return 'EditOrgEvent.saveFAQ(orgID: $orgID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveFAQ &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orgID);

  @override
  $SaveFAQCopyWith<SaveFAQ> get copyWith =>
      _$SaveFAQCopyWithImpl<SaveFAQ>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return saveFAQ(orgID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveFAQ != null) {
      return saveFAQ(orgID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return saveFAQ(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveFAQ != null) {
      return saveFAQ(this);
    }
    return orElse();
  }
}

abstract class SaveFAQ implements EditOrgEvent {
  const factory SaveFAQ(String orgID) = _$SaveFAQ;

  String get orgID;
  $SaveFAQCopyWith<SaveFAQ> get copyWith;
}

abstract class $QuestionChangedCopyWith<$Res> {
  factory $QuestionChangedCopyWith(
          QuestionChanged value, $Res Function(QuestionChanged) then) =
      _$QuestionChangedCopyWithImpl<$Res>;
  $Res call({String question});
}

class _$QuestionChangedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $QuestionChangedCopyWith<$Res> {
  _$QuestionChangedCopyWithImpl(
      QuestionChanged _value, $Res Function(QuestionChanged) _then)
      : super(_value, (v) => _then(v as QuestionChanged));

  @override
  QuestionChanged get _value => super._value as QuestionChanged;

  @override
  $Res call({
    Object question = freezed,
  }) {
    return _then(QuestionChanged(
      question == freezed ? _value.question : question as String,
    ));
  }
}

class _$QuestionChanged implements QuestionChanged {
  const _$QuestionChanged(this.question) : assert(question != null);

  @override
  final String question;

  @override
  String toString() {
    return 'EditOrgEvent.questionChanged(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuestionChanged &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(question);

  @override
  $QuestionChangedCopyWith<QuestionChanged> get copyWith =>
      _$QuestionChangedCopyWithImpl<QuestionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return questionChanged(question);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (questionChanged != null) {
      return questionChanged(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return questionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (questionChanged != null) {
      return questionChanged(this);
    }
    return orElse();
  }
}

abstract class QuestionChanged implements EditOrgEvent {
  const factory QuestionChanged(String question) = _$QuestionChanged;

  String get question;
  $QuestionChangedCopyWith<QuestionChanged> get copyWith;
}

abstract class $AnswerChangedCopyWith<$Res> {
  factory $AnswerChangedCopyWith(
          AnswerChanged value, $Res Function(AnswerChanged) then) =
      _$AnswerChangedCopyWithImpl<$Res>;
  $Res call({String answer});
}

class _$AnswerChangedCopyWithImpl<$Res> extends _$EditOrgEventCopyWithImpl<$Res>
    implements $AnswerChangedCopyWith<$Res> {
  _$AnswerChangedCopyWithImpl(
      AnswerChanged _value, $Res Function(AnswerChanged) _then)
      : super(_value, (v) => _then(v as AnswerChanged));

  @override
  AnswerChanged get _value => super._value as AnswerChanged;

  @override
  $Res call({
    Object answer = freezed,
  }) {
    return _then(AnswerChanged(
      answer == freezed ? _value.answer : answer as String,
    ));
  }
}

class _$AnswerChanged implements AnswerChanged {
  const _$AnswerChanged(this.answer) : assert(answer != null);

  @override
  final String answer;

  @override
  String toString() {
    return 'EditOrgEvent.answerChanged(answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AnswerChanged &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(answer);

  @override
  $AnswerChangedCopyWith<AnswerChanged> get copyWith =>
      _$AnswerChangedCopyWithImpl<AnswerChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return answerChanged(answer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (answerChanged != null) {
      return answerChanged(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return answerChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (answerChanged != null) {
      return answerChanged(this);
    }
    return orElse();
  }
}

abstract class AnswerChanged implements EditOrgEvent {
  const factory AnswerChanged(String answer) = _$AnswerChanged;

  String get answer;
  $AnswerChangedCopyWith<AnswerChanged> get copyWith;
}

abstract class $RemoveEMemberCopyWith<$Res> {
  factory $RemoveEMemberCopyWith(
          RemoveEMember value, $Res Function(RemoveEMember) then) =
      _$RemoveEMemberCopyWithImpl<$Res>;
  $Res call({String userID, String orgID});
}

class _$RemoveEMemberCopyWithImpl<$Res> extends _$EditOrgEventCopyWithImpl<$Res>
    implements $RemoveEMemberCopyWith<$Res> {
  _$RemoveEMemberCopyWithImpl(
      RemoveEMember _value, $Res Function(RemoveEMember) _then)
      : super(_value, (v) => _then(v as RemoveEMember));

  @override
  RemoveEMember get _value => super._value as RemoveEMember;

  @override
  $Res call({
    Object userID = freezed,
    Object orgID = freezed,
  }) {
    return _then(RemoveEMember(
      userID == freezed ? _value.userID : userID as String,
      orgID == freezed ? _value.orgID : orgID as String,
    ));
  }
}

class _$RemoveEMember implements RemoveEMember {
  const _$RemoveEMember(this.userID, this.orgID)
      : assert(userID != null),
        assert(orgID != null);

  @override
  final String userID;
  @override
  final String orgID;

  @override
  String toString() {
    return 'EditOrgEvent.removeEMember(userID: $userID, orgID: $orgID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveEMember &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(orgID);

  @override
  $RemoveEMemberCopyWith<RemoveEMember> get copyWith =>
      _$RemoveEMemberCopyWithImpl<RemoveEMember>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return removeEMember(userID, orgID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeEMember != null) {
      return removeEMember(userID, orgID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return removeEMember(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeEMember != null) {
      return removeEMember(this);
    }
    return orElse();
  }
}

abstract class RemoveEMember implements EditOrgEvent {
  const factory RemoveEMember(String userID, String orgID) = _$RemoveEMember;

  String get userID;
  String get orgID;
  $RemoveEMemberCopyWith<RemoveEMember> get copyWith;
}

abstract class $EBoardReceivedCopyWith<$Res> {
  factory $EBoardReceivedCopyWith(
          EBoardReceived value, $Res Function(EBoardReceived) then) =
      _$EBoardReceivedCopyWithImpl<$Res>;
  $Res call({KtList<EMember> eboard});
}

class _$EBoardReceivedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $EBoardReceivedCopyWith<$Res> {
  _$EBoardReceivedCopyWithImpl(
      EBoardReceived _value, $Res Function(EBoardReceived) _then)
      : super(_value, (v) => _then(v as EBoardReceived));

  @override
  EBoardReceived get _value => super._value as EBoardReceived;

  @override
  $Res call({
    Object eboard = freezed,
  }) {
    return _then(EBoardReceived(
      eboard == freezed ? _value.eboard : eboard as KtList<EMember>,
    ));
  }
}

class _$EBoardReceived implements EBoardReceived {
  const _$EBoardReceived(this.eboard) : assert(eboard != null);

  @override
  final KtList<EMember> eboard;

  @override
  String toString() {
    return 'EditOrgEvent.eboardReceived(eboard: $eboard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EBoardReceived &&
            (identical(other.eboard, eboard) ||
                const DeepCollectionEquality().equals(other.eboard, eboard)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(eboard);

  @override
  $EBoardReceivedCopyWith<EBoardReceived> get copyWith =>
      _$EBoardReceivedCopyWithImpl<EBoardReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return eboardReceived(eboard);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eboardReceived != null) {
      return eboardReceived(eboard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return eboardReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eboardReceived != null) {
      return eboardReceived(this);
    }
    return orElse();
  }
}

abstract class EBoardReceived implements EditOrgEvent {
  const factory EBoardReceived(KtList<EMember> eboard) = _$EBoardReceived;

  KtList<EMember> get eboard;
  $EBoardReceivedCopyWith<EBoardReceived> get copyWith;
}

abstract class $FAQsReceivedCopyWith<$Res> {
  factory $FAQsReceivedCopyWith(
          FAQsReceived value, $Res Function(FAQsReceived) then) =
      _$FAQsReceivedCopyWithImpl<$Res>;
  $Res call({KtList<FAQ> faqList});
}

class _$FAQsReceivedCopyWithImpl<$Res> extends _$EditOrgEventCopyWithImpl<$Res>
    implements $FAQsReceivedCopyWith<$Res> {
  _$FAQsReceivedCopyWithImpl(
      FAQsReceived _value, $Res Function(FAQsReceived) _then)
      : super(_value, (v) => _then(v as FAQsReceived));

  @override
  FAQsReceived get _value => super._value as FAQsReceived;

  @override
  $Res call({
    Object faqList = freezed,
  }) {
    return _then(FAQsReceived(
      faqList == freezed ? _value.faqList : faqList as KtList<FAQ>,
    ));
  }
}

class _$FAQsReceived implements FAQsReceived {
  const _$FAQsReceived(this.faqList) : assert(faqList != null);

  @override
  final KtList<FAQ> faqList;

  @override
  String toString() {
    return 'EditOrgEvent.faqsReceived(faqList: $faqList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FAQsReceived &&
            (identical(other.faqList, faqList) ||
                const DeepCollectionEquality().equals(other.faqList, faqList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(faqList);

  @override
  $FAQsReceivedCopyWith<FAQsReceived> get copyWith =>
      _$FAQsReceivedCopyWithImpl<FAQsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return faqsReceived(faqList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (faqsReceived != null) {
      return faqsReceived(faqList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return faqsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (faqsReceived != null) {
      return faqsReceived(this);
    }
    return orElse();
  }
}

abstract class FAQsReceived implements EditOrgEvent {
  const factory FAQsReceived(KtList<FAQ> faqList) = _$FAQsReceived;

  KtList<FAQ> get faqList;
  $FAQsReceivedCopyWith<FAQsReceived> get copyWith;
}

abstract class $SearchReceivedCopyWith<$Res> {
  factory $SearchReceivedCopyWith(
          SearchReceived value, $Res Function(SearchReceived) then) =
      _$SearchReceivedCopyWithImpl<$Res>;
  $Res call({KtList<UserList> searchList});
}

class _$SearchReceivedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $SearchReceivedCopyWith<$Res> {
  _$SearchReceivedCopyWithImpl(
      SearchReceived _value, $Res Function(SearchReceived) _then)
      : super(_value, (v) => _then(v as SearchReceived));

  @override
  SearchReceived get _value => super._value as SearchReceived;

  @override
  $Res call({
    Object searchList = freezed,
  }) {
    return _then(SearchReceived(
      searchList == freezed
          ? _value.searchList
          : searchList as KtList<UserList>,
    ));
  }
}

class _$SearchReceived implements SearchReceived {
  const _$SearchReceived(this.searchList) : assert(searchList != null);

  @override
  final KtList<UserList> searchList;

  @override
  String toString() {
    return 'EditOrgEvent.searchReceived(searchList: $searchList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchReceived &&
            (identical(other.searchList, searchList) ||
                const DeepCollectionEquality()
                    .equals(other.searchList, searchList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchList);

  @override
  $SearchReceivedCopyWith<SearchReceived> get copyWith =>
      _$SearchReceivedCopyWithImpl<SearchReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return searchReceived(searchList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchReceived != null) {
      return searchReceived(searchList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return searchReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchReceived != null) {
      return searchReceived(this);
    }
    return orElse();
  }
}

abstract class SearchReceived implements EditOrgEvent {
  const factory SearchReceived(KtList<UserList> searchList) = _$SearchReceived;

  KtList<UserList> get searchList;
  $SearchReceivedCopyWith<SearchReceived> get copyWith;
}

abstract class $SaveOrgCopyWith<$Res> {
  factory $SaveOrgCopyWith(SaveOrg value, $Res Function(SaveOrg) then) =
      _$SaveOrgCopyWithImpl<$Res>;
}

class _$SaveOrgCopyWithImpl<$Res> extends _$EditOrgEventCopyWithImpl<$Res>
    implements $SaveOrgCopyWith<$Res> {
  _$SaveOrgCopyWithImpl(SaveOrg _value, $Res Function(SaveOrg) _then)
      : super(_value, (v) => _then(v as SaveOrg));

  @override
  SaveOrg get _value => super._value as SaveOrg;
}

class _$SaveOrg implements SaveOrg {
  const _$SaveOrg();

  @override
  String toString() {
    return 'EditOrgEvent.saveOrg()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveOrg);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return saveOrg();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveOrg != null) {
      return saveOrg();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return saveOrg(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveOrg != null) {
      return saveOrg(this);
    }
    return orElse();
  }
}

abstract class SaveOrg implements EditOrgEvent {
  const factory SaveOrg() = _$SaveOrg;
}

abstract class $CreateOrgCopyWith<$Res> {
  factory $CreateOrgCopyWith(CreateOrg value, $Res Function(CreateOrg) then) =
      _$CreateOrgCopyWithImpl<$Res>;
  $Res call({String currentUserID});
}

class _$CreateOrgCopyWithImpl<$Res> extends _$EditOrgEventCopyWithImpl<$Res>
    implements $CreateOrgCopyWith<$Res> {
  _$CreateOrgCopyWithImpl(CreateOrg _value, $Res Function(CreateOrg) _then)
      : super(_value, (v) => _then(v as CreateOrg));

  @override
  CreateOrg get _value => super._value as CreateOrg;

  @override
  $Res call({
    Object currentUserID = freezed,
  }) {
    return _then(CreateOrg(
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$CreateOrg implements CreateOrg {
  const _$CreateOrg(this.currentUserID) : assert(currentUserID != null);

  @override
  final String currentUserID;

  @override
  String toString() {
    return 'EditOrgEvent.createOrg(currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateOrg &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentUserID);

  @override
  $CreateOrgCopyWith<CreateOrg> get copyWith =>
      _$CreateOrgCopyWithImpl<CreateOrg>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return createOrg(currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createOrg != null) {
      return createOrg(currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return createOrg(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createOrg != null) {
      return createOrg(this);
    }
    return orElse();
  }
}

abstract class CreateOrg implements EditOrgEvent {
  const factory CreateOrg(String currentUserID) = _$CreateOrg;

  String get currentUserID;
  $CreateOrgCopyWith<CreateOrg> get copyWith;
}

abstract class $OrgProfileImageChangedCopyWith<$Res> {
  factory $OrgProfileImageChangedCopyWith(OrgProfileImageChanged value,
          $Res Function(OrgProfileImageChanged) then) =
      _$OrgProfileImageChangedCopyWithImpl<$Res>;
  $Res call({String url, File image});
}

class _$OrgProfileImageChangedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $OrgProfileImageChangedCopyWith<$Res> {
  _$OrgProfileImageChangedCopyWithImpl(OrgProfileImageChanged _value,
      $Res Function(OrgProfileImageChanged) _then)
      : super(_value, (v) => _then(v as OrgProfileImageChanged));

  @override
  OrgProfileImageChanged get _value => super._value as OrgProfileImageChanged;

  @override
  $Res call({
    Object url = freezed,
    Object image = freezed,
  }) {
    return _then(OrgProfileImageChanged(
      url == freezed ? _value.url : url as String,
      image == freezed ? _value.image : image as File,
    ));
  }
}

class _$OrgProfileImageChanged implements OrgProfileImageChanged {
  const _$OrgProfileImageChanged(this.url, this.image)
      : assert(url != null),
        assert(image != null);

  @override
  final String url;
  @override
  final File image;

  @override
  String toString() {
    return 'EditOrgEvent.orgProfileImageChanged(url: $url, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrgProfileImageChanged &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(image);

  @override
  $OrgProfileImageChangedCopyWith<OrgProfileImageChanged> get copyWith =>
      _$OrgProfileImageChangedCopyWithImpl<OrgProfileImageChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return orgProfileImageChanged(url, image);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orgProfileImageChanged != null) {
      return orgProfileImageChanged(url, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return orgProfileImageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orgProfileImageChanged != null) {
      return orgProfileImageChanged(this);
    }
    return orElse();
  }
}

abstract class OrgProfileImageChanged implements EditOrgEvent {
  const factory OrgProfileImageChanged(String url, File image) =
      _$OrgProfileImageChanged;

  String get url;
  File get image;
  $OrgProfileImageChangedCopyWith<OrgProfileImageChanged> get copyWith;
}

abstract class $OrgBannerImageChangedCopyWith<$Res> {
  factory $OrgBannerImageChangedCopyWith(OrgBannerImageChanged value,
          $Res Function(OrgBannerImageChanged) then) =
      _$OrgBannerImageChangedCopyWithImpl<$Res>;
  $Res call({String url, File image});
}

class _$OrgBannerImageChangedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $OrgBannerImageChangedCopyWith<$Res> {
  _$OrgBannerImageChangedCopyWithImpl(
      OrgBannerImageChanged _value, $Res Function(OrgBannerImageChanged) _then)
      : super(_value, (v) => _then(v as OrgBannerImageChanged));

  @override
  OrgBannerImageChanged get _value => super._value as OrgBannerImageChanged;

  @override
  $Res call({
    Object url = freezed,
    Object image = freezed,
  }) {
    return _then(OrgBannerImageChanged(
      url == freezed ? _value.url : url as String,
      image == freezed ? _value.image : image as File,
    ));
  }
}

class _$OrgBannerImageChanged implements OrgBannerImageChanged {
  const _$OrgBannerImageChanged(this.url, this.image)
      : assert(url != null),
        assert(image != null);

  @override
  final String url;
  @override
  final File image;

  @override
  String toString() {
    return 'EditOrgEvent.orgBannerImageChanged(url: $url, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrgBannerImageChanged &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(image);

  @override
  $OrgBannerImageChangedCopyWith<OrgBannerImageChanged> get copyWith =>
      _$OrgBannerImageChangedCopyWithImpl<OrgBannerImageChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return orgBannerImageChanged(url, image);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orgBannerImageChanged != null) {
      return orgBannerImageChanged(url, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return orgBannerImageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orgBannerImageChanged != null) {
      return orgBannerImageChanged(this);
    }
    return orElse();
  }
}

abstract class OrgBannerImageChanged implements EditOrgEvent {
  const factory OrgBannerImageChanged(String url, File image) =
      _$OrgBannerImageChanged;

  String get url;
  File get image;
  $OrgBannerImageChangedCopyWith<OrgBannerImageChanged> get copyWith;
}

abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$NameChangedCopyWithImpl<$Res> extends _$EditOrgEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'EditOrgEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements EditOrgEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name;
  $NameChangedCopyWith<NameChanged> get copyWith;
}

abstract class $AbbvChangedCopyWith<$Res> {
  factory $AbbvChangedCopyWith(
          AbbvChanged value, $Res Function(AbbvChanged) then) =
      _$AbbvChangedCopyWithImpl<$Res>;
  $Res call({String abbv});
}

class _$AbbvChangedCopyWithImpl<$Res> extends _$EditOrgEventCopyWithImpl<$Res>
    implements $AbbvChangedCopyWith<$Res> {
  _$AbbvChangedCopyWithImpl(
      AbbvChanged _value, $Res Function(AbbvChanged) _then)
      : super(_value, (v) => _then(v as AbbvChanged));

  @override
  AbbvChanged get _value => super._value as AbbvChanged;

  @override
  $Res call({
    Object abbv = freezed,
  }) {
    return _then(AbbvChanged(
      abbv == freezed ? _value.abbv : abbv as String,
    ));
  }
}

class _$AbbvChanged implements AbbvChanged {
  const _$AbbvChanged(this.abbv) : assert(abbv != null);

  @override
  final String abbv;

  @override
  String toString() {
    return 'EditOrgEvent.abbvChanged(abbv: $abbv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AbbvChanged &&
            (identical(other.abbv, abbv) ||
                const DeepCollectionEquality().equals(other.abbv, abbv)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(abbv);

  @override
  $AbbvChangedCopyWith<AbbvChanged> get copyWith =>
      _$AbbvChangedCopyWithImpl<AbbvChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return abbvChanged(abbv);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (abbvChanged != null) {
      return abbvChanged(abbv);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return abbvChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (abbvChanged != null) {
      return abbvChanged(this);
    }
    return orElse();
  }
}

abstract class AbbvChanged implements EditOrgEvent {
  const factory AbbvChanged(String abbv) = _$AbbvChanged;

  String get abbv;
  $AbbvChangedCopyWith<AbbvChanged> get copyWith;
}

abstract class $PrimaryColorChangedCopyWith<$Res> {
  factory $PrimaryColorChangedCopyWith(
          PrimaryColorChanged value, $Res Function(PrimaryColorChanged) then) =
      _$PrimaryColorChangedCopyWithImpl<$Res>;
  $Res call({String primaryColor});
}

class _$PrimaryColorChangedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $PrimaryColorChangedCopyWith<$Res> {
  _$PrimaryColorChangedCopyWithImpl(
      PrimaryColorChanged _value, $Res Function(PrimaryColorChanged) _then)
      : super(_value, (v) => _then(v as PrimaryColorChanged));

  @override
  PrimaryColorChanged get _value => super._value as PrimaryColorChanged;

  @override
  $Res call({
    Object primaryColor = freezed,
  }) {
    return _then(PrimaryColorChanged(
      primaryColor == freezed ? _value.primaryColor : primaryColor as String,
    ));
  }
}

class _$PrimaryColorChanged implements PrimaryColorChanged {
  const _$PrimaryColorChanged(this.primaryColor) : assert(primaryColor != null);

  @override
  final String primaryColor;

  @override
  String toString() {
    return 'EditOrgEvent.primaryColorChanged(primaryColor: $primaryColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PrimaryColorChanged &&
            (identical(other.primaryColor, primaryColor) ||
                const DeepCollectionEquality()
                    .equals(other.primaryColor, primaryColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(primaryColor);

  @override
  $PrimaryColorChangedCopyWith<PrimaryColorChanged> get copyWith =>
      _$PrimaryColorChangedCopyWithImpl<PrimaryColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return primaryColorChanged(primaryColor);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (primaryColorChanged != null) {
      return primaryColorChanged(primaryColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return primaryColorChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (primaryColorChanged != null) {
      return primaryColorChanged(this);
    }
    return orElse();
  }
}

abstract class PrimaryColorChanged implements EditOrgEvent {
  const factory PrimaryColorChanged(String primaryColor) =
      _$PrimaryColorChanged;

  String get primaryColor;
  $PrimaryColorChangedCopyWith<PrimaryColorChanged> get copyWith;
}

abstract class $SecondaryColorChangedCopyWith<$Res> {
  factory $SecondaryColorChangedCopyWith(SecondaryColorChanged value,
          $Res Function(SecondaryColorChanged) then) =
      _$SecondaryColorChangedCopyWithImpl<$Res>;
  $Res call({String secondaryColor});
}

class _$SecondaryColorChangedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $SecondaryColorChangedCopyWith<$Res> {
  _$SecondaryColorChangedCopyWithImpl(
      SecondaryColorChanged _value, $Res Function(SecondaryColorChanged) _then)
      : super(_value, (v) => _then(v as SecondaryColorChanged));

  @override
  SecondaryColorChanged get _value => super._value as SecondaryColorChanged;

  @override
  $Res call({
    Object secondaryColor = freezed,
  }) {
    return _then(SecondaryColorChanged(
      secondaryColor == freezed
          ? _value.secondaryColor
          : secondaryColor as String,
    ));
  }
}

class _$SecondaryColorChanged implements SecondaryColorChanged {
  const _$SecondaryColorChanged(this.secondaryColor)
      : assert(secondaryColor != null);

  @override
  final String secondaryColor;

  @override
  String toString() {
    return 'EditOrgEvent.secondaryColorChanged(secondaryColor: $secondaryColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SecondaryColorChanged &&
            (identical(other.secondaryColor, secondaryColor) ||
                const DeepCollectionEquality()
                    .equals(other.secondaryColor, secondaryColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(secondaryColor);

  @override
  $SecondaryColorChangedCopyWith<SecondaryColorChanged> get copyWith =>
      _$SecondaryColorChangedCopyWithImpl<SecondaryColorChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return secondaryColorChanged(secondaryColor);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (secondaryColorChanged != null) {
      return secondaryColorChanged(secondaryColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return secondaryColorChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (secondaryColorChanged != null) {
      return secondaryColorChanged(this);
    }
    return orElse();
  }
}

abstract class SecondaryColorChanged implements EditOrgEvent {
  const factory SecondaryColorChanged(String secondaryColor) =
      _$SecondaryColorChanged;

  String get secondaryColor;
  $SecondaryColorChangedCopyWith<SecondaryColorChanged> get copyWith;
}

abstract class $MissionStatementChangedCopyWith<$Res> {
  factory $MissionStatementChangedCopyWith(MissionStatementChanged value,
          $Res Function(MissionStatementChanged) then) =
      _$MissionStatementChangedCopyWithImpl<$Res>;
  $Res call({String missionStatement});
}

class _$MissionStatementChangedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $MissionStatementChangedCopyWith<$Res> {
  _$MissionStatementChangedCopyWithImpl(MissionStatementChanged _value,
      $Res Function(MissionStatementChanged) _then)
      : super(_value, (v) => _then(v as MissionStatementChanged));

  @override
  MissionStatementChanged get _value => super._value as MissionStatementChanged;

  @override
  $Res call({
    Object missionStatement = freezed,
  }) {
    return _then(MissionStatementChanged(
      missionStatement == freezed
          ? _value.missionStatement
          : missionStatement as String,
    ));
  }
}

class _$MissionStatementChanged implements MissionStatementChanged {
  const _$MissionStatementChanged(this.missionStatement)
      : assert(missionStatement != null);

  @override
  final String missionStatement;

  @override
  String toString() {
    return 'EditOrgEvent.missionStatementChanged(missionStatement: $missionStatement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MissionStatementChanged &&
            (identical(other.missionStatement, missionStatement) ||
                const DeepCollectionEquality()
                    .equals(other.missionStatement, missionStatement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(missionStatement);

  @override
  $MissionStatementChangedCopyWith<MissionStatementChanged> get copyWith =>
      _$MissionStatementChangedCopyWithImpl<MissionStatementChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return missionStatementChanged(missionStatement);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (missionStatementChanged != null) {
      return missionStatementChanged(missionStatement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return missionStatementChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (missionStatementChanged != null) {
      return missionStatementChanged(this);
    }
    return orElse();
  }
}

abstract class MissionStatementChanged implements EditOrgEvent {
  const factory MissionStatementChanged(String missionStatement) =
      _$MissionStatementChanged;

  String get missionStatement;
  $MissionStatementChangedCopyWith<MissionStatementChanged> get copyWith;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$EmailChangedCopyWithImpl<$Res> extends _$EditOrgEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'EditOrgEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements EditOrgEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $OfficeLocationChangedCopyWith<$Res> {
  factory $OfficeLocationChangedCopyWith(OfficeLocationChanged value,
          $Res Function(OfficeLocationChanged) then) =
      _$OfficeLocationChangedCopyWithImpl<$Res>;
  $Res call({String officeLocation});
}

class _$OfficeLocationChangedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $OfficeLocationChangedCopyWith<$Res> {
  _$OfficeLocationChangedCopyWithImpl(
      OfficeLocationChanged _value, $Res Function(OfficeLocationChanged) _then)
      : super(_value, (v) => _then(v as OfficeLocationChanged));

  @override
  OfficeLocationChanged get _value => super._value as OfficeLocationChanged;

  @override
  $Res call({
    Object officeLocation = freezed,
  }) {
    return _then(OfficeLocationChanged(
      officeLocation == freezed
          ? _value.officeLocation
          : officeLocation as String,
    ));
  }
}

class _$OfficeLocationChanged implements OfficeLocationChanged {
  const _$OfficeLocationChanged(this.officeLocation)
      : assert(officeLocation != null);

  @override
  final String officeLocation;

  @override
  String toString() {
    return 'EditOrgEvent.officeLocationChanged(officeLocation: $officeLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OfficeLocationChanged &&
            (identical(other.officeLocation, officeLocation) ||
                const DeepCollectionEquality()
                    .equals(other.officeLocation, officeLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(officeLocation);

  @override
  $OfficeLocationChangedCopyWith<OfficeLocationChanged> get copyWith =>
      _$OfficeLocationChangedCopyWithImpl<OfficeLocationChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return officeLocationChanged(officeLocation);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (officeLocationChanged != null) {
      return officeLocationChanged(officeLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return officeLocationChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (officeLocationChanged != null) {
      return officeLocationChanged(this);
    }
    return orElse();
  }
}

abstract class OfficeLocationChanged implements EditOrgEvent {
  const factory OfficeLocationChanged(String officeLocation) =
      _$OfficeLocationChanged;

  String get officeLocation;
  $OfficeLocationChangedCopyWith<OfficeLocationChanged> get copyWith;
}

abstract class $EMemberSelectedCopyWith<$Res> {
  factory $EMemberSelectedCopyWith(
          EMemberSelected value, $Res Function(EMemberSelected) then) =
      _$EMemberSelectedCopyWithImpl<$Res>;
  $Res call({UniqueId userID});
}

class _$EMemberSelectedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $EMemberSelectedCopyWith<$Res> {
  _$EMemberSelectedCopyWithImpl(
      EMemberSelected _value, $Res Function(EMemberSelected) _then)
      : super(_value, (v) => _then(v as EMemberSelected));

  @override
  EMemberSelected get _value => super._value as EMemberSelected;

  @override
  $Res call({
    Object userID = freezed,
  }) {
    return _then(EMemberSelected(
      userID == freezed ? _value.userID : userID as UniqueId,
    ));
  }
}

class _$EMemberSelected implements EMemberSelected {
  const _$EMemberSelected(this.userID) : assert(userID != null);

  @override
  final UniqueId userID;

  @override
  String toString() {
    return 'EditOrgEvent.eMemberSelected(userID: $userID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EMemberSelected &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userID);

  @override
  $EMemberSelectedCopyWith<EMemberSelected> get copyWith =>
      _$EMemberSelectedCopyWithImpl<EMemberSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return eMemberSelected(userID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eMemberSelected != null) {
      return eMemberSelected(userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return eMemberSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (eMemberSelected != null) {
      return eMemberSelected(this);
    }
    return orElse();
  }
}

abstract class EMemberSelected implements EditOrgEvent {
  const factory EMemberSelected(UniqueId userID) = _$EMemberSelected;

  UniqueId get userID;
  $EMemberSelectedCopyWith<EMemberSelected> get copyWith;
}

abstract class $PositionChangedCopyWith<$Res> {
  factory $PositionChangedCopyWith(
          PositionChanged value, $Res Function(PositionChanged) then) =
      _$PositionChangedCopyWithImpl<$Res>;
  $Res call({String position});
}

class _$PositionChangedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $PositionChangedCopyWith<$Res> {
  _$PositionChangedCopyWithImpl(
      PositionChanged _value, $Res Function(PositionChanged) _then)
      : super(_value, (v) => _then(v as PositionChanged));

  @override
  PositionChanged get _value => super._value as PositionChanged;

  @override
  $Res call({
    Object position = freezed,
  }) {
    return _then(PositionChanged(
      position == freezed ? _value.position : position as String,
    ));
  }
}

class _$PositionChanged implements PositionChanged {
  const _$PositionChanged(this.position) : assert(position != null);

  @override
  final String position;

  @override
  String toString() {
    return 'EditOrgEvent.positionChanged(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PositionChanged &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(position);

  @override
  $PositionChangedCopyWith<PositionChanged> get copyWith =>
      _$PositionChangedCopyWithImpl<PositionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return positionChanged(position);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (positionChanged != null) {
      return positionChanged(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return positionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (positionChanged != null) {
      return positionChanged(this);
    }
    return orElse();
  }
}

abstract class PositionChanged implements EditOrgEvent {
  const factory PositionChanged(String position) = _$PositionChanged;

  String get position;
  $PositionChangedCopyWith<PositionChanged> get copyWith;
}

abstract class $InstagramURLChangedCopyWith<$Res> {
  factory $InstagramURLChangedCopyWith(
          InstagramURLChanged value, $Res Function(InstagramURLChanged) then) =
      _$InstagramURLChangedCopyWithImpl<$Res>;
  $Res call({String instagramURL});
}

class _$InstagramURLChangedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $InstagramURLChangedCopyWith<$Res> {
  _$InstagramURLChangedCopyWithImpl(
      InstagramURLChanged _value, $Res Function(InstagramURLChanged) _then)
      : super(_value, (v) => _then(v as InstagramURLChanged));

  @override
  InstagramURLChanged get _value => super._value as InstagramURLChanged;

  @override
  $Res call({
    Object instagramURL = freezed,
  }) {
    return _then(InstagramURLChanged(
      instagramURL == freezed ? _value.instagramURL : instagramURL as String,
    ));
  }
}

class _$InstagramURLChanged implements InstagramURLChanged {
  const _$InstagramURLChanged(this.instagramURL) : assert(instagramURL != null);

  @override
  final String instagramURL;

  @override
  String toString() {
    return 'EditOrgEvent.instagramURLChanged(instagramURL: $instagramURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InstagramURLChanged &&
            (identical(other.instagramURL, instagramURL) ||
                const DeepCollectionEquality()
                    .equals(other.instagramURL, instagramURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(instagramURL);

  @override
  $InstagramURLChangedCopyWith<InstagramURLChanged> get copyWith =>
      _$InstagramURLChangedCopyWithImpl<InstagramURLChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return instagramURLChanged(instagramURL);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (instagramURLChanged != null) {
      return instagramURLChanged(instagramURL);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return instagramURLChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (instagramURLChanged != null) {
      return instagramURLChanged(this);
    }
    return orElse();
  }
}

abstract class InstagramURLChanged implements EditOrgEvent {
  const factory InstagramURLChanged(String instagramURL) =
      _$InstagramURLChanged;

  String get instagramURL;
  $InstagramURLChangedCopyWith<InstagramURLChanged> get copyWith;
}

abstract class $FacebookURLChangedCopyWith<$Res> {
  factory $FacebookURLChangedCopyWith(
          FacebookURLChanged value, $Res Function(FacebookURLChanged) then) =
      _$FacebookURLChangedCopyWithImpl<$Res>;
  $Res call({String facebookURL});
}

class _$FacebookURLChangedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $FacebookURLChangedCopyWith<$Res> {
  _$FacebookURLChangedCopyWithImpl(
      FacebookURLChanged _value, $Res Function(FacebookURLChanged) _then)
      : super(_value, (v) => _then(v as FacebookURLChanged));

  @override
  FacebookURLChanged get _value => super._value as FacebookURLChanged;

  @override
  $Res call({
    Object facebookURL = freezed,
  }) {
    return _then(FacebookURLChanged(
      facebookURL == freezed ? _value.facebookURL : facebookURL as String,
    ));
  }
}

class _$FacebookURLChanged implements FacebookURLChanged {
  const _$FacebookURLChanged(this.facebookURL) : assert(facebookURL != null);

  @override
  final String facebookURL;

  @override
  String toString() {
    return 'EditOrgEvent.facebookURLChanged(facebookURL: $facebookURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FacebookURLChanged &&
            (identical(other.facebookURL, facebookURL) ||
                const DeepCollectionEquality()
                    .equals(other.facebookURL, facebookURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(facebookURL);

  @override
  $FacebookURLChangedCopyWith<FacebookURLChanged> get copyWith =>
      _$FacebookURLChangedCopyWithImpl<FacebookURLChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return facebookURLChanged(facebookURL);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (facebookURLChanged != null) {
      return facebookURLChanged(facebookURL);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return facebookURLChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (facebookURLChanged != null) {
      return facebookURLChanged(this);
    }
    return orElse();
  }
}

abstract class FacebookURLChanged implements EditOrgEvent {
  const factory FacebookURLChanged(String facebookURL) = _$FacebookURLChanged;

  String get facebookURL;
  $FacebookURLChangedCopyWith<FacebookURLChanged> get copyWith;
}

abstract class $WebsiteURLChangedCopyWith<$Res> {
  factory $WebsiteURLChangedCopyWith(
          WebsiteURLChanged value, $Res Function(WebsiteURLChanged) then) =
      _$WebsiteURLChangedCopyWithImpl<$Res>;
  $Res call({String websiteURL});
}

class _$WebsiteURLChangedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $WebsiteURLChangedCopyWith<$Res> {
  _$WebsiteURLChangedCopyWithImpl(
      WebsiteURLChanged _value, $Res Function(WebsiteURLChanged) _then)
      : super(_value, (v) => _then(v as WebsiteURLChanged));

  @override
  WebsiteURLChanged get _value => super._value as WebsiteURLChanged;

  @override
  $Res call({
    Object websiteURL = freezed,
  }) {
    return _then(WebsiteURLChanged(
      websiteURL == freezed ? _value.websiteURL : websiteURL as String,
    ));
  }
}

class _$WebsiteURLChanged implements WebsiteURLChanged {
  const _$WebsiteURLChanged(this.websiteURL) : assert(websiteURL != null);

  @override
  final String websiteURL;

  @override
  String toString() {
    return 'EditOrgEvent.websiteURLChanged(websiteURL: $websiteURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WebsiteURLChanged &&
            (identical(other.websiteURL, websiteURL) ||
                const DeepCollectionEquality()
                    .equals(other.websiteURL, websiteURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(websiteURL);

  @override
  $WebsiteURLChangedCopyWith<WebsiteURLChanged> get copyWith =>
      _$WebsiteURLChangedCopyWithImpl<WebsiteURLChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return websiteURLChanged(websiteURL);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (websiteURLChanged != null) {
      return websiteURLChanged(websiteURL);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return websiteURLChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (websiteURLChanged != null) {
      return websiteURLChanged(this);
    }
    return orElse();
  }
}

abstract class WebsiteURLChanged implements EditOrgEvent {
  const factory WebsiteURLChanged(String websiteURL) = _$WebsiteURLChanged;

  String get websiteURL;
  $WebsiteURLChangedCopyWith<WebsiteURLChanged> get copyWith;
}

abstract class $TwitterURLChangedCopyWith<$Res> {
  factory $TwitterURLChangedCopyWith(
          TwitterURLChanged value, $Res Function(TwitterURLChanged) then) =
      _$TwitterURLChangedCopyWithImpl<$Res>;
  $Res call({String twitterURL});
}

class _$TwitterURLChangedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $TwitterURLChangedCopyWith<$Res> {
  _$TwitterURLChangedCopyWithImpl(
      TwitterURLChanged _value, $Res Function(TwitterURLChanged) _then)
      : super(_value, (v) => _then(v as TwitterURLChanged));

  @override
  TwitterURLChanged get _value => super._value as TwitterURLChanged;

  @override
  $Res call({
    Object twitterURL = freezed,
  }) {
    return _then(TwitterURLChanged(
      twitterURL == freezed ? _value.twitterURL : twitterURL as String,
    ));
  }
}

class _$TwitterURLChanged implements TwitterURLChanged {
  const _$TwitterURLChanged(this.twitterURL) : assert(twitterURL != null);

  @override
  final String twitterURL;

  @override
  String toString() {
    return 'EditOrgEvent.twitterURLChanged(twitterURL: $twitterURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TwitterURLChanged &&
            (identical(other.twitterURL, twitterURL) ||
                const DeepCollectionEquality()
                    .equals(other.twitterURL, twitterURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(twitterURL);

  @override
  $TwitterURLChangedCopyWith<TwitterURLChanged> get copyWith =>
      _$TwitterURLChangedCopyWithImpl<TwitterURLChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return twitterURLChanged(twitterURL);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (twitterURLChanged != null) {
      return twitterURLChanged(twitterURL);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return twitterURLChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (twitterURLChanged != null) {
      return twitterURLChanged(this);
    }
    return orElse();
  }
}

abstract class TwitterURLChanged implements EditOrgEvent {
  const factory TwitterURLChanged(String twitterURL) = _$TwitterURLChanged;

  String get twitterURL;
  $TwitterURLChangedCopyWith<TwitterURLChanged> get copyWith;
}

abstract class $AdminTitleChangedCopyWith<$Res> {
  factory $AdminTitleChangedCopyWith(
          AdminTitleChanged value, $Res Function(AdminTitleChanged) then) =
      _$AdminTitleChangedCopyWithImpl<$Res>;
  $Res call({String adminTitle});
}

class _$AdminTitleChangedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $AdminTitleChangedCopyWith<$Res> {
  _$AdminTitleChangedCopyWithImpl(
      AdminTitleChanged _value, $Res Function(AdminTitleChanged) _then)
      : super(_value, (v) => _then(v as AdminTitleChanged));

  @override
  AdminTitleChanged get _value => super._value as AdminTitleChanged;

  @override
  $Res call({
    Object adminTitle = freezed,
  }) {
    return _then(AdminTitleChanged(
      adminTitle == freezed ? _value.adminTitle : adminTitle as String,
    ));
  }
}

class _$AdminTitleChanged implements AdminTitleChanged {
  const _$AdminTitleChanged(this.adminTitle) : assert(adminTitle != null);

  @override
  final String adminTitle;

  @override
  String toString() {
    return 'EditOrgEvent.adminTitleChanged(adminTitle: $adminTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdminTitleChanged &&
            (identical(other.adminTitle, adminTitle) ||
                const DeepCollectionEquality()
                    .equals(other.adminTitle, adminTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(adminTitle);

  @override
  $AdminTitleChangedCopyWith<AdminTitleChanged> get copyWith =>
      _$AdminTitleChangedCopyWithImpl<AdminTitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return adminTitleChanged(adminTitle);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (adminTitleChanged != null) {
      return adminTitleChanged(adminTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return adminTitleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (adminTitleChanged != null) {
      return adminTitleChanged(this);
    }
    return orElse();
  }
}

abstract class AdminTitleChanged implements EditOrgEvent {
  const factory AdminTitleChanged(String adminTitle) = _$AdminTitleChanged;

  String get adminTitle;
  $AdminTitleChangedCopyWith<AdminTitleChanged> get copyWith;
}

abstract class $LinkedInURLChangedCopyWith<$Res> {
  factory $LinkedInURLChangedCopyWith(
          LinkedInURLChanged value, $Res Function(LinkedInURLChanged) then) =
      _$LinkedInURLChangedCopyWithImpl<$Res>;
  $Res call({String linkedInURL});
}

class _$LinkedInURLChangedCopyWithImpl<$Res>
    extends _$EditOrgEventCopyWithImpl<$Res>
    implements $LinkedInURLChangedCopyWith<$Res> {
  _$LinkedInURLChangedCopyWithImpl(
      LinkedInURLChanged _value, $Res Function(LinkedInURLChanged) _then)
      : super(_value, (v) => _then(v as LinkedInURLChanged));

  @override
  LinkedInURLChanged get _value => super._value as LinkedInURLChanged;

  @override
  $Res call({
    Object linkedInURL = freezed,
  }) {
    return _then(LinkedInURLChanged(
      linkedInURL == freezed ? _value.linkedInURL : linkedInURL as String,
    ));
  }
}

class _$LinkedInURLChanged implements LinkedInURLChanged {
  const _$LinkedInURLChanged(this.linkedInURL) : assert(linkedInURL != null);

  @override
  final String linkedInURL;

  @override
  String toString() {
    return 'EditOrgEvent.linkedInURLChanged(linkedInURL: $linkedInURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LinkedInURLChanged &&
            (identical(other.linkedInURL, linkedInURL) ||
                const DeepCollectionEquality()
                    .equals(other.linkedInURL, linkedInURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(linkedInURL);

  @override
  $LinkedInURLChangedCopyWith<LinkedInURLChanged> get copyWith =>
      _$LinkedInURLChangedCopyWithImpl<LinkedInURLChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Organization org),
    @required Result getSearch(String name),
    @required Result addEMember(String orgID, EMember eMember),
    @required Result removeFAQ(String faqID, String orgID),
    @required Result saveFAQ(String orgID),
    @required Result questionChanged(String question),
    @required Result answerChanged(String answer),
    @required Result removeEMember(String userID, String orgID),
    @required Result eboardReceived(KtList<EMember> eboard),
    @required Result faqsReceived(KtList<FAQ> faqList),
    @required Result searchReceived(KtList<UserList> searchList),
    @required Result saveOrg(),
    @required Result createOrg(String currentUserID),
    @required Result orgProfileImageChanged(String url, File image),
    @required Result orgBannerImageChanged(String url, File image),
    @required Result nameChanged(String name),
    @required Result abbvChanged(String abbv),
    @required Result primaryColorChanged(String primaryColor),
    @required Result secondaryColorChanged(String secondaryColor),
    @required Result missionStatementChanged(String missionStatement),
    @required Result emailChanged(String email),
    @required Result officeLocationChanged(String officeLocation),
    @required Result eMemberSelected(UniqueId userID),
    @required Result positionChanged(String position),
    @required Result instagramURLChanged(String instagramURL),
    @required Result facebookURLChanged(String facebookURL),
    @required Result websiteURLChanged(String websiteURL),
    @required Result twitterURLChanged(String twitterURL),
    @required Result adminTitleChanged(String adminTitle),
    @required Result linkedInURLChanged(String linkedInURL),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return linkedInURLChanged(linkedInURL);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Organization org),
    Result getSearch(String name),
    Result addEMember(String orgID, EMember eMember),
    Result removeFAQ(String faqID, String orgID),
    Result saveFAQ(String orgID),
    Result questionChanged(String question),
    Result answerChanged(String answer),
    Result removeEMember(String userID, String orgID),
    Result eboardReceived(KtList<EMember> eboard),
    Result faqsReceived(KtList<FAQ> faqList),
    Result searchReceived(KtList<UserList> searchList),
    Result saveOrg(),
    Result createOrg(String currentUserID),
    Result orgProfileImageChanged(String url, File image),
    Result orgBannerImageChanged(String url, File image),
    Result nameChanged(String name),
    Result abbvChanged(String abbv),
    Result primaryColorChanged(String primaryColor),
    Result secondaryColorChanged(String secondaryColor),
    Result missionStatementChanged(String missionStatement),
    Result emailChanged(String email),
    Result officeLocationChanged(String officeLocation),
    Result eMemberSelected(UniqueId userID),
    Result positionChanged(String position),
    Result instagramURLChanged(String instagramURL),
    Result facebookURLChanged(String facebookURL),
    Result websiteURLChanged(String websiteURL),
    Result twitterURLChanged(String twitterURL),
    Result adminTitleChanged(String adminTitle),
    Result linkedInURLChanged(String linkedInURL),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (linkedInURLChanged != null) {
      return linkedInURLChanged(linkedInURL);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetEditOrgData value),
    @required Result getSearch(GetSearch value),
    @required Result addEMember(AddEMember value),
    @required Result removeFAQ(RemoveFAQ value),
    @required Result saveFAQ(SaveFAQ value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result removeEMember(RemoveEMember value),
    @required Result eboardReceived(EBoardReceived value),
    @required Result faqsReceived(FAQsReceived value),
    @required Result searchReceived(SearchReceived value),
    @required Result saveOrg(SaveOrg value),
    @required Result createOrg(CreateOrg value),
    @required Result orgProfileImageChanged(OrgProfileImageChanged value),
    @required Result orgBannerImageChanged(OrgBannerImageChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result abbvChanged(AbbvChanged value),
    @required Result primaryColorChanged(PrimaryColorChanged value),
    @required Result secondaryColorChanged(SecondaryColorChanged value),
    @required Result missionStatementChanged(MissionStatementChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result officeLocationChanged(OfficeLocationChanged value),
    @required Result eMemberSelected(EMemberSelected value),
    @required Result positionChanged(PositionChanged value),
    @required Result instagramURLChanged(InstagramURLChanged value),
    @required Result facebookURLChanged(FacebookURLChanged value),
    @required Result websiteURLChanged(WebsiteURLChanged value),
    @required Result twitterURLChanged(TwitterURLChanged value),
    @required Result adminTitleChanged(AdminTitleChanged value),
    @required Result linkedInURLChanged(LinkedInURLChanged value),
  }) {
    assert(getData != null);
    assert(getSearch != null);
    assert(addEMember != null);
    assert(removeFAQ != null);
    assert(saveFAQ != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(removeEMember != null);
    assert(eboardReceived != null);
    assert(faqsReceived != null);
    assert(searchReceived != null);
    assert(saveOrg != null);
    assert(createOrg != null);
    assert(orgProfileImageChanged != null);
    assert(orgBannerImageChanged != null);
    assert(nameChanged != null);
    assert(abbvChanged != null);
    assert(primaryColorChanged != null);
    assert(secondaryColorChanged != null);
    assert(missionStatementChanged != null);
    assert(emailChanged != null);
    assert(officeLocationChanged != null);
    assert(eMemberSelected != null);
    assert(positionChanged != null);
    assert(instagramURLChanged != null);
    assert(facebookURLChanged != null);
    assert(websiteURLChanged != null);
    assert(twitterURLChanged != null);
    assert(adminTitleChanged != null);
    assert(linkedInURLChanged != null);
    return linkedInURLChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetEditOrgData value),
    Result getSearch(GetSearch value),
    Result addEMember(AddEMember value),
    Result removeFAQ(RemoveFAQ value),
    Result saveFAQ(SaveFAQ value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result removeEMember(RemoveEMember value),
    Result eboardReceived(EBoardReceived value),
    Result faqsReceived(FAQsReceived value),
    Result searchReceived(SearchReceived value),
    Result saveOrg(SaveOrg value),
    Result createOrg(CreateOrg value),
    Result orgProfileImageChanged(OrgProfileImageChanged value),
    Result orgBannerImageChanged(OrgBannerImageChanged value),
    Result nameChanged(NameChanged value),
    Result abbvChanged(AbbvChanged value),
    Result primaryColorChanged(PrimaryColorChanged value),
    Result secondaryColorChanged(SecondaryColorChanged value),
    Result missionStatementChanged(MissionStatementChanged value),
    Result emailChanged(EmailChanged value),
    Result officeLocationChanged(OfficeLocationChanged value),
    Result eMemberSelected(EMemberSelected value),
    Result positionChanged(PositionChanged value),
    Result instagramURLChanged(InstagramURLChanged value),
    Result facebookURLChanged(FacebookURLChanged value),
    Result websiteURLChanged(WebsiteURLChanged value),
    Result twitterURLChanged(TwitterURLChanged value),
    Result adminTitleChanged(AdminTitleChanged value),
    Result linkedInURLChanged(LinkedInURLChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (linkedInURLChanged != null) {
      return linkedInURLChanged(this);
    }
    return orElse();
  }
}

abstract class LinkedInURLChanged implements EditOrgEvent {
  const factory LinkedInURLChanged(String linkedInURL) = _$LinkedInURLChanged;

  String get linkedInURL;
  $LinkedInURLChangedCopyWith<LinkedInURLChanged> get copyWith;
}

class _$EditOrgStateTearOff {
  const _$EditOrgStateTearOff();

  _EditOrgState call(
      {@required KtList<EMember> eboard,
      @required KtList<User> users,
      @required KtList<FAQ> faqs,
      @required KtList<UserList> search,
      @required Organization org,
      @required FAQ faq,
      @required EMember eMember,
      @required bool isSaving,
      @required Option<Either<OrgFailure, Unit>> saveFailureOrSuccessOption,
      @required bool showErrorMessages}) {
    return _EditOrgState(
      eboard: eboard,
      users: users,
      faqs: faqs,
      search: search,
      org: org,
      faq: faq,
      eMember: eMember,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      showErrorMessages: showErrorMessages,
    );
  }
}

// ignore: unused_element
const $EditOrgState = _$EditOrgStateTearOff();

mixin _$EditOrgState {
  KtList<EMember> get eboard;
  KtList<User> get users;
  KtList<FAQ> get faqs;
  KtList<UserList> get search;
  Organization get org;
  FAQ get faq;
  EMember get eMember;
  bool get isSaving;
  Option<Either<OrgFailure, Unit>> get saveFailureOrSuccessOption;
  bool get showErrorMessages;

  $EditOrgStateCopyWith<EditOrgState> get copyWith;
}

abstract class $EditOrgStateCopyWith<$Res> {
  factory $EditOrgStateCopyWith(
          EditOrgState value, $Res Function(EditOrgState) then) =
      _$EditOrgStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<EMember> eboard,
      KtList<User> users,
      KtList<FAQ> faqs,
      KtList<UserList> search,
      Organization org,
      FAQ faq,
      EMember eMember,
      bool isSaving,
      Option<Either<OrgFailure, Unit>> saveFailureOrSuccessOption,
      bool showErrorMessages});

  $OrganizationCopyWith<$Res> get org;
  $FAQCopyWith<$Res> get faq;
  $EMemberCopyWith<$Res> get eMember;
}

class _$EditOrgStateCopyWithImpl<$Res> implements $EditOrgStateCopyWith<$Res> {
  _$EditOrgStateCopyWithImpl(this._value, this._then);

  final EditOrgState _value;
  // ignore: unused_field
  final $Res Function(EditOrgState) _then;

  @override
  $Res call({
    Object eboard = freezed,
    Object users = freezed,
    Object faqs = freezed,
    Object search = freezed,
    Object org = freezed,
    Object faq = freezed,
    Object eMember = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object showErrorMessages = freezed,
  }) {
    return _then(_value.copyWith(
      eboard: eboard == freezed ? _value.eboard : eboard as KtList<EMember>,
      users: users == freezed ? _value.users : users as KtList<User>,
      faqs: faqs == freezed ? _value.faqs : faqs as KtList<FAQ>,
      search: search == freezed ? _value.search : search as KtList<UserList>,
      org: org == freezed ? _value.org : org as Organization,
      faq: faq == freezed ? _value.faq : faq as FAQ,
      eMember: eMember == freezed ? _value.eMember : eMember as EMember,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<OrgFailure, Unit>>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
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
  $FAQCopyWith<$Res> get faq {
    if (_value.faq == null) {
      return null;
    }
    return $FAQCopyWith<$Res>(_value.faq, (value) {
      return _then(_value.copyWith(faq: value));
    });
  }

  @override
  $EMemberCopyWith<$Res> get eMember {
    if (_value.eMember == null) {
      return null;
    }
    return $EMemberCopyWith<$Res>(_value.eMember, (value) {
      return _then(_value.copyWith(eMember: value));
    });
  }
}

abstract class _$EditOrgStateCopyWith<$Res>
    implements $EditOrgStateCopyWith<$Res> {
  factory _$EditOrgStateCopyWith(
          _EditOrgState value, $Res Function(_EditOrgState) then) =
      __$EditOrgStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<EMember> eboard,
      KtList<User> users,
      KtList<FAQ> faqs,
      KtList<UserList> search,
      Organization org,
      FAQ faq,
      EMember eMember,
      bool isSaving,
      Option<Either<OrgFailure, Unit>> saveFailureOrSuccessOption,
      bool showErrorMessages});

  @override
  $OrganizationCopyWith<$Res> get org;
  @override
  $FAQCopyWith<$Res> get faq;
  @override
  $EMemberCopyWith<$Res> get eMember;
}

class __$EditOrgStateCopyWithImpl<$Res> extends _$EditOrgStateCopyWithImpl<$Res>
    implements _$EditOrgStateCopyWith<$Res> {
  __$EditOrgStateCopyWithImpl(
      _EditOrgState _value, $Res Function(_EditOrgState) _then)
      : super(_value, (v) => _then(v as _EditOrgState));

  @override
  _EditOrgState get _value => super._value as _EditOrgState;

  @override
  $Res call({
    Object eboard = freezed,
    Object users = freezed,
    Object faqs = freezed,
    Object search = freezed,
    Object org = freezed,
    Object faq = freezed,
    Object eMember = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object showErrorMessages = freezed,
  }) {
    return _then(_EditOrgState(
      eboard: eboard == freezed ? _value.eboard : eboard as KtList<EMember>,
      users: users == freezed ? _value.users : users as KtList<User>,
      faqs: faqs == freezed ? _value.faqs : faqs as KtList<FAQ>,
      search: search == freezed ? _value.search : search as KtList<UserList>,
      org: org == freezed ? _value.org : org as Organization,
      faq: faq == freezed ? _value.faq : faq as FAQ,
      eMember: eMember == freezed ? _value.eMember : eMember as EMember,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<OrgFailure, Unit>>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
    ));
  }
}

class _$_EditOrgState implements _EditOrgState {
  const _$_EditOrgState(
      {@required this.eboard,
      @required this.users,
      @required this.faqs,
      @required this.search,
      @required this.org,
      @required this.faq,
      @required this.eMember,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption,
      @required this.showErrorMessages})
      : assert(eboard != null),
        assert(users != null),
        assert(faqs != null),
        assert(search != null),
        assert(org != null),
        assert(faq != null),
        assert(eMember != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null),
        assert(showErrorMessages != null);

  @override
  final KtList<EMember> eboard;
  @override
  final KtList<User> users;
  @override
  final KtList<FAQ> faqs;
  @override
  final KtList<UserList> search;
  @override
  final Organization org;
  @override
  final FAQ faq;
  @override
  final EMember eMember;
  @override
  final bool isSaving;
  @override
  final Option<Either<OrgFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'EditOrgState(eboard: $eboard, users: $users, faqs: $faqs, search: $search, org: $org, faq: $faq, eMember: $eMember, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditOrgState &&
            (identical(other.eboard, eboard) ||
                const DeepCollectionEquality().equals(other.eboard, eboard)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.faqs, faqs) ||
                const DeepCollectionEquality().equals(other.faqs, faqs)) &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.org, org) ||
                const DeepCollectionEquality().equals(other.org, org)) &&
            (identical(other.faq, faq) ||
                const DeepCollectionEquality().equals(other.faq, faq)) &&
            (identical(other.eMember, eMember) ||
                const DeepCollectionEquality()
                    .equals(other.eMember, eMember)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(eboard) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(faqs) ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(org) ^
      const DeepCollectionEquality().hash(faq) ^
      const DeepCollectionEquality().hash(eMember) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(showErrorMessages);

  @override
  _$EditOrgStateCopyWith<_EditOrgState> get copyWith =>
      __$EditOrgStateCopyWithImpl<_EditOrgState>(this, _$identity);
}

abstract class _EditOrgState implements EditOrgState {
  const factory _EditOrgState(
      {@required KtList<EMember> eboard,
      @required KtList<User> users,
      @required KtList<FAQ> faqs,
      @required KtList<UserList> search,
      @required Organization org,
      @required FAQ faq,
      @required EMember eMember,
      @required bool isSaving,
      @required Option<Either<OrgFailure, Unit>> saveFailureOrSuccessOption,
      @required bool showErrorMessages}) = _$_EditOrgState;

  @override
  KtList<EMember> get eboard;
  @override
  KtList<User> get users;
  @override
  KtList<FAQ> get faqs;
  @override
  KtList<UserList> get search;
  @override
  Organization get org;
  @override
  FAQ get faq;
  @override
  EMember get eMember;
  @override
  bool get isSaving;
  @override
  Option<Either<OrgFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  bool get showErrorMessages;
  @override
  _$EditOrgStateCopyWith<_EditOrgState> get copyWith;
}
