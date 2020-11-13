import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument(String currentUserID) async {
    return FirebaseFirestore.instance.collection('users').doc(currentUserID);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get postCollection => collection('posts');
}
