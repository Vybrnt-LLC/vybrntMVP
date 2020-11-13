import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/models/home_categories.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/posts/application/post_actor/post_actor_bloc.dart';
import 'package:vybrnt_mvp/features/posts/application/post_watcher/post_watcher_bloc.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/presentation/posts/post_detail/post_detail_screen.dart';

import 'package:vybrnt_mvp/features/user/presentation/widgets/post_card.dart';

class OrganizationPageFeedTab extends StatefulWidget {
  final String orgID;
  final Organization org;
  final List<String> tabs;
  final String name;
  final List<Post> posts;
  final AsyncSnapshot snapshot;
  //final User user;
  final ValueChanged<Post> onPushPostDetail;

  const OrganizationPageFeedTab(
      {Key key,
      this.orgID,
      this.tabs,
      this.name,
      this.posts,
      this.snapshot,
      //this.user,
      this.onPushPostDetail,
      this.org})
      : super(key: key);
  @override
  _OrganizationPageFeedTabState createState() =>
      _OrganizationPageFeedTabState();
}

class _OrganizationPageFeedTabState extends State<OrganizationPageFeedTab> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ContainerTransitionType _transitionType = ContainerTransitionType.fade;
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    //User sender = user;
    return BlocBuilder<PostWatcherBloc, PostWatcherState>(
        builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadFailure: (state) {
            return CircularProgressIndicator();
          },
          loadSuccess: (state) {
            return Container(
              child: SafeArea(
                top: false,
                bottom: false,
                child: RefreshIndicator(
                  onRefresh: () async {
                    context.bloc<PostWatcherBloc>().add(
                        PostWatcherEvent.getData(
                            widget.org.orgID.getOrCrash(), true));
                  },
                  child: CustomScrollView(
                    key: PageStorageKey<String>(widget.name),
                    slivers: <Widget>[
                      SliverPadding(
                        padding: const EdgeInsets.all(8.0),
                        // In this example, the inner scroll view has
                        // fixed-height list items, hence the use of
                        // SliverFixedExtentList. However, one could use any
                        // sliver widget here, e.g. SliverList or SliverGrid.
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              // This builder is called for each child.
                              // In this example, we just number each list item.
                              return _OpenContainerPostWrapper(
                                  key: ObjectKey(state.posts[index]),
                                  post: state.posts[index],
                                  color:
                                      stringToColor(widget.org.secondaryColor),
                                  transitionType: _transitionType,
                                  closedBuilder: (BuildContext _,
                                      VoidCallback openContainer) {
                                    return _InkWellOverlay(
                                      openContainer: openContainer,
                                      width: 250,
                                      child: BlocProvider<PostActorBloc>(
                                          create: (context) =>
                                              getIt<PostActorBloc>()
                                                ..add(PostActorEvent.getData(
                                                    state.posts[index],
                                                    currentUserID:
                                                        currentUserID,
                                                    orgID: widget.org.orgID
                                                        .getOrCrash())),
                                          child: Container(
                                              child: PostCard(
                                                  //user: _profileUser,
                                                  post: state.posts[index],
                                                  color: stringToColor(widget
                                                      .org.secondaryColor)))),
                                    );
                                  });
                            },
                            childCount: state.posts.size,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          });
    });
  }
}

class _OpenContainerPostWrapper extends StatelessWidget {
  const _OpenContainerPostWrapper({
    Key key,
    this.closedBuilder,
    this.transitionType,
    this.onClosed,
    this.post,
    this.color,
  }) : super(key: key);

  final OpenContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;
  final ClosedCallback<bool> onClosed;
  final Post post;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return OpenContainer<bool>(
      closedElevation: 0,
      transitionType: transitionType,
      openBuilder: (BuildContext context, VoidCallback _) {
        return BlocProvider<PostActorBloc>(
            create: (context) => getIt<PostActorBloc>()
              ..add(PostActorEvent.getData(
                post,
                senderID: post.senderID.getOrCrash(),
                currentUserID: currentUserID,
                orgID: post.orgID.getOrCrash(),
              )),
            child: PostDetailScreen(
                post: post,
                color: color,
                backgroundImage:
                    HomeCategories.predefinedColors[0].patternImageUrl));
      },
      onClosed: onClosed,
      tappable: false,
      closedBuilder: closedBuilder,
    );
  }
}

class _InkWellOverlay extends StatelessWidget {
  const _InkWellOverlay({
    this.openContainer,
    this.width,
    this.height,
    this.child,
  });

  final VoidCallback openContainer;
  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: InkWell(
        onTap: openContainer,
        child: child,
      ),
    );
  }
}
