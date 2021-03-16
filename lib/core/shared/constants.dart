import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

final _firestore = FirebaseFirestore.instance;
final storageRef = FirebaseStorage.instance.ref();
final usersRef = _firestore.collection('users');
final postsRef = _firestore.collection('posts');
final eventsRef = _firestore.collection('events');
final photosRef = _firestore.collection('photos');
final followersRef = _firestore.collection('followers');
final followingRef = _firestore.collection('following');
final feedsRef = _firestore.collection('feeds');
final likesRef = _firestore.collection('likes');
final commentsRef = _firestore.collection('comments');
final activitiesRef = _firestore.collection('activities');
final organizationsRef = _firestore.collection('organizations');
final calendarOrgsRef = _firestore.collection('calendarOrgs');
final orgToUserCalendarRef = _firestore.collection('orgToUserCalendar');
final eventFeedRef = _firestore.collection('eventFeeds');
final communityEventsRef = _firestore.collection('communityEvents');
final categoriesRef = _firestore.collection('categories');
final faqsRef = _firestore.collection('faqs');
final eboardRef = _firestore.collection('eboard');
final repostsRef = _firestore.collection('reposts');
final bookmarksRef = _firestore.collection('bookmarks');
final userBookmarksRef = _firestore.collection('userBookmarks');
final blockedRef = _firestore.collection('blocked');
final reportsRef = _firestore.collection('reports');

Color stringToColor(String colorString) {
  int colorValue = int.parse(colorString, radix: 16);
  Color color = new Color(colorValue);
  return color;
}
