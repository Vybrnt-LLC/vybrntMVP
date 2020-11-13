// import 'dart:ui';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:vybrnt_mvp/features/organization/domain/models/emember.dart';
// import 'package:vybrnt_mvp/features/organization/domain/models/faq.dart';

// class Organization {
//   // add an ID for the owner of the Organization
//   final String orgID;
//   final String name;
//   final String abbv;
//   final String profileImageUrl;
//   final String bannerImageUrl;
//   final List<String> tags;
//   final List<Image> images;
//   final List<String> followers;
//   final List<String> postIDs;
//   final String officeLocation;
//   final String email;
//   final String bio;
//   final String missionStatement;
//   final List<FAQ> faqs;
//   final List<String> eventIDs;
//   final List<EMember> eboard;
//   final List<List<String>> groupIDs;
//   final List<List<String>> channelIDs;
//   final String primaryColor;
//   final String secondaryColor;
//   final bool isToggled;

//   Organization(
//       {this.isToggled,
//       this.primaryColor,
//       this.secondaryColor,
//       this.abbv,
//       this.bannerImageUrl,
//       this.bio,
//       this.channelIDs,
//       this.eboard,
//       this.eventIDs,
//       this.email,
//       this.faqs,
//       this.followers,
//       this.groupIDs,
//       this.images,
//       this.missionStatement,
//       this.name,
//       this.officeLocation,
//       this.orgID,
//       this.postIDs,
//       this.profileImageUrl,
//       this.tags});

//   factory Organization.fromDoc(DocumentSnapshot doc) {
//     return Organization(
//       orgID: doc.documentID,
//       name: doc['name'] ?? '',
//       bannerImageUrl: doc['bannerImageUrl'] ?? '',
//       abbv: doc['abbv'] ?? '',
//       profileImageUrl: doc['profileImageUrl'] ?? '',
//       email: doc['email'] ?? '',
//       bio: doc['bio'] ?? '',
//       officeLocation: doc['officeLocation'],
//       missionStatement: doc['missionStatement'],
//       primaryColor: doc['primaryColor'],
//       secondaryColor: doc['secondaryColor'],
//       isToggled: doc['isToggled'],
//     );
//   }
// }
