part of 'edit_org_bloc.dart';

@freezed
abstract class EditOrgEvent with _$EditOrgEvent {
  const factory EditOrgEvent.getData(Organization org) = GetEditOrgData;
  const factory EditOrgEvent.getSearch(String name) = GetSearch;
  const factory EditOrgEvent.addEMember(String orgID, EMember eMember) =
      AddEMember;
  const factory EditOrgEvent.removeFAQ(String faqID, String orgID) = RemoveFAQ;
  const factory EditOrgEvent.saveFAQ(String orgID) = SaveFAQ;
  const factory EditOrgEvent.questionChanged(String question) = QuestionChanged;
  const factory EditOrgEvent.answerChanged(String answer) = AnswerChanged;
  const factory EditOrgEvent.removeEMember(String userID, String orgID) =
      RemoveEMember;
  const factory EditOrgEvent.eboardReceived(KtList<EMember> eboard) =
      EBoardReceived;
  const factory EditOrgEvent.faqsReceived(KtList<FAQ> faqList) = FAQsReceived;
  const factory EditOrgEvent.searchReceived(KtList<UserList> searchList) =
      SearchReceived;
  const factory EditOrgEvent.saveOrg() = SaveOrg;
  const factory EditOrgEvent.createOrg(String currentUserID) = CreateOrg;
  const factory EditOrgEvent.orgProfileImageChanged(String url, File image) =
      OrgProfileImageChanged;
  const factory EditOrgEvent.orgBannerImageChanged(String url, File image) =
      OrgBannerImageChanged;
  const factory EditOrgEvent.nameChanged(String name) = NameChanged;
  const factory EditOrgEvent.abbvChanged(String abbv) = AbbvChanged;
  const factory EditOrgEvent.primaryColorChanged(String primaryColor) =
      PrimaryColorChanged;
  const factory EditOrgEvent.secondaryColorChanged(String secondaryColor) =
      SecondaryColorChanged;
  const factory EditOrgEvent.missionStatementChanged(String missionStatement) =
      MissionStatementChanged;
  const factory EditOrgEvent.emailChanged(String email) = EmailChanged;
  const factory EditOrgEvent.officeLocationChanged(String officeLocation) =
      OfficeLocationChanged;
  const factory EditOrgEvent.eMemberSelected(UniqueId userID) = EMemberSelected;
  const factory EditOrgEvent.positionChanged(String position) = PositionChanged;
  const factory EditOrgEvent.instagramURLChanged(String instagramURL) =
      InstagramURLChanged;
  const factory EditOrgEvent.facebookURLChanged(String facebookURL) =
      FacebookURLChanged;
  const factory EditOrgEvent.websiteURLChanged(String websiteURL) =
      WebsiteURLChanged;
  const factory EditOrgEvent.twitterURLChanged(String twitterURL) =
      TwitterURLChanged;
  const factory EditOrgEvent.adminTitleChanged(String adminTitle) =
      AdminTitleChanged;
  const factory EditOrgEvent.linkedInURLChanged(String linkedInURL) =
      LinkedInURLChanged;
}
