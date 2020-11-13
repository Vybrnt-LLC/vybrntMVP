part of 'edit_org_bloc.dart';

@freezed
abstract class EditOrgState with _$EditOrgState {
  const factory EditOrgState({
    @required KtList<EMember> eboard,
    @required KtList<User> users,
    @required KtList<FAQ> faqs,
    @required KtList<UserList> search,
    @required Organization org,
    @required FAQ faq,
    @required EMember eMember,
    @required bool isSaving,
    @required Option<Either<OrgFailure, Unit>> saveFailureOrSuccessOption,
    @required bool showErrorMessages,
  }) = _EditOrgState;

  factory EditOrgState.initial() => EditOrgState(
        eboard: KtList.empty(),
        users: KtList.empty(),
        faqs: KtList.empty(),
        search: KtList.empty(),
        org: Organization.empty(),
        faq: FAQ.empty(),
        eMember: EMember.empty(),
        isSaving: false,
        saveFailureOrSuccessOption: none(),
        showErrorMessages: false,
      );
}
