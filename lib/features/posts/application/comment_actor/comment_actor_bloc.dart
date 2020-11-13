import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/comment.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/i_post_repository.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';

import 'package:vybrnt_mvp/features/user/domain/models/user.dart';

part 'comment_actor_event.dart';
part 'comment_actor_state.dart';

part 'comment_actor_bloc.freezed.dart';

@injectable
class CommentActorBloc extends Bloc<CommentActorEvent, CommentActorState> {
  final IPostRepository _postRepository;
  CommentActorBloc(this._postRepository) : super(CommentActorState.inital());

  @override
  Stream<CommentActorState> mapEventToState(
    CommentActorEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        final senderUser = await _postRepository
            .getUserProfile(e.comment.senderID.getOrCrash());

        yield state.copyWith(senderUser: senderUser);
      },
      deleteComment: (e) async* {
        await _postRepository.deleteComment(e.post, e.comment);
        yield state;
      },
    );
  }
}
