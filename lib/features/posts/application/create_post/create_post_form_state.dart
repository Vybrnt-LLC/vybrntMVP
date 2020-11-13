part of 'create_post_form_bloc.dart';

@freezed
abstract class CreatePostFormState with _$CreatePostFormState {
  const factory CreatePostFormState({
    @required Post post,
    @required KtList<OrgList> admins,
    @required List<String> categories,
    @required bool isImageToggled,
    @required bool showErrorMessages,
    @required bool isLoading,
    @required bool isSaving,
    @required bool isEditing,
    @required Option<Either<PostFailure, Unit>> saveFailureOrSuccessOption,
  }) = _CreatePostFormState;

  factory CreatePostFormState.initial() => CreatePostFormState(
        post: Post.empty(),
        admins: KtList<OrgList>.empty(),
        categories: [],
        isImageToggled: false,
        showErrorMessages: false,
        isLoading: false,
        isSaving: false,
        isEditing: false,
        saveFailureOrSuccessOption: none(),
      );
}
