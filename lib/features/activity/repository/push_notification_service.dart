import 'dart:convert';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:vybrnt_mvp/core/auth/firestore_helpers.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/activity/domain/activity.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_push_notification.dart';

import 'activity_dtos.dart';

@LazySingleton(as: IPushNotificationService)
class PushNotificationService implements IPushNotificationService {
  FirebaseMessaging firebaseMessaging;
  FirebaseFirestore firestore;
  NavigationService navigationService;
  bool _initialized = false;

  PushNotificationService(
      {this.firebaseMessaging, this.navigationService, this.firestore});

  @override
  Future initialize() async {
    if (!_initialized) {
      String currentUserID = await firestore.currentUserID();

      if (Platform.isIOS) getiOSPermission();

      firebaseMessaging.getToken().then((token) {
        print("Firebase Messaging Token: $token\n");
        //if (Platform.isAndroid) {
        usersRef
            .doc(currentUserID)
            .set({"androidNotificationToken": token}, SetOptions(merge: true));
        // }
      });

      firebaseMessaging.configure(
        onLaunch: (Map<String, dynamic> message) async {
          //TODO: Push Notification
          print("on launch: $message\n");
          final activity = _convertMessageToActivity(message);
          serializeAndNavigate(activity);
          // final String recipientID = message['data']['recipient'];
          // final String body = message['notification']['body'];
          // serializeAndNavigate(message);
          // if (recipientID == currentUserID) {
          //   print('Notification shown');
          // }
        },
        // onBackgroundMessage:
        //     myBackgroundMessageHandler, //TODO: Fix the background Handler
        onResume: (Map<String, dynamic> message) async {
          //TODO: Push Notification
          print("on resume: $message\n");
          final activity = _convertMessageToActivity(message);
          serializeAndNavigate(activity);
          // final String recipientID = message['data']['recipient'];
          // final String body = message['notification']['body'];
          // serializeAndNavigate(message);
          // if (recipientID == currentUserID) {
          //   print('Notification shown');
          // }
        },
        onMessage: (Map<String, dynamic> message) async {
          //TODO: In-App Notification
          print("on message: $message\n");
          //final String recipientID = message['data']['recipient'];
          final String body = message['notification']['body'];
          final activity = _convertMessageToActivity(message);
          _showInAppNotification(body, activity);
          // serializeAndNavigate(message);
          // if (recipientID == currentUserID) {
          //   print('Notification shown');
          // }
        },
      );
      _initialized = true;
    }
  }

  Future<dynamic> myBackgroundMessageHandler(
      Map<String, dynamic> message) async {
    if (message.containsKey('data')) {
      // Handle data message
      final dynamic data = message['data'];
    }

    if (message.containsKey('notification')) {
      // Handle notification message
      final dynamic notification = message['notification'];
    }

    // Or do other work.
  }

  getiOSPermission() {
    firebaseMessaging.requestNotificationPermissions(
        IosNotificationSettings(alert: true, badge: true, sound: true));
    firebaseMessaging.onIosSettingsRegistered.listen((settings) {
      print("Settings registered: $settings");
    });
  }

