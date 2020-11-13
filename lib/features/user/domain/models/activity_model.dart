// import 'package:cloud_firestore/cloud_firestore.dart';

// class Activity {
//   final String activityID;
//   final String fromUserID;
//   final String postID;
//   final String postImageUrl;
//   final String comment;
//   final Timestamp time;

//   Activity({
//     this.activityID,
//     this.fromUserID,
//     this.postID,
//     this.postImageUrl,
//     this.comment,
//     this.time,
//   });

//   factory Activity.fromDoc(DocumentSnapshot doc) {
//     return Activity(
//       activityID: doc.documentID,
//       fromUserID: doc['fromUserID'],
//       postID: doc['postID'],
//       postImageUrl: doc['postImageUrl'],
//       comment: doc['comment'],
//       time: doc['time'],
//     );
//   }
// }
