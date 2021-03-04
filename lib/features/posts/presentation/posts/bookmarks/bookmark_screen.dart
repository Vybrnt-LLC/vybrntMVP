import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/controllers/simple_hidden_drawer_controller.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/models/home_categories.dart';
import 'package:vybrnt_mvp/features/posts/application/bookmark_watcher/bookmark_watcher_bloc.dart';
import 'package:vybrnt_mvp/features/posts/application/post_actor/post_actor_bloc.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/presentation/posts/post_detail/post_detail_screen.dart';
import 'package:vybrnt_mvp/features/user/presentation/widgets/post_card.dart';

class BookmarkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    const ContainerTransitionType _transitionType =
        ContainerTransitionType.fade;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              SimpleHiddenDrawerController.of(context).toggle();
            }),
        title: Text('SAVED POSTS',
            style: GoogleFonts.getFont('Barlow Condensed',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 30)
            // Center(
            //   child: Image.asset('assets/vybrnt_title_clear.png',
            //       width: 200, fit: BoxFit.cover),
            // )
            ),
      ),
      body: BlocBuilder<BookmarkWatcherBloc, BookmarkWatcherState>(
          builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            loadFailure: (state) {
              return const CircularProgressIndicator();
            },
            loadSuccess: (state) {
              return ListView.builder(
                  itemCount: state.posts.size,
                  itemBuilder: (context, index) {
                    return _OpenContainerPostWrapper(
                        key: ObjectKey(state.posts[index]),
                        post: state.posts[index],
                        color: Colors.black,
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
                                child: PostCard(

                                    //user: _profileUser,
                                    post: state.posts[index],
                                    color: Colors.black)),
                          );
                        });
                  });
            });
      }),
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
    this.color,
  }) : super(key: key);

  final CloseContainerBuilder closedBuilder;
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