  @override
  Future<dynamic> serializeAndNavigate(Activity activity) {
    String type = activity.isOrg ? 'org' : 'user';
    String typeID = activity.isOrg ? activity.orgID : activity.userID;
    switch (activity.type) {
      case 'likeUser':
        {
          return navigationService.navigateTo(Routes.postDetail,
              arguments: PostScreenArguments(
                  postID: activity.postID, type: type, typeID: typeID));
        }
        break;
      case 'repostUser':
        {
          return navigationService.navigateTo(Routes.postDetail,
              arguments: PostScreenArguments(
                  postID: activity.postID, type: type, typeID: typeID));
        }
        break;
      case 'commentUser':
        {
          return navigationService.navigateTo(Routes.postDetail,
              arguments: PostScreenArguments(
                  postID: activity.postID, type: type, typeID: typeID));
        }
        break;
      case 'likeOrg':
        {
          return navigationService.navigateTo(Routes.postDetail,
              arguments: PostScreenArguments(
                  postID: activity.postID, type: type, typeID: typeID));
        }
        break;
      case 'repostOrg':
        {
          return navigationService.navigateTo(Routes.postDetail,
              arguments: PostScreenArguments(
                  postID: activity.postID, type: type, typeID: typeID));
        }
        break;
      case 'commentOrg':
        {
          return navigationService.navigateTo(Routes.postDetail,
              arguments: PostScreenArguments(
                  postID: activity.postID, type: type, typeID: typeID));
        }
        break;
      case 'followUser':
        {
          return navigationService.navigateTo(Routes.user,
              arguments: UserScreenArguments(userID: activity.userID));
        }
        break;
      case 'followOrg':
        {
          return navigationService.navigateTo(Routes.org,
              arguments: OrgScreenArguments(orgID: activity.orgID));
        }
        break;
      case 'post':
        {
          return navigationService.navigateTo(Routes.postDetail,
              arguments: PostScreenArguments(
                  postID: activity.postID, type: type, typeID: typeID));
        }
        break;
      case 'event':
        {
          return navigationService.navigateTo(Routes.eventDetail,
              arguments: EventScreenArguments(
                  eventID: activity.eventID, type: type, typeID: typeID));
        }
        break;
      case 'eventStart':
        {
          return navigationService.navigateTo(Routes.eventDetail,
              arguments: EventScreenArguments(
                  eventID: activity.eventID, type: type, typeID: typeID));
        }
        break;
      case 'admin':
        {
          return navigationService.navigateTo(Routes.org,
              arguments: OrgScreenArguments(orgID: activity.orgID));
        }
        break;
    }
  }

  void _showInAppNotification(String body, Activity activity) {
    showSimpleNotification(
      // Flushbar(
      //   //padding: const EdgeInsets.all(0),
      //   flushbarPosition: FlushbarPosition.TOP,
      //   flushbarStyle: FlushbarStyle.FLOATING,
      //   reverseAnimationCurve: Curves.decelerate,
      //   forwardAnimationCurve: Curves.elasticOut,
      //   backgroundColor: Colors.transparent,
      //   // boxShadows: [
      //   //   BoxShadow(
      //   //       color: Colors.blue[800],
      //   //       offset: Offset(0.0, 2.0),
      //   //       blurRadius: 3.0)
      //   // ],
      //   // backgroundGradient:
      //   //     LinearGradient(colors: [Colors.blueGrey, Colors.black]),
      //   isDismissible: false,
      //   //duration: Duration(minutes: 1),
      //   icon: Icon(
      //     Icons.info_outline,
      //     color: Colors.white,
      //   ),
      //   //showProgressIndicator: true,
      //   progressIndicatorBackgroundColor: Colors.blueGrey,
      //   messageText: Text(
      //     body,
      //     style: TextStyle(
      //       fontSize: 18.0,
      //       color: Colors.white,
      //     ),
      //   ),
      //   onTap: (_) {
      //     serializeAndNavigate(activity);
      //   },
      // ),
      ListTile(
          leading: Icon(
            Icons.info_outline,
            color: Colors.white,
          ),
          title: Text(body, style: TextStyle(color: Colors.white)),
          onTap: () => serializeAndNavigate(activity)),
      duration: Duration(seconds: 5),
    );
  }

  Activity _convertMessageToActivity(Map<String, dynamic> message) {
    final String activityString = message['data']['activity'];
    dynamic activityJSON = jsonDecode(activityString);
    final activity = ActivityDTO.fromJson(activityJSON)
        .copyWith(
            activityID: UniqueId().getOrCrash(), timeStamp: Timestamp.now())
        .toDomain();
    return activity;
  }
}
