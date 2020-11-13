import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/organization/domain/i_org_service.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/emember.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/faq.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/org_failure.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_list_model.dart';

part 'edit_org_bloc.freezed.dart';
part 'edit_org_event.dart';
part 'edit_org_state.dart';

@injectable
class EditOrgBloc extends Bloc<EditOrgEvent, EditOrgState> {
  final IOrgService _orgService;

  EditOrgBloc(this._orgService) : super(EditOrgState.initial());

  StreamSubscription<KtList<FAQ>> _faqStreamSubscription;
  StreamSubscription<KtList<EMember>> _eboardStreamSubscription;
  StreamSubscription<KtList<UserList>> _searchStreamSubscription;

  @override
  Stream<EditOrgState> mapEventToState(
    EditOrgEvent event,
  ) async* {
    yield* event.map(getData: (e) async* {
      await _faqStreamSubscription?.cancel();
      _faqStreamSubscription = _orgService
          .watchFAQ(e.org.orgID.getOrCrash())
          .listen((faqs) => add(EditOrgEvent.faqsReceived(faqs)));

      await _eboardStreamSubscription?.cancel();
      _eboardStreamSubscription = _orgService
          .watchEBoard(e.org.orgID.getOrCrash())
          .listen((eboard) => add(EditOrgEvent.eboardReceived(eboard)));
      yield state.copyWith(
        org: e.org,
      );
    }, getSearch: (e) async* {
      await _searchStreamSubscription?.cancel();
      _searchStreamSubscription = _orgService
          .searchUser(e.name)
          .listen((search) => add(EditOrgEvent.searchReceived(search)));
    }, searchReceived: (e) async* {
      yield state.copyWith(
        search: e.searchList,
      );
    }, eboardReceived: (e) async* {
      final users =
          await _orgService.getUserWithColorsKtListFromEMember(e.eboard);
      yield state.copyWith(
        users: users,
        eboard: e.eboard,
      );
    }, faqsReceived: (e) async* {
      yield state.copyWith(
        faqs: e.faqList,
      );
    }, createOrg: (e) async* {
      Either<OrgFailure, Unit> failureOrSuccess;

      if (state.org.name.isNotEmpty &&
          state.org.abbv.isNotEmpty &&
          state.eMember.position.isNotEmpty) {
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );
        if (state.org.failureOption.isNone()) {
          failureOrSuccess = await _orgService.createOrganization(state.org);
          add(EditOrgEvent.eMemberSelected(
              UniqueId.fromUniqueString(e.currentUserID)));
          add(EditOrgEvent.addEMember(state.org.orgID.getOrCrash()));
          //yield initialState;
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          org: Organization.empty(),
          eMember: EMember.empty(),
        );
      } else {
        failureOrSuccess = left(OrgFailure.unableToUpdate());
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      }
    }, saveOrg: (e) async* {
      Either<OrgFailure, Unit> failureOrSuccess;
      if (state.eboard.isNotEmpty()) {
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );
        if (state.org.failureOption.isNone()) {
          failureOrSuccess = await _orgService.updateOrganization(state.org);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      } else {
        failureOrSuccess = left(OrgFailure.emptyEMember());
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      }
    }, addEMember: (e) async* {
      await _orgService.addEMember(state.eMember, e.orgID);
    }, removeEMember: (e) async* {
      if (state.eboard.size > 1) {
        await _orgService.removeEMember(e.userID, e.orgID);
      }
    }, eMemberSelected: (e) async* {
      yield state.copyWith(eMember: state.eMember.copyWith(userID: e.userID));
    }, positionChanged: (e) async* {
      yield state.copyWith(
          saveFailureOrSuccessOption: none(),
          eMember: state.eMember.copyWith(position: e.position));
    }, questionChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        faq: state.faq.copyWith(question: e.question),
      );
    }, answerChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        faq: state.faq.copyWith(answer: e.answer),
      );
    }, saveFAQ: (e) async* {
      await _orgService.addFAQ(state.faq, e.orgID);
    }, removeFAQ: (e) async* {
      await _orgService.removeFAQ(e.faqID, e.orgID);
    }, orgProfileImageChanged: (e) async* {
      String profileImageUrl =
          await _orgService.uploadOrgProfileImage(e.url, e.image);
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(profileImageUrl: profileImageUrl),
      );
    }, orgBannerImageChanged: (e) async* {
      String bannerImageUrl =
          await _orgService.uploadOrgBannerImage(e.url, e.image);
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(bannerImageUrl: bannerImageUrl),
      );
    }, nameChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(name: e.name),
      );
    }, abbvChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(abbv: e.abbv),
      );
    }, missionStatementChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(missionStatement: e.missionStatement),
      );
    }, emailChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(email: e.email),
      );
    }, officeLocationChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(officeLocation: e.officeLocation),
      );
    }, primaryColorChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(primaryColor: e.primaryColor),
      );
    }, secondaryColorChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(secondaryColor: e.secondaryColor),
      );
    }, instagramURLChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(instagramURL: e.instagramURL),
      );
    }, facebookURLChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(facebookURL: e.facebookURL),
      );
    }, websiteURLChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(websiteURL: e.websiteURL),
      );
    }, twitterURLChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(twitterURL: e.twitterURL),
      );
    }, adminTitleChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(adminTitle: e.adminTitle),
      );
    }, linkedInURLChanged: (e) async* {
      yield state.copyWith(
        saveFailureOrSuccessOption: none(),
        org: state.org.copyWith(linkedInURL: e.linkedInURL),
      );
    });
  }
}
