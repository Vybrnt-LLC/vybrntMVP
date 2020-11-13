// import 'dart:core';
// import 'dart:ui';

// import 'package:cloud_firestore/cloud_firestore.dart';

// import '../../../organization/domain/models/emember_model.dart';
// enum UserStudent { underStudent, gradStudent, non_student}
// enum UserStaff { faculty, staff, neither}

// class User {
//   final String userID;
//   final String name;
//   final String userName;
//   final String profileImageUrl;
//   final String bannerImageUrl;
//   final String email;
//   final String bio;
//   final UserStudent userStudent;
//   final UserStaff userStaff;
//   final List<String> skills;
//   final List<String> followedOrganizations;
//   final List<String> authOrganizations;
//   final List<String> followedUsers;
//   final List<String> followingUsers;
//   final List<String> postIDs;
//   final List<String> ebPositions;
//   final String major;
//   final String college;
//   final Color primaryColor;
//   final Color secondaryColor;
//   final List<String> leadershipTitles;


//   User({this.ebPositions, this.userStudent, this.userStaff, 
//     this.userName,
//     this.bannerImageUrl,
//     this.skills,
//     this.followedOrganizations,
//     this.authOrganizations,
//     this.followedUsers,
//     this.followingUsers,
//     this.postIDs,
//     this.major,
//     this.college,
//     this.primaryColor,
//     this.secondaryColor,
//     this.leadershipTitles,
//     this.userID,
//     this.name,
//     this.profileImageUrl,
//     this.email,
//     this.bio,
//   });

//   factory User.fromDoc(DocumentSnapshot doc) {
//     return User(
//       userID: doc.documentID,
//       name: doc['name'] ?? '',
//       bannerImageUrl: doc['bannerImageUrl']?? '',
//       userName: doc['userName']?? '',
//       profileImageUrl: doc['profileImageUrl'] ?? '',
//       email: doc['email'] ?? '',
//       bio: doc['bio'] ?? '',
//       userStaff: doc['userStaff'],
//       userStudent: doc['userStudent'],
//       ebPositions: doc['ebPositions'],
//       major: doc['major']?? '',
//       primaryColor: doc['primaryColor'],
//       secondaryColor: doc['secondaryColor'],
//     );
//   }
// }
