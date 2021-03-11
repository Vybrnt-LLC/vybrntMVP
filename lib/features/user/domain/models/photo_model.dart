import 'package:cloud_firestore/cloud_firestore.dart';

enum PhotoType { org, user }

class Photo {
  final String photoID;
  final PhotoType photoType;
  final String senderID;
  final String description;
  final Timestamp time;
  final String imageUrl;
  final dynamic likes;

  Photo(
      {this.photoID,
      this.photoType,
      this.senderID,
      this.description,
      this.time,
      this.imageUrl,
      this.likes});

  factory Photo.fromDoc(DocumentSnapshot doc) {
    return Photo(
      photoID: doc.id,
      photoType: doc.get('photoType') as PhotoType,
      senderID: doc.get('senderID') as String,
      description: doc.get('description') as String,
      likes: doc.get('likes'),
      time: doc.get('time') as Timestamp,
      imageUrl: doc.get('imageUrl') as String,
    );
  }
}
