import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animations/animations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/shared/category.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/application/event_detail_bloc/event_detail_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/screens/event_detail_screen.dart';
import 'package:vybrnt_mvp/features/homefeed/application/category_events/category_events_bloc.dart';
import 'package:vybrnt_mvp/features/homefeed/application/category_posts/category_posts_bloc.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/models/home_categories.dart';
import 'package:vybrnt_mvp/features/homefeed/presentation/widgets/event_card.dart';
import 'package:vybrnt_mvp/features/homefeed/presentation/widgets/sliver_home_event.dart';
import 'package:vybrnt_mvp/features/posts/application/post_actor/post_actor_bloc.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/presentation/posts/post_detail/post_detail_screen.dart';

import 'package:vybrnt_mvp/features/user/presentation/widgets/post_card.dart';

class CategoryFeed extends StatefulWidget {
  final String name;
  final String userID;
  final Category category;
  final int index;

  const CategoryFeed(
      {Key key, this.name, this.userID, this.category, this.index})
      : super(key: key);
  @override
  _CategoryFeedState createState() => _CategoryFeedState();
}

class _CategoryFeedState extends State<CategoryFeed> {
  final ContainerTransitionType _transitionType = ContainerTransitionType.fade;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;

    //Provider.of<TabColor>(context).color = widget.category.color;
    // FlutterStatusbarcolor.setStatusBarColor(
    //     HomeCategories.predefinedColors[widget.index].color);
    return SafeArea(
        bottom: false,
        child: BlocBuilder<CategoryPostsBloc, CategoryPostsState>(
            builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
              loadFailure: (state) {
                return const Icon(
                    Icons.error_outline); // return CriticalFailureDisplay(
                //   failure: state.eventFailure,
                // );
              },
              loadSuccess: (state) {
                return RefreshIndicator(
                  onRefresh: () async => context.bloc<CategoryPostsBloc>().add(
                      CategoryPostsEvent.getData(
                          currentUserID,
                          HomeCategories
                              .predefinedColors[widget.index].documentName)),
                  child: CustomScrollView(
                    controller: _scrollController,
                    key: PageStorageKey<String>(widget.name),
                    slivers: <Widget>[
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 2),
                          child: Text(
                            'Campus Events',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ),
                      SliverPersistentHeader(delegate: SliverHomeEventDelegate(
                        eventList: BlocBuilder<CategoryEventsBloc,
                            CategoryEventsState>(builder: (context, state) {
                          return state.map(
                            initial: (_) => Container(),
                            loadInProgress: (_) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            loadFailure: (state) {
                              return const Icon(Icons
                                  .error_outline); // return CriticalFailureDisplay(
                              //   failure: state.eventFailure,
                              // );
                            },
                            loadSuccess: (state) {
                              if (state.events.isEmpty()) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                      child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const SizedBox(
                                          width: 20.0, height: 100.0),
                                      Text("Find Your",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1),
                                      const SizedBox(
                                          width: 10.0, height: 100.0),
                                      RotateAnimatedTextKit(
                                          repeatForever: true,
                                          //duration: Duration(minutes: 1),
                                          text: const [
                                            "Home",
                                            "Vybe",
                                            "Opportunities"
                                          ],
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .subtitle1),
                                    ],
                                  )),
                                );
                              } else {
                                return ListView.builder(
                                  padding: const EdgeInsets.all(5.0),
                                  physics: const ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: state.events.size,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          Padding(
                                    key: ObjectKey(state.events[index]),
                                    padding: const EdgeInsets.all(8),
                                    child: _OpenContainerWrapper(
                                        event: state.events[index],
                                        transitionType: _transitionType,
                                        closedBuilder: (BuildContext _,
                                            VoidCallback openContainer) {
                                          return _InkWellOverlay(
                                            openContainer: openContainer,
                                            width: 250,
                                            child: EventCard(
                                                key: ObjectKey(
                                                    state.events[index]),
                                                event: state.events[index]),
                                          );
                                        }),
                                  ),
                                );
                              }
                            },
                          );
                        }),
                      )),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 2, 0, 2),
                          child: Text(
                            'Latests Posts',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            // This builder is called for each child.
                            // In this example, we just number each list item.
                            return _OpenContainerPostWrapper(
                              key: ObjectKey(state.posts[index]),
                              post: state.posts[index],
                              index: widget.index,
                              transitionType: _transitionType,
                              closedBuilder:
                                  (BuildContext _, VoidCallback openContainer) {
                                return _InkWellOverlay(
                                  openContainer: openContainer,
                                  width: 250,
                                  child: BlocProvider<PostActorBloc>(
                                      create: (context) =>
                                          getIt<PostActorBloc>()
                                            ..add(PostActorEvent.getData(
                                                state.posts[index],
                                                currentUserID: currentUserID,
                                                senderID: state
                                                    .posts[index].senderID
                                                    .getOrCrash())),
                                      child: PostCard(
                                          key: ObjectKey(state.posts[index]),
                                          //user: _profileUser,
                                          post: state.posts[index],
                                          color: HomeCategories
                                              .predefinedColors[widget.index]
                                              .color)),
                                );
                              },
                            );
                          },
                          childCount: state.posts.size,
                        ),
                      )
                    ],
                  ),
                );
              });
        }));
  }
}

class _OpenContainerWrapper extends StatelessWidget {
  const _OpenContainerWrapper({
    this.closedBuilder,
    this.transitionType,
    this.onClosed,
    this.event,
  });

  final CloseContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;
  final ClosedCallback<bool> onClosed;
  final Event event;

  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return OpenContainer<bool>(
      closedElevation: 0,
      transitionType: transitionType,
      openBuilder: (BuildContext context, VoidCallback _) {
        return BlocProvider<EventDetailBloc>(
            create: (context) => getIt<EventDetailBloc>()
              ..add(EventDetailEvent.getData(
                  senderID: event.senderID,
                  currentUserID: currentUserID,
                  orgID: event.orgID,
                  eventID: event.eventID.getOrCrash(),
                  isOrg: event.isOrg)),
            child: EventDetailScreen(event: event));
      },
      onClosed: onClosed,
      tappable: false,
      closedBuilder: closedBuilder,
    );
  }
}

class _OpenContainerPostWrapper extends StatelessWidget {
  const _OpenContainerPostWrapper({
    Key key,
    this.closedBuilder,
    this.transitionType,
    this.onClosed,
    this.post,
    this.index,
  }) : super(key: key);

  final CloseContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;
  final ClosedCallback<bool> onClosed;
  final Post post;
  final int index;

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
                color: HomeCategories.predefinedColors[index].color,
                backgroundImage:
                    HomeCategories.predefinedColors[index].patternImageUrl));
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
