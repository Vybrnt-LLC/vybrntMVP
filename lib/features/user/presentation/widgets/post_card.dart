import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:getflutter/getflutter.dart';
import 'package:provider/provider.dart';
import 'package:simple_url_preview/simple_url_preview.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/event_detail_image.dart';
import 'package:vybrnt_mvp/features/posts/application/post_actor/post_actor_bloc.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostCard extends StatefulWidget {
  @required
  final Post post;
  final Color color;
  @override
  _PostCardState createState() => _PostCardState();
  PostCard({Key key, this.post, this.color = Colors.black38}) : super(key: key);
}

class _PostCardState extends State<PostCard> {
  ContainerTransitionType _transitionType = ContainerTransitionType.fade;
  @override
  Widget build(BuildContext context) {
    final imageHEIGHT = MediaQuery.of(context).size.width / 2.5;
    final imageWIDTH = MediaQuery.of(context).size.width;
    final currentUserID = Provider.of<UserData>(context).currentUserID;

    return BlocBuilder<PostActorBloc, PostActorState>(
        builder: (context, state) {
      return Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 0.5, color: widget.color),
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
                  child: widget.post.postType.getOrCrash().contains("org")
                      ? GestureDetector(
                          onTap: () => TabNavigatorProvider.of(context)
                              .pushOrgPage(context,
                                  orgID: state.org.orgID.getOrCrash()),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: widget.color, width: 3.0),
                            ),
                            child: GFAvatar(
                              shape: GFAvatarShape.square,
                              borderRadius: BorderRadius.circular(5),
                              backgroundColor: Colors.white,
                              backgroundImage: state.org.profileImageUrl.isEmpty
                                  ? AssetImage(
                                      'assets/images/user_placeholder.png')
                                  : CachedNetworkImageProvider(
                                      state.org.profileImageUrl),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () => TabNavigatorProvider.of(context)
                              .pushUserProfile(context,
                                  userID: state.senderUser.userID.getOrCrash()),
                          child: CircleAvatar(
                            backgroundColor: widget.color,
                            radius: 30.0,
                            child: CircleAvatar(
                                radius: 27,
                                backgroundImage: state
                                        .senderUser.profileImageUrl.isEmpty
                                    ? AssetImage(
                                        'assets/images/user_placeholder.png')
                                    : CachedNetworkImageProvider(
                                        state.senderUser.profileImageUrl)),
                          ),
                        ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 10,
                  ),
                ),
                Flexible(
                  flex: 9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //This column contains the user who created the post, and the time it was posted
                    children: [
                      state.reposterUser.email.isEmpty
                          ? SizedBox.shrink()
                          : GestureDetector(
                              onTap: () => TabNavigatorProvider.of(context)
                                  .pushUserProfile(context,
                                      userID:
                                          state.senderUser.userID.getOrCrash()),
                              child: Row(
                                children: [
                                  Icon(Icons.rotate_right,
                                      color: state.isReposted
                                          ? Colors.white
                                          : Colors.black,
                                      size: 18),
                                  Text(
                                    "Shared by " +
                                        state.reposterUser
                                            .profileName //insert user name here
                                    ,
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                ],
                              ),
                            ),
                      widget.post.orgID.getOrCrash().isNotEmpty
                          ? GestureDetector(
                              onTap: () => TabNavigatorProvider.of(context)
                                  .pushOrgPage(context,
                                      orgID: state.org.orgID.getOrCrash()),
                              child: Text(state.org.name,
                                  style: TextStyle(fontSize: 20)))
                          : GestureDetector(
                              onTap: () => TabNavigatorProvider.of(context)
                                  .pushUserProfile(context,
                                      userID:
                                          state.senderUser.userID.getOrCrash()),
                              child: Text(state.senderUser.profileName,
                                  style: TextStyle(
                                      fontSize: 20) //insert user name here
                                  ),
                            ),
                      Row(
                        children: [
                          widget.post.orgID.getOrCrash().isNotEmpty
                              ? GestureDetector(
                                  onTap: () => TabNavigatorProvider.of(context)
                                      .pushUserProfile(context,
                                          userID: state.senderUser.userID
                                              .getOrCrash()),
                                  child: Text(state.senderUser
                                          .profileName //insert user name here
                                      ),
                                )
                              : SizedBox.shrink(),
                          widget.post.orgID.getOrCrash().isNotEmpty
                              ? SizedBox(width: 5)
                              : SizedBox.shrink(),
                          Text(timeago.format(
                              widget.post.postTime.getOrCrash().toDate())),
                        ],
                      ),
                    ],
                  ),
                ),
                // Expanded(flex: 2, child: SizedBox()),
                Flexible(
                  flex: 1,
                  child: currentUserID == widget.post.senderID.getOrCrash()
                      ? FocusedMenuHolder(
                          menuWidth: MediaQuery.of(context).size.width * 0.50,
                          blurSize: 5.0,
                          menuItemExtent: 45,
                          menuBoxDecoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          duration: Duration(milliseconds: 100),
                          animateMenuItems: true,
                          blurBackgroundColor: Colors.black54,
                          menuOffset:
                              10.0, // Offset value to show menuItem from the selected item
                          bottomOffsetHeight:
                              80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                          menuItems: <FocusedMenuItem>[
                            FocusedMenuItem(
                                title: Text("Report"),
                                trailingIcon: Icon(Icons.flag),
                                onPressed: () =>
                                    TabNavigatorProvider.of(context).pushReport(
                                        context,
                                        currentUserID: currentUserID,
                                        contentID:
                                            widget.post.eventID.getOrCrash(),
                                        contentType: 'post',
                                        ownerID: widget.post.orgID
                                                .getOrCrash()
                                                .isEmpty
                                            ? widget.post.senderID.getOrCrash()
                                            : widget.post.orgID.getOrCrash(),
                                        ownerType: widget.post.orgID
                                                .getOrCrash()
                                                .isEmpty
                                            ? 'user'
                                            : 'org')),
                            FocusedMenuItem(
                              title: Text(
                                "Delete",
                                style: TextStyle(color: Colors.red),
                              ),
                              trailingIcon: Icon(Icons.delete),
                              onPressed: () => context
                                  .bloc<PostActorBloc>()
                                  .add(PostActorEvent.delete(widget.post)),
                            )
                          ],
                          onPressed: () {},
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          ),
                        )
                      : FocusedMenuHolder(
                          menuWidth: MediaQuery.of(context).size.width * 0.50,
                          blurSize: 5.0,
                          menuItemExtent: 45,
                          menuBoxDecoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          duration: Duration(milliseconds: 100),
                          animateMenuItems: true,
                          blurBackgroundColor: Colors.black54,
                          menuOffset:
                              10.0, // Offset value to show menuItem from the selected item
                          bottomOffsetHeight:
                              80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                          menuItems: <FocusedMenuItem>[
                            FocusedMenuItem(
                                title: Text("Report"),
                                trailingIcon: Icon(Icons.flag),
                                onPressed: () =>
                                    TabNavigatorProvider.of(context).pushReport(
                                        context,
                                        currentUserID: currentUserID,
                                        contentID:
                                            widget.post.eventID.getOrCrash(),
                                        contentType: 'post',
                                        ownerID: widget.post.orgID
                                                .getOrCrash()
                                                .isEmpty
                                            ? widget.post.senderID.getOrCrash()
                                            : widget.post.orgID.getOrCrash(),
                                        ownerType: widget.post.orgID
                                                .getOrCrash()
                                                .isEmpty
                                            ? 'user'
                                            : 'org')),
                          ],
                          onPressed: () {},
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          ),
                        ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            widget.post.postHeader.getOrCrash(),
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ],
                    ), //This contains the header

                    widget.post.postImageURL.getOrCrash().isNotEmpty
                        ? //checks if there is an image
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: OpenContainer<bool>(
                                transitionType: _transitionType,
                                openBuilder: (BuildContext _,
                                    VoidCallback openContainer) {
                                  return EventDetailImage(
                                      widget.post.postImageURL.getOrCrash());
                                },
                                closedShape: const RoundedRectangleBorder(),
                                closedElevation: 0.0,
                                closedBuilder: (BuildContext _,
                                    VoidCallback openContainer) {
                                  return Container(
                                    //outputs the image is the image
                                    alignment: Alignment.center,
                                    height: imageHEIGHT,
                                    width: imageWIDTH,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: widget.color, width: 0.5),
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: CachedNetworkImageProvider(widget
                                            .post.postImageURL
                                            .getOrCrash()), //Here is the image if there is one, and the caption comes after that
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                }),
                          )
                        : SizedBox.shrink(), //shrinks the space between
                    SizedBox(
                      height: 10,
                    ),
                    Text(widget.post.postBody.getOrCrash(),
                        style: TextStyle(
                          height: 1.3,
                          fontSize: 18,
                        ) //here is the post body
                        ),
                    SizedBox(height: 5),
                    widget.post.postURL.getOrCrash().isNotEmpty
                        ? SimpleUrlPreview(
                            url: widget.post.postURL.getOrCrash(),
                            textColor: Colors.white,
                            titleLines: 2,
                            descriptionLines: 2,
                          )
                        // InkWell(
                        //     child: Text(widget.post.postURL.getOrCrash(),
                        //         style: TextStyle(
                        //           color: Colors.blue,
                        //           height: 1.3,
                        //           fontSize: 18,
                        //         )),
                        //     onTap: () =>
                        //         launch(widget.post.postURL.getOrCrash()),
                        //   )
                        : SizedBox.shrink(),
                  ]),
            )),
            Row(
              //This final row contains the like button, the comment button, the share button, and the bookmark
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => TabNavigatorProvider.of(context)
                          .pushLikesList(context, userIDList: state.likes),
                      child: Text(
                          state.likes.size > 0
                              ? state.likes.size.toString()
                              : "",
                          style: TextStyle(color: widget.color, fontSize: 14)),
                    ),
                    IconButton(
                        icon: Icon(Icons.thumb_up,
                            color: state.isLiked ? widget.color : Colors.black),
                        onPressed: () {
                          context.bloc<PostActorBloc>().add(
                              PostActorEvent.toggleLikePost(
                                  widget.post, currentUserID));
                        }),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                      state.comments.size > 0
                          ? state.comments.size.toString()
                          : "",
                      style: TextStyle(color: widget.color, fontSize: 14)),
                  SizedBox(width: 10),
                  Icon(
                    Icons.mode_comment,
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => TabNavigatorProvider.of(context)
                          .pushRepostList(context, userIDList: state.reposts),
                      child: Text(
                          state.reposts.size > 0
                              ? state.reposts.size.toString()
                              : "",
                          style: TextStyle(color: widget.color, fontSize: 14)),
                    ),
                    IconButton(
                        icon: Icon(Icons.loop,
                            color:
                                state.isReposted ? widget.color : Colors.black),
                        onPressed: () => context.bloc<PostActorBloc>().add(
                            PostActorEvent.toggleRepostPost(
                                widget.post, currentUserID))),
                  ],
                ),
                IconButton(
                    icon: state.isBookmarked
                        ? Icon(Icons.bookmark,
                            color: state.isBookmarked
                                ? widget.color
                                : Colors.black)
                        : Icon(Icons.bookmark_border,
                            color: state.isBookmarked
                                ? widget.color
                                : Colors.black),
                    onPressed: () {
                      context.bloc<PostActorBloc>().add(
                          PostActorEvent.toggleBookmarkPost(
                              widget.post, currentUserID));
                    }),
              ],
            )
          ]));
    });
  }
}
