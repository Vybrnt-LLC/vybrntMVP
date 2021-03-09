import 'package:animations/animations.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getflutter/getflutter.dart';
import 'package:like_button/like_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:simple_url_preview/simple_url_preview.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/event_detail_image.dart';
import 'package:vybrnt_mvp/features/posts/application/post_actor/post_actor_bloc.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostCard extends StatelessWidget {
  final Post post;
  final Color color;
  final ContainerTransitionType transitionType;

  const PostCard(
      {Key key,
      this.post,
      this.color = Colors.black38,
      this.transitionType = ContainerTransitionType.fade})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final imageHEIGHT = MediaQuery.of(context).size.width / 2.5;
    final imageWIDTH = MediaQuery.of(context).size.width;
    final currentUserID = Provider.of<UserData>(context).currentUserID;

    return BlocBuilder<PostActorBloc, PostActorState>(
        builder: (context, state) {
      final shareLink = state.shareLink;
      final name = post.orgID.getOrCrash().isNotEmpty
          ? state.org.name
          : state.senderUser.profileName;

      final String shareMessage =
          "Check out $name's post on Vybrnt! \n$shareLink";
      return Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 0.5, color: color),
              //bottom: BorderSide(width: 0.5, color: widget.color),
            ),
          ),
          //shape: BeveledRectangleBorder(side: BorderSide(width: 2.0)),
          //color: widget.org.secondaryColor,
          child: Column(children: [
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: post.postType.getOrCrash().contains("org")
                      ? GestureDetector(
                          onTap: () => TabNavigatorProvider.of(context) != null
                              ? TabNavigatorProvider.of(context).pushOrgPage(
                                  context,
                                  orgID: state.org.orgID.getOrCrash())
                              : getIt<NavigationService>().navigateTo(
                                  Routes.org,
                                  arguments: OrgScreenArguments(
                                      orgID: state.org.orgID.getOrCrash())),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: color, width: 3.0),
                            ),
                            child: GFAvatar(
                              shape: GFAvatarShape.square,
                              borderRadius: BorderRadius.circular(5),
                              backgroundColor: Colors.white,
                              backgroundImage: state.org.profileImageUrl.isEmpty
                                  ? Image.asset(
                                          'assets/images/user_placeholder.png')
                                      .image
                                  : CachedNetworkImageProvider(
                                      state.org.profileImageUrl),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () => TabNavigatorProvider.of(context) != null
                              ? TabNavigatorProvider.of(context)
                                  .pushUserProfile(context,
                                      userID:
                                          state.senderUser.userID.getOrCrash())
                              : getIt<NavigationService>().navigateTo(
                                  Routes.user,
                                  arguments: UserScreenArguments(
                                      userID: state.senderUser.userID
                                          .getOrCrash())),
                          child: CircleAvatar(
                            backgroundColor: color,
                            radius: 30.0,
                            child: CircleAvatar(
                                radius: 27,
                                backgroundImage: state
                                        .senderUser.profileImageUrl.isEmpty
                                    ? Image.asset(
                                            'assets/images/user_placeholder.png')
                                        .image
                                    : CachedNetworkImageProvider(
                                        state.senderUser.profileImageUrl)),
                          ),
                        ),
                ),
                const Flexible(
                  child: SizedBox(
                    width: 10,
                  ),
                ),
                Flexible(
                  flex: 9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //This column contains the user who created the post, and the time it was posted
                    children: [
                      if (state.reposterUser.email.isEmpty)
                        const SizedBox.shrink()
                      else
                        GestureDetector(
                          onTap: () => TabNavigatorProvider.of(context) != null
                              ? TabNavigatorProvider.of(context)
                                  .pushUserProfile(context,
                                      userID:
                                          state.senderUser.userID.getOrCrash())
                              : getIt<NavigationService>().navigateTo(
                                  Routes.user,
                                  arguments:
                                      state.senderUser.userID.getOrCrash()),
                          child: Row(
                            children: [
                              Icon(Icons.rotate_right,
                                  color: state.isReposted
                                      ? Colors.white
                                      : Colors.black,
                                  size: 18),
                              Text(
                                "Shared by ${state.reposterUser.profileName}" //insert user name here
                                ,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                      if (post.orgID.getOrCrash().isNotEmpty)
                        GestureDetector(
                            onTap: () => TabNavigatorProvider.of(context) !=
                                    null
                                ? TabNavigatorProvider.of(context).pushOrgPage(
                                    context,
                                    orgID: state.org.orgID.getOrCrash())
                                : getIt<NavigationService>().navigateTo(
                                    Routes.org,
                                    arguments: OrgScreenArguments(
                                        orgID: state.org.orgID.getOrCrash())),
                            child: AutoSizeText(state.org.name,
                                maxLines: 2,
                                style: Theme.of(context).textTheme.subtitle1))
                      else
                        GestureDetector(
                          onTap: () => TabNavigatorProvider.of(context) != null
                              ? TabNavigatorProvider.of(context)
                                  .pushUserProfile(context,
                                      userID:
                                          state.senderUser.userID.getOrCrash())
                              : getIt<NavigationService>().navigateTo(
                                  Routes.user,
                                  arguments: UserScreenArguments(
                                      userID: state.senderUser.userID
                                          .getOrCrash())),
                          child: AutoSizeText(state.senderUser.profileName,
                              maxLines: 2,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1 //insert user name here
                              ),
                        ),
                      Row(
                        children: [
                          if (post.orgID.getOrCrash().isNotEmpty)
                            GestureDetector(
                              onTap: () =>
                                  TabNavigatorProvider.of(context) != null
                                      ? TabNavigatorProvider.of(context)
                                          .pushUserProfile(context,
                                              userID: state.senderUser.userID
                                                  .getOrCrash())
                                      : getIt<NavigationService>().navigateTo(
                                          Routes.user,
                                          arguments: UserScreenArguments(
                                              userID: state.senderUser.userID
                                                  .getOrCrash())),
                              child: Text(
                                state.senderUser.profileName,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2, //insert user name here
                              ),
                            )
                          else
                            const SizedBox.shrink(),
                          if (post.orgID.getOrCrash().isNotEmpty)
                            const SizedBox(width: 5)
                          else
                            const SizedBox.shrink(),
                          Text(
                            timeago.format(post.postTime.getOrCrash()),
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Expanded(flex: 2, child: SizedBox()),
                Flexible(
                  child: currentUserID == post.senderID.getOrCrash()
                      ? FocusedMenuHolder(
                          menuWidth: MediaQuery.of(context).size.width * 0.50,
                          blurSize: 5.0,
                          menuItemExtent: 45,
                          menuBoxDecoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          duration: const Duration(milliseconds: 100),
                          animateMenuItems: true,
                          blurBackgroundColor: Colors.black54,
                          menuOffset:
                              10.0, // Offset value to show menuItem from the selected item
                          bottomOffsetHeight:
                              80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                          menuItems: <FocusedMenuItem>[
                            FocusedMenuItem(
                                title: const Text(
                                  "Bookmark",
                                ),
                                trailingIcon: state.isBookmarked
                                    ? const Icon(Icons.bookmark)
                                    : const Icon(Icons.bookmark_border),
                                onPressed: () => context
                                    .bloc<PostActorBloc>()
                                    .add(PostActorEvent.toggleBookmarkPost(
                                        post, currentUserID))),
                            FocusedMenuItem(
                                title: const Text("Report"),
                                trailingIcon: const Icon(Icons.flag),
                                onPressed: () => TabNavigatorProvider.of(context) != null
                                    ? TabNavigatorProvider.of(context).pushReport(
                                        context,
                                        currentUserID: currentUserID,
                                        contentID: post.eventID.getOrCrash(),
                                        contentType: 'post',
                                        ownerID: post.orgID.getOrCrash().isEmpty
                                            ? post.senderID.getOrCrash()
                                            : post.orgID.getOrCrash(),
                                        ownerType: post.orgID.getOrCrash().isEmpty
                                            ? 'user'
                                            : 'org')
                                    : getIt<NavigationService>().navigateTo(
                                        Routes.report,
                                        arguments: ReportScreenArguments(
                                            currentUserID: currentUserID,
                                            contentID:
                                                post.eventID.getOrCrash(),
                                            contentType: 'post',
                                            ownerID: post.orgID.getOrCrash().isEmpty
                                                ? post.senderID.getOrCrash()
                                                : post.orgID.getOrCrash(),
                                            ownerType:
                                                post.orgID.getOrCrash().isEmpty
                                                    ? 'user'
                                                    : 'org'))),
                            FocusedMenuItem(
                              title: const Text(
                                "Delete",
                                style: TextStyle(color: Colors.red),
                              ),
                              trailingIcon: const Icon(Icons.delete),
                              onPressed: () => context
                                  .bloc<PostActorBloc>()
                                  .add(PostActorEvent.delete(post)),
                            )
                          ],
                          onPressed: () {},
                          child: const Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          ),
                        )
                      : FocusedMenuHolder(
                          menuWidth: MediaQuery.of(context).size.width * 0.50,
                          blurSize: 5.0,
                          menuItemExtent: 45,
                          menuBoxDecoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          duration: const Duration(milliseconds: 100),
                          animateMenuItems: true,
                          blurBackgroundColor: Colors.black54,
                          menuOffset:
                              10.0, // Offset value to show menuItem from the selected item
                          bottomOffsetHeight:
                              80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                          menuItems: <FocusedMenuItem>[
                            FocusedMenuItem(
                                title: const Text(
                                  "Bookmark",
                                ),
                                trailingIcon: state.isBookmarked
                                    ? const Icon(Icons.bookmark)
                                    : const Icon(Icons.bookmark_border),
                                onPressed: () => context
                                    .bloc<PostActorBloc>()
                                    .add(PostActorEvent.toggleBookmarkPost(
                                        post, currentUserID))),
                            FocusedMenuItem(
                                title: const Text("Report"),
                                trailingIcon: const Icon(Icons.flag),
                                onPressed: () => TabNavigatorProvider.of(context) != null
                                    ? TabNavigatorProvider.of(context).pushReport(
                                        context,
                                        currentUserID: currentUserID,
                                        contentID: post.eventID.getOrCrash(),
                                        contentType: 'post',
                                        ownerID: post.orgID.getOrCrash().isEmpty
                                            ? post.senderID.getOrCrash()
                                            : post.orgID.getOrCrash(),
                                        ownerType: post.orgID.getOrCrash().isEmpty
                                            ? 'user'
                                            : 'org')
                                    : getIt<NavigationService>().navigateTo(
                                        Routes.report,
                                        arguments: ReportScreenArguments(
                                            currentUserID: currentUserID,
                                            contentID:
                                                post.eventID.getOrCrash(),
                                            contentType: 'post',
                                            ownerID: post.orgID.getOrCrash().isEmpty
                                                ? post.senderID.getOrCrash()
                                                : post.orgID.getOrCrash(),
                                            ownerType:
                                                post.orgID.getOrCrash().isEmpty
                                                    ? 'user'
                                                    : 'org'))),
                          ],
                          onPressed: () {},
                          child: const Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          ),
                        ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(post.postHeader.getOrCrash(),
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              style: Theme.of(context).textTheme.subtitle1),
                        ),
                      ],
                    ), //This contains the header

                    if (post.postImageURL.getOrCrash().isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: OpenContainer<bool>(
                            transitionType: transitionType,
                            openBuilder:
                                (BuildContext _, VoidCallback openContainer) {
                              return EventDetailImage(
                                  post.postImageURL.getOrCrash());
                            },
                            closedShape: const RoundedRectangleBorder(),
                            closedElevation: 0.0,
                            closedBuilder:
                                (BuildContext _, VoidCallback openContainer) {
                              return Container(
                                //outputs the image is the image
                                alignment: Alignment.center,
                                height: imageHEIGHT,
                                width: imageWIDTH,
                                decoration: BoxDecoration(
                                  border: Border.all(color: color, width: 0.5),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(post
                                        .postImageURL
                                        .getOrCrash()), //Here is the image if there is one, and the caption comes after that
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            }),
                      )
                    else
                      const SizedBox.shrink(), //shrinks the space between
                    const SizedBox(
                      height: 10,
                    ),
                    Text(post.postBody.getOrCrash(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1 //here is the post body
                        ),
                    const SizedBox(height: 5),
                    if (post.postURL.getOrCrash().isNotEmpty)
                      SimpleUrlPreview(
                        url: post.postURL.getOrCrash(),
                        textColor: Colors.white,
                        descriptionLines: 2,
                      )
                    else
                      const SizedBox.shrink(),
                  ]),
            ),
            Row(
              //This final row contains the like button, the comment button, the share button, and the bookmark
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LikeButton(
                  onTap: (isLiked) async {
                    context.bloc<PostActorBloc>().add(
                        PostActorEvent.toggleLikePost(post, currentUserID));

                    return !isLiked;
                  },
                  circleColor: const CircleColor(
                      start: Color(0xff00ddff), end: Color(0xff0099cc)),
                  bubblesColor: const BubblesColor(
                    dotPrimaryColor: Color(0xff33b5e5),
                    dotSecondaryColor: Color(0xff0099cc),
                  ),
                  likeBuilder: (bool isLiked) {
                    return Icon(Icons.thumb_up,
                        color: state.isLiked ? color : Colors.black);
                  },
                  likeCount: state.likes.size,
                  countBuilder: (int count, bool isLiked, String text) {
                    //var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                    Widget result;
                    if (count == 0) {
                      result = Text(
                        "",
                        style: TextStyle(color: color),
                      );
                    } else {
                      result = GestureDetector(
                        onTap: () => TabNavigatorProvider.of(context) != null
                            ? TabNavigatorProvider.of(context)
                                .pushLikesList(context, userIDList: state.likes)
                            : getIt<NavigationService>().navigateTo(
                                Routes.userList,
                                arguments: UserListScreenArguments(
                                    userIDList: state.likes, title: 'Likes')),
                        child: Text(
                          text,
                          style: TextStyle(color: color),
                        ),
                      );
                    }
                    return result;
                  },
                ),
                Row(children: [
                  const Icon(
                    Icons.mode_comment,
                  ),
                  const SizedBox(width: 10),
                  Text(
                      state.comments.size > 0
                          ? state.comments.size.toString()
                          : "",
                      style: TextStyle(color: color, fontSize: 14)),
                ]),
                LikeButton(
                  onTap: (isReposted) async {
                    context.bloc<PostActorBloc>().add(
                        PostActorEvent.toggleRepostPost(post, currentUserID));

                    return !isReposted;
                  },
                  circleColor: const CircleColor(
                      start: Color(0xff00ddff), end: Color(0xff0099cc)),
                  bubblesColor: const BubblesColor(
                    dotPrimaryColor: Color(0xff33b5e5),
                    dotSecondaryColor: Color(0xff0099cc),
                  ),
                  likeBuilder: (bool isReposted) {
                    return Icon(Icons.loop,
                        color: state.isReposted ? color : Colors.black);
                  },
                  likeCount: state.reposts.size,
                  countBuilder: (int count, bool isReposted, String text) {
                    //var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                    Widget result;
                    if (count == 0) {
                      result = Text(
                        "",
                        style: TextStyle(color: color),
                      );
                    } else {
                      result = GestureDetector(
                        onTap: () => TabNavigatorProvider.of(context) != null
                            ? TabNavigatorProvider.of(context).pushRepostList(
                                context,
                                userIDList: state.reposts)
                            : getIt<NavigationService>().navigateTo(
                                Routes.userList,
                                arguments: UserListScreenArguments(
                                    userIDList: state.reposts,
                                    title: 'Reposts')),
                        child: Text(
                          text,
                          style: TextStyle(color: color),
                        ),
                      );
                    }
                    return result;
                  },
                ),
                IconButton(
                    icon: const FaIcon(FontAwesomeIcons.share,
                        color: Colors.black),
                    onPressed: () {
                      final RenderBox box =
                          context.findRenderObject() as RenderBox;
                      Share.share(shareMessage,
                          sharePositionOrigin:
                              box.localToGlobal(Offset.zero) & box.size);
                    }),
              ],
            )
          ]));
    });
  }
}
