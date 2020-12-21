import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/i_post_repository.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post_failure.dart';

part 'post_notification_event.dart';
part 'post_notification_state.dart';
part 'post_notification_bloc.freezed.dart';

@injectable
class PostNotificationBloc
    extends Bloc<PostNotificationEvent, PostNotificationState> {
  final IPostRepository _postRepository;
  PostNotificationBloc(this._postRepository) : super(_Initial());

  @override
  Stream<PostNotificationState> mapEventToState(
    PostNotificationEvent event,
  ) async* {
    yield const PostNotificationState.loadInProgress();
    var post = await _postRepository.getPost(
        postID: event.postID, typeID: event.typeID, type: event.type);
    yield PostNotificationState.loadSuccess(post);
  }
}
