import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/posts/application/post_actor/post_actor_bloc.dart';
import 'package:vybrnt_mvp/features/posts/presentation/posts/post_detail/post_detail_screen.dart';

class PostScreen extends StatelessWidget {
  final String postID;
  final String type;
  final String typeID;

  const PostScreen({Key key, this.postID, this.type, this.typeID})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return BlocProvider<PostActorBloc>(
        create: (context) => getIt<PostActorBloc>()
          ..add(PostActorEvent.getPost(
              postID: postID,
              typeID: typeID,
              type: type,
              currentUserID: currentUserID)),
        child: BlocBuilder<PostActorBloc, PostActorState>(
            builder: (context, state) {
          return PostDetailScreen(post: state.post);
        }));
  }
}
