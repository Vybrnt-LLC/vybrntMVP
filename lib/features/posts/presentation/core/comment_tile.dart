import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart';
import 'package:vybrnt_mvp/features/posts/application/comment_actor/comment_actor_bloc.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/comment.dart';

class CommentTile extends StatelessWidget {
  final Comment comment;
  const CommentTile({
    Key key,
    this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentActorBloc, CommentActorState>(
        builder: (context, state) {
      return ListTile(
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
                ? AssetImage('assets/images/user_placeholder.png')
                : CachedNetworkImageProvider(state.senderUser.profileImageUrl),
          ),
        ),
        title: state.senderUser.profileName.isNotEmpty
            ? Text(state.senderUser.profileName)
            : Text('Anonymous User'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(comment.commentBody.getOrCrash()),
            SizedBox(height: 6.0),
            Text(
              timeago.format(comment.commentDate.getOrCrash().toDate()),
            ),
          ],
        ),
      );
    });
  }
}
