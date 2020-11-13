// import 'package:flutter/material.dart';
// import 'package:vybrnt_mvp/features/user/domain/models/post_model.dart';
// import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
// import 'package:vybrnt_mvp/features/user/presentation/widgets/post_view.dart';
// import 'package:vybrnt_mvp/features/user/services/database_service.dart';

// class SliverPostDelegate extends SliverPersistentHeaderDelegate {
//   final double expandedHeight;
//   final Post post;

//   SliverPostDelegate({this.expandedHeight, this.post});

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return SafeArea(
//           child: FutureBuilder(
//                   future: DatabaseService.getUserWithID(post.senderID),
//                   builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
//                     if (!snapshot.hasData) {
//                       return Center(
//                         child: CircularProgressIndicator(),
//                       );
//                     } else {
//                       User _sender = snapshot.data;
//                       return Hero(
//                         transitionOnUserGestures: true,
//                         tag: post.postID,
//                         child: Container(
//                           child: PostView(
//                             //onPushPostDetail: widget.onPushPostDetail,
//                             //currentUserID: widget.userID,
//                             post: post,
//                             sender: _sender,
//                           ),
//                         ),
//                       );
//                     }
//                   }),
//     );
//   }

//   @override
//   double get maxExtent => expandedHeight;

//   @override
//   double get minExtent => kToolbarHeight;

//   @override
//   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
// }
