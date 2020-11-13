import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';

import 'package:vybrnt_mvp/features/posts/application/post_actor/post_actor_bloc.dart';
import 'package:vybrnt_mvp/features/posts/application/post_watcher/post_watcher_bloc.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';

import 'package:vybrnt_mvp/features/posts/presentation/posts/org_posts_overview/post_card_widget.dart';

@immutable
class OrgFeed extends StatefulWidget {
  const OrgFeed({
    Key key,
    this.org,
    this.orgID,
    this.tabs,
  }) : super(key: key);
  final String orgID;
  final Organization org;
  final List<String> tabs;

  @override
  _OrgFeedState createState() => _OrgFeedState();
}

class _OrgFeedState extends State<OrgFeed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          child:
              Flexible(child: _buildOrgFeedWithBuilders(widget.org, context))),
    );
  }
}

Widget _buildOrgFeedWithBuilders(Organization org, BuildContext context) {
  final currentUserID = Provider.of<UserData>(context).currentUserID;

  return BlocBuilder<PostWatcherBloc, PostWatcherState>(
      builder: (context, state) {
    return state.map(
      initial: (_) => Container(),
      loadInProgress: (_) => const Center(child: CircularProgressIndicator()),
      loadSuccess: (state) {
        final posts = state.posts.asList();

        return Container(
          child: ListView.builder(
            key: UniqueKey(),
            itemCount: posts.length,
            itemBuilder: (BuildContext context, int index) {
              Post post = posts[index];
              return BlocProvider<PostActorBloc>(
                  create: (context) => getIt<PostActorBloc>()
                    ..add(PostActorEvent.getData(post,
                        currentUserID: currentUserID,
                        orgID: org.orgID.getOrCrash())),
                  child: PostCard(post: post));
            },
          ),
        );
      },
      loadFailure: (state) {
        return CircularProgressIndicator();
      },
    );
    // } else {
    //   return Container();
    // }
  });
}
