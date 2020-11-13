import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';
import 'package:vybrnt_mvp/features/organization/domain/i_org_service.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/i_post_repository.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post_failure.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/value_objects.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';

part 'create_post_form_event.dart';
part 'create_post_form_state.dart';

part 'create_post_form_bloc.freezed.dart';

@injectable
class CreatePostFormBloc
    extends Bloc<CreatePostFormEvent, CreatePostFormState> {
  final IPostRepository _postRepository;
  final IOrgService _orgService;

  CreatePostFormBloc(this._postRepository, this._orgService)
      : super(CreatePostFormState.initial());

  StreamSubscription<KtList<String>> _adminStreamSubscription;

  @override
  Stream<CreatePostFormState> mapEventToState(
    CreatePostFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        await _adminStreamSubscription?.cancel();

        yield state.copyWith(
          post: state.post.copyWith(senderID: SenderID(e.currentUserID)),
        );
        _adminStreamSubscription = _postRepository
            .getAdminIDs(e.currentUserID)
            .listen((admins) => add(
                CreatePostFormEvent.adminReceived(admins, e.currentUserID)));
      },
      //EDITING THE POST
      headerChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(postHeader: PostHeader(e.postHeader)),
        );
      },
      postBodyChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(postBody: PostBody(e.postBody)),
        );
      },
      toggleImage: (e) async* {
        yield state.copyWith(isImageToggled: !(e.isImageToggled));
      },
      imageURLChanged: (e) async* {
        String postImageURL =
            await _postRepository.uploadPostImage(e.postImage);
        yield state.copyWith(
          post: state.post.copyWith(postImageURL: PostImageURL(postImageURL)),
          saveFailureOrSuccessOption: none(),
        );
      },
      adminReceived: (_AdminReceived value) async* {
        KtList<OrgList> orgs = await _orgService.getOrgKtList(value.admins);
        User currentUser =
            await _postRepository.getUserProfile(value.currentUserID);
        OrgList currentUserList = OrgList(
            primaryColor: currentUser.primaryColor,
            secondaryColor: currentUser.primaryColor,
            abbv: '',
            orgID: currentUser.userID,
            profileImageUrl: currentUser.profileImageUrl,
            name: currentUser.profileName);
        final mOrgs = orgs.toMutableList();
        mOrgs.toMutableList();
        mOrgs.addAt(0, currentUserList);
        yield state.copyWith(
          admins: mOrgs,
        );
      },
      categoryChanged: (_CategoryChanged value) async* {
        final List<String> newList =
            List.from(state.categories, growable: true);
        if (newList.contains(value.category)) {
          newList.remove(value.category);
        } else {
          if (newList.length < 3) {
            newList.add(value.category);
          }
        }
        yield state.copyWith(
          categories: newList,
          saveFailureOrSuccessOption: none(),
        );
      },
      postURLChanged: (_PostURLChanged value) async* {
        yield state.copyWith(
          post: state.post.copyWith(postURL: PostURL(value.postURL)),
          saveFailureOrSuccessOption: none(),
        );
      },
      idChanged: (_IDChanged value) async* {
        yield state.copyWith(
          post: state.post.copyWith(
            orgID: (value.orgID == state.post.senderID.getOrCrash())
                ? OrgID("")
                : OrgID(value.orgID),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      toggleCommentable: (_ToggleCommentable value) async* {
        yield state.copyWith(
          post:
              state.post.copyWith(commentable: Commentable(value.commentable)),
          saveFailureOrSuccessOption: none(),
        );
      },
      toggleRepostable: (_ToggleRepostable value) async* {
        yield state.copyWith(
          post: state.post.copyWith(repostable: Repostable(value.repostable)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (_Saved value) async* {
        Either<PostFailure, Unit> failureOrSuccess;
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );
        print(state.post.toString());

        print(state.post.postHeader.getOrCrash().isEmpty);
        print(state.post.postBody.getOrCrash().isEmpty);
        print(state.post.postImageURL.getOrCrash().isEmpty);
        print("");
        if ((state.post.postHeader.getOrCrash().isEmpty) ||
            (state.post.postBody.getOrCrash().isEmpty) ||
            (state.isImageToggled &&
                state.post.postImageURL.getOrCrash().isEmpty)) {
          failureOrSuccess = left(PostFailure.emptyField());
        } else {
          if (state.post.failureOption.isNone()) {
            failureOrSuccess = await _postRepository.create(
                post: state.post,
                categories: state.categories,
                orgID: state.post.orgID.getOrCrash());
          }
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      //SUBMITTING THE POST
      // submitHICPost: (e) async* {
      //   Either<ValueFailure, Unit> failureOrSuccess;
      //   final isHeaderValid = state.postHeader.isValid();
      //   final isPostBodyValid = state.postBody.isValid();
      //   final isPostImageURLValid = state.postImageURL.isValid();

      //   if(isHeaderValid && isPostBodyValid && isPostImageURLValid){
      //       yield state.copyWith(
      //         isLoading: true,
      //     );
      //     // failureOrSuccess = (await _authFacade.createPost(
      //     //   PostHeader(e.postHeader),
      //     //   PostBody(e.postBody),
      //     //   PostImageURL(e.postImageURL)
      //     // )) as Either<ValueFailure, Unit>;

      //   }
      //   yield state.copyWith(
      //     isLoading: false,
      //     showErrorMessages: true,
      //   );

      // },

      // submitHCPost: (e) async* {
      //   Either<ValueFailure, Unit> failureOrSuccess;
      //   final isHeaderValid = state.postHeader.isValid();
      //   final isPostBodyValid = state.postBody.isValid();

      //   if(isHeaderValid && isPostBodyValid){
      //       yield state.copyWith(
      //         isLoading: true,
      //     );

      //   }
      //   yield state.copyWith(
      //     isLoading: false,
      //     showErrorMessages: true,
      //   );
      //},
    );
  }
}
