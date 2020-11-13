// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// enum PostType { org, user }

// class Post {
//   final String postID;
//   final PostType postType;
//   final String senderID;
//   final Image profileImage; // should delete
//   final String header;
//   final String name;  // should delete
//   final String description;
//   final Timestamp time;
//   final String imageUrl;
//   final dynamic likes;
//   final dynamic likeCount;

//   Post({this.likeCount,
//       this.postType,
//       this.postID,
//       this.senderID,
//       this.profileImage,
//       this.header,
//       this.name,
//       this.description,
//       this.time,
//       this.imageUrl,
//       this.likes});

//   factory Post.fromDoc(DocumentSnapshot doc) {
//     return Post(
//       postID: doc.documentID,
//       postType: doc['postType'],
//       senderID: doc['senderID'],
//       description: doc['description'],
//       name: doc['name'], // will remove later
//       likes: doc['likes'],
//       time: doc['time'],
//       imageUrl: doc['imageUrl'],
//       header: doc['header'],
//       likeCount: doc['likeCount']

//     );
//   }
// }
