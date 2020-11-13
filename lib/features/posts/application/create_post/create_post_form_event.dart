part of 'create_post_form_bloc.dart';

@freezed
abstract class CreatePostFormEvent with _$CreatePostFormEvent {
//STREAM
//reads in where the user is the admin forever
  const factory CreatePostFormEvent.initialized(String currentUserID) =
      _Initialized;

  const factory CreatePostFormEvent.adminReceived(
      KtList<String> admins, String currentUserID) = _AdminReceived;
//EDITING POST
  //different (field) + Changed events
  const factory CreatePostFormEvent.idChanged(String orgID) = _IDChanged;
  const factory CreatePostFormEvent.postBodyChanged(String postBody) =
      _PostBodyChanged;
  const factory CreatePostFormEvent.headerChanged(String postHeader) =
      _HeaderChanged;
  const factory CreatePostFormEvent.imageURLChanged(File postImage) =
      ImageURLChanged;
  const factory CreatePostFormEvent.postURLChanged(String postURL) =
      _PostURLChanged;
  const factory CreatePostFormEvent.categoryChanged(String category) =
      _CategoryChanged;
  const factory CreatePostFormEvent.toggleImage(bool isImageToggled) =
      _IsImageToggled;
  const factory CreatePostFormEvent.toggleRepostable(bool repostable) =
      _ToggleRepostable;
  const factory CreatePostFormEvent.toggleCommentable(bool commentable) =
      _ToggleCommentable;
//SUBMITTING POST
  /*different post types:
  1. HICPost - Header, PostBody, Image
  2. HCPost - Header, PostBody
  */
  const factory CreatePostFormEvent.saved() = _Saved;

  //const factory CreatePostFormEvent.submitHICPost(String postHeader, String postImageURL, String postBody) = SubmitHICPost;
  //const factory CreatePostFormEvent.submitHCPost(String postHeader,  String postBody) = SubmitHCPost;
}
