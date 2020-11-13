import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/posts/application/post_actor/post_actor_bloc.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
// ignore: implementation_imports
import 'package:cached_network_image/src/image_provider/cached_network_image_provider.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';

class PostCard extends StatefulWidget {
  @required
  final Post post;
  @override
  _PostCardState createState() => _PostCardState();
  PostCard({this.post});
}

class _PostCardState extends State<PostCard> {
  _buildPostCardWithBuilders(BuildContext context) {
    print("build");
    return BlocBuilder<PostActorBloc, PostActorState>(
        builder: (context, state) {
      return Container(
          child: _makePostCard(
              post: widget.post,
              org: state.org,
              senderUser: state.senderUser,
              reposterUser: state.reposterUser,
              isCurrentUsersPost: state.isCurrentUsersPost,
              liked: state.isLiked,
              reposted: state.isReposted,
              bookmarked: state.isBookmarked,
              likes: state.likes.size,
              reposts: state.reposts.size,
              comments: state.comments.size));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          SafeArea(child: Flexible(child: _buildPostCardWithBuilders(context))),
    );
  }

  _makePostCard({
    @required Post post,
    @required Organization org,
    @required User senderUser,
    @required User reposterUser,
    @required bool isCurrentUsersPost,
    @required bool liked,
    @required bool reposted,
    @required bool bookmarked,
    @required int likes,
    @required int reposts,
    @required int comments,
  }) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;

    return Card(
        shape: BeveledRectangleBorder(side: BorderSide(width: 2.0)),
        color: Color(int.parse(org.secondaryColor, radix: 16)),
        child: Column(children: [
          Row(
            //This row contains the circle avatar, the user who created the post, the time it was posted, and the edit button
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: CircleAvatar(
                  backgroundImage:
                      widget.post.postType.getOrCrash().contains("user")
                          ? AssetImage(senderUser
                              .profileImageUrl) //insert user profile picture
                          : CachedNetworkImageProvider(
                              org.profileImageUrl), //insert org profile picture
                ),
                //onTap: Navigator.push(context, route)
              ),
              Column(
                //This column contains the user who created the post, and the time it was posted
                children: [
                  reposterUser.email.isEmpty
                      ? SizedBox.shrink()
                      : Row(
                          children: [
                            Icon(Icons.rotate_right,
                                color: reposted ? Colors.white : Colors.black),
                            Text("Shared by " +
                                    reposterUser
                                        .profileName //insert user name here
                                ),
                          ],
                        ),
                  Text("by " + senderUser.profileName //insert user name here
                      ),
                  Text(DateFormat.yMMMd()
                      .format(widget.post.postTime.getOrCrash().toDate())),
                ],
              ),
              isCurrentUsersPost
                  ? deleteButton(post, currentUserID)
                  : bookmarkButton(bookmarked, post, currentUserID)
            ],
          ),
          InkWell(onTap: () => print("open post"), child: postContent()),
          Row(
            //This final row contains the like button, the comment button, the share button, and the bookmark
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              likeButtonAndCount(likes, liked, post, currentUserID),
              (isCurrentUsersPost || !post.repostable.getOrCrash())
                  ? SizedBox.shrink()
                  : repostButtonAndCount(
                      reposts, reposted, post, currentUserID),
              post.commentable.getOrCrash()
                  ? commentButtonAndCount(comments, post, currentUserID)
                  : SizedBox.shrink(),
            ],
          )
        ]));
  }

  Widget postContent() {
    //constants for the post content based on phone size
    final imageHEIGHT = MediaQuery.of(context).size.width / 4;
    final imageWIDTH = MediaQuery.of(context).size.width;

    return Container(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(children: [
        Text(
          widget.post.postHeader.getOrCrash(),
          maxLines: 2,
          style: TextStyle(
            fontSize: 30.0,
          ),
        ), //This contains the header
        widget.post.postImageURL.isValid()
            ? //checks if there is an image
            Container(
                //outputs the image is the image
                alignment: Alignment.center,
                height: imageHEIGHT,
                width: imageWIDTH,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(widget.post.postImageURL
                        .getOrCrash()), //Here is the image if there is one, and the caption comes after that
                    fit: BoxFit.cover,
                  ),
                ),
              )
            : SizedBox.shrink(), //shrinks the space between
        Text(widget.post.postBody.getOrCrash() //here is the post body
            ),
      ]),
    ));
  }

  Widget bookmarkButton(bool bookmarked, Post post, String currentUserID) {
    return IconButton(
        icon: Icon(Icons.bookmark,
            color: bookmarked ? Colors.white : Colors.black),
        onPressed: () {
          context
              .bloc<PostActorBloc>()
              .add(PostActorEvent.toggleBookmarkPost(post, currentUserID));
        });
  }

  Widget deleteButton(Post post, String currentUserID) {
    return IconButton(
        icon: Icon(Icons.close),
        onPressed: () =>
            context.bloc<PostActorBloc>().add(PostActorEvent.delete(post)));
  }

  Widget likeButtonAndCount(
      int likes, bool liked, Post post, String currentUserID) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            icon: Icon(Icons.thumb_up,
                color: liked ? Colors.white : Colors.black),
            onPressed: () {
              context
                  .bloc<PostActorBloc>()
                  .add(PostActorEvent.toggleLikePost(post, currentUserID));
            }),
        Text(likes > 0 ? likes.toString() + " likes" : ""),
      ],
    );
  }

  Widget commentButtonAndCount(int comments, Post post, String currentUserID) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      IconButton(
        icon: Icon(
          Icons.add_comment,
        ),
        onPressed: () => print("comment"),
      ),
      Text(comments > 0 ? comments.toString() + " comments" : ""),
    ]);
  }

  Widget repostButtonAndCount(
      int reposts, bool reposted, Post post, String currentUserID) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            icon: Icon(Icons.rotate_right,
                color: reposted ? Colors.white : Colors.black),
            onPressed: () => context
                .bloc<PostActorBloc>()
                .add(PostActorEvent.toggleRepostPost(post, currentUserID))),
        Text(reposts > 0 ? reposts.toString() + " reposts" : ""),
      ],
    );
  }
}
