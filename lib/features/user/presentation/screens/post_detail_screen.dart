// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';
// import 'package:vybrnt_mvp/core/shared/constants.dart';
// import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
// import 'package:vybrnt_mvp/features/user/domain/models/comment_model.dart';
// import 'package:vybrnt_mvp/features/user/services/database_service.dart';
// import '../../domain/models/post_model.dart';
// import '../../domain/models/user.dart';
// import '../widgets/post_view.dart';

// class PostDetailScreen extends StatefulWidget {
//   static final String id = 'post_detail_screen';
//   // final AuthService _auth = AuthService();
//   final Post post;
//   final int likeCount;
//   //final User sender;

//   const PostDetailScreen({Key key, this.post, this.likeCount})
//       : super(key: key);

//   @override
//   _PostDetailScreenState createState() => _PostDetailScreenState();
// }

// class _PostDetailScreenState extends State<PostDetailScreen> {
//   final TextEditingController _commentController = TextEditingController();
//   bool _isCommenting = false;

//   _buildComment(Comment comment) {
//     return FutureBuilder(
//       future: DatabaseService.getUserWithID(comment.senderID),
//       builder: (BuildContext context, AsyncSnapshot snapshot) {
//         if (!snapshot.hasData) {
//           return SizedBox.shrink();
//         }
//         User sender = snapshot.data;
//         return CommentTile(sender: sender);
//       },
//     );
//   }

//   _buildCommentTF() {
//     final currentUserID = Provider.of<UserData>(context).currentUserID;
//     return IconTheme(
//       data: IconThemeData(
//         color: _isCommenting
//             ? Theme.of(context).accentColor
//             : Theme.of(context).disabledColor,
//       ),
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: 8.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             SizedBox(width: 10.0),
//             Expanded(
//               child: TextField(
//                 controller: _commentController,
//                 textCapitalization: TextCapitalization.sentences,
//                 onChanged: (comment) {
//                   setState(() {
//                     _isCommenting = comment.length > 0;
//                   });
//                 },
//                 decoration:
//                     InputDecoration.collapsed(hintText: 'Write a comment...'),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 4.0),
//               child: IconButton(
//                 icon: Icon(Icons.send),
//                 onPressed: () {
//                   if (_isCommenting) {
//                     DatabaseService.commentOnPost(
//                       currentUserID: currentUserID,
//                       post: widget.post,
//                       comment: _commentController.text,
//                     );
//                     _commentController.clear();
//                     setState(() {
//                       _isCommenting = false;
//                     });
//                   }
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   //User _sender;
//   // void initState() {
//   //   super.initState();
//   //   _setupUser();
//   // }

//   // _setupUser() async {
//   //   User sender = await DatabaseService.getUserWithID(widget.post.senderID);
//   //   setState(() {
//   //     _sender = sender;
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     //User sender = await DatabaseService.getUserWithID(widget.post.senderID);

//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text(
//           'Comments',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//             FutureBuilder(
//                 future: DatabaseService.getUserWithID(widget.post.senderID),
//                 builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
//                   if (!snapshot.hasData) {
//                     return Center(
//                       child: CircularProgressIndicator(),
//                     );
//                   } else {
//                     User _sender = snapshot.data;
//                     return Hero(
//                       transitionOnUserGestures: true,
//                       tag: widget.post.postID,
//                       child: Container(
//                         child: PostView(
//                           //onPushPostDetail: widget.onPushPostDetail,
//                           //currentUserID: widget.userID,
//                           post: widget.post,
//                           sender: _sender,
//                         ),
//                       ),
//                     );
//                   }
//                 }),
//             StreamBuilder(
//               stream: commentsRef
//                   .document(widget.post.postID)
//                   .collection('postComments')
//                   .orderBy('time', descending: true)
//                   .snapshots(),
//               builder: (BuildContext context, AsyncSnapshot snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 }
//                 return Expanded(
//                   child: ListView.builder(
//                     itemCount: snapshot.data.documents.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       Comment comment =
//                           Comment.fromDoc(snapshot.data.documents[index]);
//                       return _buildComment(comment);
//                     },
//                   ),
//                 );
//               },
//             ),
//             Divider(height: 1.0),
//             _buildCommentTF(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CommentTile extends StatelessWidget {
//   final comment;
//   const CommentTile({
//     Key key,
//     @required this.sender,
//     this.comment,
//   }) : super(key: key);

//   final User sender;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: CircleAvatar(
//         radius: 25.0,
//         backgroundColor: Colors.grey,
//         backgroundImage: sender.profileImageUrl.isEmpty
//             ? AssetImage('assets/images/user_placeholder.png')
//             : CachedNetworkImageProvider(sender.profileImageUrl),
//       ),
//       title: Text(sender.profileName),
//       subtitle: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text(comment.content),
//           SizedBox(height: 6.0),
//           Text(
//             DateFormat.yMd().add_jm().format(comment.time.toDate()),
//           ),
//         ],
//       ),
//     );
//   }
// }
