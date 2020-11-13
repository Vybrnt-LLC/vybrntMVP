// import 'package:cloud_firestore/cloud_firestore.dart';

// class Event {
//   final String eventID;
//   final String senderID;
//   final String name;
//   final Timestamp date;
//   final String description;
//   final String imageUrl;

//   Event({this.eventID, this.name, this.date, this.description, this.imageUrl, this.senderID});

//   factory Event.fromDoc(DocumentSnapshot doc) {
//     return Event(
//       eventID: doc.id,
//       senderID: doc['senderID'],
//       description: doc['description'],
//       name: doc['name'],
//       imageUrl: doc['imageUrl'],
//       date: doc['date']

//     );
//   }

// }
