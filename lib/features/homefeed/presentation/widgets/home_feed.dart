import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animations/animations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/ui/creation_aware_list_item.dart';

import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/application/event_detail_bloc/event_detail_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/screens/event_detail_screen.dart';
import 'package:vybrnt_mvp/features/homefeed/application/home_events/home_events_bloc.dart';
import 'package:vybrnt_mvp/features/homefeed/application/home_posts/home_posts_bloc.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/models/home_categories.dart';
import 'package:vybrnt_mvp/features/homefeed/presentation/widgets/event_card.dart';
import 'package:vybrnt_mvp/features/homefeed/presentation/widgets/sliver_home_event.dart';
import 'package:vybrnt_mvp/features/posts/application/post_actor/post_actor_bloc.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/presentation/posts/post_detail/post_detail_screen.dart';
import 'package:vybrnt_mvp/features/user/presentation/widgets/post_card.dart';

class HomeFeed extends StatefulWidget {
  final String name;
  final String userID;

  const HomeFeed({Key key, this.name, this.userID}) : super(key: key);
  @override
  _HomeFeedState createState() => _HomeFeedState();
}

class _HomeFeedState extends State<HomeFeed> {
  final ContainerTransitionType _transitionType = ContainerTransitionType.fade;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Provider.of<TabColor>(context).color = Colors.black;
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    //FlutterStatusbarcolor.setStatusBarColor(Colors.black87);
    return SafeArea(
        bottom: false,
        child: BlocBuilder<HomePostsBloc, HomePostsState>(
            builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => RefreshIndicator(
                    onRefresh: () async => context
                        .bloc<HomePostsBloc>()
                        .add(HomePostsEvent.getData(currentUserID)),
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey[300],
                      highlightColor: Colors.grey[100],
                      //enabled: _enabled,
                      child: ListView.builder(
                        itemBuilder: (_, __) => Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 48.0,
                                height: 48.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: double.infinity,
                                      height: 8.0,
                                      color: Colors.white,
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.0),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 8.0,
                                      color: Colors.white,
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.0),
                                    ),
                                    Container(
                                      width: 40.0,
                                      height: 8.0,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        itemCount: 12,
                      ),
                    ),
                  ),
              loadFailure: (state) {
                return const Icon(
                    Icons.error_outline); // return CriticalFailureDisplay(
                //   failure: state.eventFailure,
                // );
              },
              loadSuccess: (state) {
                return RefreshIndicator(
                  onRefresh: () async => context
                      .bloc<HomePostsBloc>()
                      .add(HomePostsEvent.getData(currentUserID)),
                  child: CustomScrollView(
                    key: PageStorageKey<String>(widget.name),
                    slivers: <Widget>[
                      const SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 2),
                          child: Text(
                            'Campus Events',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      SliverPersistentHeader(delegate: SliverHomeEventDelegate(
                        eventList: BlocBuilder<HomeEventsBloc, HomeEventsState>(
                            builder: (context, state) {
                          return state.map(
                            initial: (_) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const SizedBox(width: 20.0, height: 100.0),
                                  Text(
                                    "Find Your",
                                    style: GoogleFonts.righteous(
                                        textStyle: const TextStyle(
                                      fontSize: 25.0,
                                    )),
                                  ),
                                  const SizedBox(width: 10.0, height: 100.0),
                                  RotateAnimatedTextKit(
                                      //duration: Duration(minutes: 1),
                                      text: const [
                                        "Home",
                                        "Vybe",
                                        "Opportunities"
                                      ],
                                      textStyle: GoogleFonts.righteous(
                                          textStyle: const TextStyle(
                                        fontSize: 25.0,
                                      ))),
                                ],
                              )),
                            ),
                            loadInProgress: (_) =>
                                const CircularProgressIndicator(),
                            loadFailure: (state) {
                              return const Icon(Icons
                                  .error_outline); // return CriticalFailureDisplay(
                              //   failure: state.eventFailure,
                              // );
                            },
                            loadSuccess: (state) {
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
                                              event: state.events[index]),
                                        );
                                      }),
                                ),
                              );
                            },
                          );
                        }),
                      )),
                      const SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 2, 0, 2),
                          child: Text(
                            'Latest Posts',
                            style: TextStyle(fontSize: 18),
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
                              index: 0,
                              transitionType: _transitionType,
                              closedBuilder:
                                  (BuildContext _, VoidCallback openContainer) {
                                return _InkWellOverlay(
                                  openContainer: openContainer,
                                  width: 250,
                                  child: BlocProvider<PostActorBloc>(
                                    create: (context) => getIt<PostActorBloc>()
                                      ..add(PostActorEvent.getData(
                                          state.posts[index],
                                          currentUserID: currentUserID,
                                          senderID: state.posts[index].senderID
                                              .getOrCrash())),
                                    // child: CreationAwareListItem(
                                    //   itemCreated: () {
                                    //     if (index % 20 == 0) {
                                    //       context.bloc<HomePostsBloc>().add(
                                    //           HomePostsEvent.requestMoreData(
                                    //               currentUserID));
                                    //     }
                                    //   },
                                    child: PostCard(
                                      //user: _profileUser,
                                      post: state.posts[index],
                                    ),
                                    // )
                                  ),
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
    Key key,
    this.closedBuilder,
    this.transitionType,
    this.onClosed,
    this.event,
  }) : super(key: key);

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
