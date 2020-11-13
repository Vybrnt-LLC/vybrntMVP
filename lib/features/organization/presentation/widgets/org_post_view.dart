// import 'dart:async';

// import 'package:animator/animator.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:getflutter/components/avatar/gf_avatar.dart';
// import 'package:getflutter/shape/gf_avatar_shape.dart';
// import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
// import 'package:vybrnt_mvp/features/organization/services/org_database_service.dart';
// import 'package:vybrnt_mvp/features/user/domain/models/post_model.dart';
// import 'package:vybrnt_mvp/features/user/services/database_service.dart';

// class OrgPostView extends StatefulWidget {
//   final String currentUserID;
//   final Post post;
//   final Organization sender;
//   final ValueChanged<Post> onPushPostDetail;

//   OrgPostView(
//       {this.currentUserID, this.post, this.sender, this.onPushPostDetail});
//   @override
//   _OrgPostViewState createState() => _OrgPostViewState();
// }

// class _OrgPostViewState extends State<OrgPostView> {
//   bool _isLiked = false;
//   bool _likeAnim = false;
//   int _likeCount = 0;

//   @override
//   void initState() {
//     super.initState();
//     _likeCount = widget.post.likeCount;
//     _initPostLiked();
//   }

//   _initPostLiked() async {
//     bool isLiked = await DatabaseService.didLikePost(
//         currentUserID: widget.currentUserID, post: widget.post);
//     setState(() {
//       _isLiked = isLiked;
//     });

//     if (mounted) {
//       setState(() {
//         _isLiked = isLiked;
//       });
//     }
//   }

//   _likePost() {
//     if (_isLiked) {
//       // Unlike Post
//       OrganizationDatabaseService.unlikeOrgPost(
//           currentUserID: widget.currentUserID, post: widget.post);
//       setState(() {
//         _isLiked = false;
//         _likeCount = _likeCount - 1;
//       });
//     } else {
//       // Like Post
//       OrganizationDatabaseService.likeOrgPost(
//           currentUserID: widget.currentUserID, post: widget.post);
//       setState(() {
//         _isLiked = true;
//         _likeAnim = true;
//         _likeCount = _likeCount + 1;
//       });
//       Timer(Duration(milliseconds: 350), () {
//         setState(() {
//           _likeAnim = false;
//         });
//       });
//     }
//   }

//   @override
//   void didUpdateWidget(OrgPostView oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (oldWidget.post.likeCount != widget.post.likeCount) {
//       _likeCount = widget.post.likeCount;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final postThumbnail = new Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(color: Colors.white),
//       ),
//       margin: new EdgeInsets.symmetric(
//         vertical: 16.0,
//         // horizontal: 0.0,
//       ),
//       alignment: FractionalOffset.centerLeft,
//       child: GFAvatar(
//         borderRadius: BorderRadius.circular(10),
//         shape: GFAvatarShape.square,
//         //radius: 40.0,
//         size: 75,
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.white,
//         backgroundImage: widget.sender.profileImageUrl.isEmpty
//             ? AssetImage('assets/images/user_placeholder.png')
//             : CachedNetworkImageProvider(widget.sender.profileImageUrl),
//       ),
//       height: 75.0,
//       width: 75.0,
//     );

//     final baseTextStyle = const TextStyle(fontFamily: 'Poppins');
//     final regularTextStyle = baseTextStyle.copyWith(
//         color: const Color(0xffb6b2df),
//         fontSize: 12.0,
//         fontWeight: FontWeight.w400);
//     final subHeaderTextStyle =
//         regularTextStyle.copyWith(fontSize: 15.0, fontWeight: FontWeight.w500);
//     final headerTextStyle = baseTextStyle.copyWith(
//         color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600);

//     Widget _postValue({String value, IconData icon, dynamic action}) {
//       return new Row(children: <Widget>[
//         new Icon(
//           icon,
//           size: 12.0,
//           color: const Color(0xffb6b2df),
//           //onPressed: action
//         ),
//         new Container(width: 8.0),
//         new Text(value, style: regularTextStyle),
//       ]);
//     }

//     final postCardContent = new Container(
//       margin: new EdgeInsets.fromLTRB(50.0, 16.0, 16.0, 4.0),
//       //constraints: new BoxConstraints.expand(),
//       child: GestureDetector(
//         onTap: () => widget.onPushPostDetail(widget.post),
//         child: new Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             new Container(height: 4.0),
//             new Text(widget.sender.name, style: headerTextStyle),
//             new Container(height: 8.0),
//             new Text(widget.post.header, style: subHeaderTextStyle),
//             new Container(height: 8.0),
//             new Text(widget.post.description,
//                 style: regularTextStyle,
//                 softWrap: true,
//                 overflow: TextOverflow.ellipsis,
//                 maxLines: 2),
//             new Container(height: 8.0),
//             new GestureDetector(
//                 onTap: () => print('Open Post Detail Image'),
//                 child: Stack(alignment: Alignment.center, children: <Widget>[
//                   Container(
//                     height: 110,
//                     width: 220,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       image: DecorationImage(
//                         image: CachedNetworkImageProvider(widget.post.imageUrl),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   )
//                 ])),
//             new Container(
//                 margin: new EdgeInsets.symmetric(vertical: 8.0),
//                 height: 2.0,
//                 width: 18.0,
//                 color: new Color(0xff00c6ff)),
//             new Row(
//               children: <Widget>[
//                 new Expanded(
//                     child: GestureDetector(
//                   onTap: _likePost,
//                   child: Stack(children: <Widget>[
//                     _postValue(
//                         //action: _likePost,
//                         value: '${_likeCount.toString()}', //planet.distance,
//                         icon: _isLiked ? Icons.star : Icons.star_border),
//                     _likeAnim
//                         ? Animator(
//                             duration: Duration(milliseconds: 300),
//                             tween: Tween(begin: 0.5, end: 1.4),
//                             curve: Curves.elasticOut,
//                             builder: (anim) => Transform.scale(
//                                 scale: anim.value,
//                                 child: Icon(
//                                   Icons.star,
//                                   size: 20,
//                                   color: Colors.yellow,
//                                 )),
//                           )
//                         : SizedBox.shrink()
//                   ]),
//                 )),
//                 new Expanded(
//                     child: _postValue(value: '5', icon: Icons.comment)),
//                 new Expanded(
//                     child: _postValue(
//                         value: '3', //planet.distance,
//                         icon: Icons.loop)),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );

//     final postCard = new Container(
//       child: postCardContent,
//       height: 275.0,
//       margin: new EdgeInsets.fromLTRB(40, 0, 15, 0),
//       decoration: new BoxDecoration(
//         color: Colors.black87,
//         shape: BoxShape.rectangle,
//         borderRadius: new BorderRadius.circular(8.0),
//         boxShadow: <BoxShadow>[
//           new BoxShadow(
//             color: Colors.black12,
//             blurRadius: 10.0,
//             offset: new Offset(0.0, 10.0),
//           ),
//         ],
//       ),
//     );

//     return new Container(
//         height: 300.0,
//         margin: const EdgeInsets.symmetric(
//           vertical: 5.0,
//           horizontal: 15.0,
//         ),
//         child: new Stack(
//           children: <Widget>[
//             postCard,
//             postThumbnail,
//           ],
//         ));
//   }
// }
