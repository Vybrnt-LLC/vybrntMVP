import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization_model.dart';
import 'package:vybrnt_mvp/features/user/domain/models/photo_model.dart';
import 'package:vybrnt_mvp/features/user/domain/models/post_model.dart';

class OrganizationDatabaseService {
  final String id;
  OrganizationDatabaseService({this.id});

  // static void updateOrganization(Organization org) {
  //   organizationsRef.document(org.orgID).updateData({
  //     'name': org.name,
  //     'abbv': org.abbv,
  //     'profileImageUrl': org.profileImageUrl,
  //     'bannerImageUrl': org.bannerImageUrl,
  //     'bio': org.bio,
  //     'email': org.email,
  //     'missionStatement': org.missionStatement,
  //     'officeLocation': org.officeLocation,
  //     'primaryColor': org.primaryColor,
  //     'secondaryColor': org.secondaryColor,
  //     'isToggled': org.isToggled,
  //   });
  // }

  // static void toggleOrganization(String orgID, bool isToggled) {
  //   organizationsRef.document(orgID).updateData({
  //     'isToggled': isToggled,
  //   });
  // }

  // static void updateUserColors(User user) {
  //   usersRef.document(user.userID).updateData({
  //     'primaryColor': user.primaryColor,
  //   });
  // }

  static Future<QuerySnapshot> searchOrganizations(String name) {
    Future<QuerySnapshot> users =
        organizationsRef.where('name', isGreaterThanOrEqualTo: name).get();
    return users;
  }

  // static void createPost(Post post) {
  //   postsRef.document(post.senderID).collection('orgPosts').add({
  //     'header': post.header,
  //     'description': post.description,
  //     'name': post.name,
  //     'senderID': post.senderID,
  //     'time': post.time,
  //     'likes': post.likes,
  //     'likeCount': post.likeCount,
  //     'imageUrl': post.imageUrl
  //   });
  // }

  static void createPhoto(Photo photo, String orgID) {
    photosRef.doc(orgID).collection('orgPhotos').add({
      'description': photo.description,
      'senderID': photo.senderID,
      'time': photo.time,
      'likes': photo.likes,
      'imageUrl': photo.imageUrl
    });
  }

  // static Future<void> followOrganization(
  //     {String currentUserID, String orgID}) async {
  //   // Add organization to current user's following collection
  //   final org = await organizationsRef.document(orgID).get();
  //   followingRef
  //       .document(currentUserID)
  //       .collection('orgFollowing')
  //       .document(orgID)
  //       .setData({
  //     'name': org['name'],
  //     'abbv': org['abbv'],
  //     'profileImageUrl': org['profileImageUrl'],
  //     'isToggled': true,
  //   });
  //   // Add current user to organization's followers collection
  //   followersRef
  //       .document(orgID)
  //       .collection('orgFollowers')
  //       .document(currentUserID)
  //       .setData({
  //     'isToggled': org['isToggled'],
  //   });
  // }

  // static void unfollowUser({String currentUserID, String orgID}) {
  //   // Remove organization from current user's following collection
  //   followingRef
  //       .document(currentUserID)
  //       .collection('orgFollowing')
  //       .document(orgID)
  //       .get()
  //       .then((doc) {
  //     if (doc.exists) {
  //       doc.reference.delete();
  //     }
  //   });
  //   // Remove current user from organization's followers collection
  //   followersRef
  //       .document(currentUserID)
  //       .collection('orgFollowers')
  //       .document(currentUserID)
  //       .get()
  //       .then((doc) {
  //     if (doc.exists) {
  //       doc.reference.delete();
  //     }
  //   });
  // }

  // static Future<bool> isFollowingOrganization(
  //     {String currentUserID, String orgID}) async {
  //   DocumentSnapshot followingDoc = await followersRef
  //       .document(orgID)
  //       .collection('orgFollowers')
  //       .document(currentUserID)
  //       .get();
  //   return followingDoc.exists;
  // }

  // // static Future<int> numFollowing(String orgID) async {
  // //   QuerySnapshot followingSnapshot = await followingRef
  // //       .document(orgID)
  // //       .collection('orgFollowing')
  // //       .getDocuments();
  // //   return followingSnapshot.documents.length;
  // // }

  // static Future<int> numFollowers(String orgID) async {
  //   QuerySnapshot followersSnapshot = await followersRef
  //       .document(orgID)
  //       .collection('orgFollowers')
  //       .getDocuments();
  //   return followersSnapshot.documents.length;
  // }

  // // static Future<List<Post>> getFeedPosts(String userID) async {
  // //   // QuerySnapshot feedSnapshot = await feedsRef
  // //   //     .document(userId)
  // //   //     .collection('userFeed')
  // //   //     .orderBy('timestamp', descending: true)
  // //   //     .getDocuments();
  // //   // List<Post> posts =
  // //   //     feedSnapshot.documents.map((doc) => Post.fromDoc(doc)).toList();

  // //   QuerySnapshot testSnapshot = await postsRef
  // //       .document(userID)
  // //       .collection('usersPosts')
  // //       .orderBy('time', descending: true)
  // //       .getDocuments();
  // //   List<Post> posts =
  // //       testSnapshot.documents.map((doc) => Post.fromDoc(doc)).toList();
  // //   return posts;
  // // }

