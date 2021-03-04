import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/posts/application/comment_actor/comment_actor_bloc.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/comment.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';

class CommentTile extends StatelessWidget {
  final Comment comment;
  final Post post;
  const CommentTile({
    Key key,
    @required this.comment,
    @required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return BlocBuilder<CommentActorBloc, CommentActorState>(
        builder: (context, state) {
      return Slidable(
        actionPane: const SlidableDrawerActionPane(),
        actionExtentRatio: comment.senderID.getOrCrash() == currentUserID ||
                post.senderID.getOrCrash() == currentUserID
            ? 0.25
            : 0,
        actions: <Widget>[
          if (comment.senderID.getOrCrash() == currentUserID ||
              post.senderID.getOrCrash() == currentUserID)
            IconSlideAction(
              caption: 'Delete',
              color: Colors.red,
              icon: Icons.delete,
              onTap: () => context
                  .bloc<CommentActorBloc>()
                  .add(CommentActorEvent.deleteComment(post, comment)),
            )
          else
            null,
        ],
        child: ListTile(
          leading: GestureDetector(
            onTap: () => TabNavigatorProvider.of(context) != null
                ? TabNavigatorProvider.of(context).pushUserProfile(context,
                    userID: comment.senderID.getOrCrash())
                : getIt<NavigationService>().navigateTo(Routes.user,
                    arguments: UserScreenArguments(
                        userID: comment.senderID.getOrCrash())),
            child: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.grey,
              backgroundImage: state.senderUser.profileImageUrl.isEmpty
                  ? Image.asset('assets/images/user_placeholder.png').image
                  : CachedNetworkImageProvider(
                      state.senderUser.profileImageUrl),
            ),
          ),
          title: state.senderUser.profileName.isNotEmpty
              ? Text(state.senderUser.profileName)
              : const Text('Anonymous User'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(comment.commentBody.getOrCrash()),
              const SizedBox(height: 6.0),
              Text(
                timeago.format(comment.commentDate.getOrCrash().toDate()),
              ),
            ],
          ),
        ),
      );
    });
  }
}