  // static Future<Organization> getOrgWithID(String orgID) async {
  //   DocumentSnapshot orgDocSnapshot =
  //       await organizationsRef.document(orgID).get();
  //   if (orgDocSnapshot.exists) {
  //     return Organization.fromDoc(orgDocSnapshot);
  //   }
  //   return Organization();
  // }

  // static Future<List<Organization>> getOrgs() async {
  //   QuerySnapshot orgDocSnapshot = await organizationsRef.getDocuments();

  //   List<Organization> orgs = orgDocSnapshot.documents
  //       .map((doc) => Organization.fromDoc(doc))
  //       .toList();
  //   return orgs;
  // }

  // static Future<List<Post>> getOrgPosts(String orgID) async {
  //   QuerySnapshot orgPostsSnapshot = await postsRef
  //       .document(orgID)
  //       .collection('orgPosts')
  //       .orderBy('time', descending: true)
  //       .getDocuments();
  //   List<Post> posts =
  //       orgPostsSnapshot.documents.map((doc) => Post.fromDoc(doc)).toList();
  //   return posts;
  // }

  static Future<List<Photo>> getOrgPhotos(String orgID) async {
    QuerySnapshot orgPhotosSnapshot = await photosRef
        .doc(orgID)
        .collection('orgPhotos')
        .orderBy('time', descending: true)
        .get();
    List<Photo> photos =
        orgPhotosSnapshot.docs.map((doc) => Photo.fromDoc(doc)).toList();
    return photos;
  }

  // static void likeOrgPost({String currentUserID, Post post}) {
  //   DocumentReference postRef = postsRef
  //       .document(post.senderID)
  //       .collection('orgPosts')
  //       .document(post.postID);
  //   postRef.get().then((doc) {
  //     int likeCount = doc.data['likeCount'];
  //     postRef.updateData({'likeCount': likeCount + 1});
  //     likesRef
  //         .document(post.postID)
  //         .collection('postLikes')
  //         .document(currentUserID)
  //         .setData({});
  //   });
  // }

  // static void unlikeOrgPost({String currentUserID, Post post}) {
  //   DocumentReference postRef = postsRef
  //       .document(post.senderID)
  //       .collection('orgPosts')
  //       .document(post.postID);
  //   postRef.get().then((doc) {
  //     int likeCount = doc.data['likeCount'];
  //     postRef.updateData({'likeCount': likeCount - 1});
  //     likesRef
  //         .document(post.postID)
  //         .collection('postLikes')
  //         .document(currentUserID)
  //         .get()
  //         .then((doc) {
  //       if (doc.exists) {
  //         doc.reference.delete();
  //       }
  //     });
  //   });
  // }

  // // static void commentOnPost({String currentUserID, Post post, String comment}){
  // //   commentsRef.document(post.postID).collection('postComments').add({
  // //     'content': comment,
  // //     'senderID': currentUserID,
  // //     'time': Timestamp.fromDate(DateTime.now()),
  // //   });
  // //   addActivityItem(currentUserID: currentUserID, post: post, comment: comment);
  // // }

  // // static void addActivityItem(
  // //     {String currentUserID, Post post, String comment}) {
  // //   if (currentUserID != post.postID) {
  // //     activitiesRef.document(post.senderID).collection('userActivities').add({
  // //       'fromUserID': currentUserID,
  // //       'postID': post.postID,
  // //       'postImageUrl': post.imageUrl,
  // //       'comment': comment,
  // //       'time': Timestamp.fromDate(DateTime.now()),
  // //     });
  // //   }
  // // }

  // // static Future<List<Activity>> getActivities(String userID) async {
  // //   QuerySnapshot userActivitiesSnapshot = await activitiesRef
  // //       .document(userID)
  // //       .collection('userActivities')
  // //       .orderBy('time', descending: true)
  // //       .getDocuments();
  // //   List<Activity> activity = userActivitiesSnapshot.documents
  // //       .map((doc) => Activity.fromDoc(doc))
  // //       .toList();
  // //   return activity;
  // // }

  // static Future<Post> getOrgPost(String orgID, String postID) async {
  //   DocumentSnapshot postDocSnapshot = await postsRef
  //       .document(orgID)
  //       .collection('orgPosts')
  //       .document(postID)
  //       .get();
  //   return Post.fromDoc(postDocSnapshot);
  // }

  // // collection reference
  // // final CollectionReference brewCollection =
  // //     Firestore.instance.collection('brews');

  // // Future updateUser(User user) async {
  // //   return await brewCollection.document(id).setData({
  // //     'sugars': sugars,
  // //     'name': name,
  // //     'strength': strength,
  // //   });
  // // }

  // /*

  // // brew list from snapshot
  // List<Brew> _brewListFromSnapshot(QuerySnapshot snapshot) {
  //   return snapshot.documents.map((doc) {
  //     return Brew(
  //         name: doc.data['name'] ?? '',
  //         strength: doc.data['strength'] ?? 0,
  //         sugars: doc.data['sugars'] ?? '0');
  //   }).toList();
  // }

  // // userData from snapshot
  // UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
  //   return UserData(
  //       uid: uid,
  //       name: snapshot.data['name'],
  //       strength: snapshot.data['strength'],
  //       sugars: snapshot.data['sugars']);
  // }

  // // get brews stream
  // Stream<List<Brew>> get brews {
  //   return brewCollection.snapshots().map(_brewListFromSnapshot);
  // }

  // //get user doc stream
  // Stream<UserData> get userData {
  //   return brewCollection.document(uid).snapshots().map(_userDataFromSnapshot);
  // }
  // */
}
