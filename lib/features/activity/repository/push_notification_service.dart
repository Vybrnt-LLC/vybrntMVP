import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/firestore_helpers.dart';
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_push_notification.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart' as route;

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
        if (Platform.isAndroid) {
          usersRef.doc(currentUserID).set(
              {"androidNotificationToken": token}, SetOptions(merge: true));
        }
      });

      firebaseMessaging.configure(
        onLaunch: (Map<String, dynamic> message) async {
          print("on launch: $message\n");
          final String recipientID = message['data']['recipient'];
          final String body = message['notification']['body'];
          serializeAndNavigate(message);
          if (recipientID == currentUserID) {
            print('Notification shown');
          }
        },
        //onBackgroundMessage: myBackgroundMessageHandler,
        onResume: (Map<String, dynamic> message) async {
          print("on resume: $message\n");
          final String recipientID = message['data']['recipient'];
          final String body = message['notification']['body'];
          serializeAndNavigate(message);
          if (recipientID == currentUserID) {
            print('Notification shown');
          }
        },
        onMessage: (Map<String, dynamic> message) async {
          print("on message: $message\n");
          final String recipientID = message['data']['recipient'];
          final String body = message['notification']['body'];
          serializeAndNavigate(message);
          if (recipientID == currentUserID) {
            print('Notification shown');
          }
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
  void serializeAndNavigate(Map<String, dynamic> message) {
    var notificationData = message['data'];
    var type = notificationData['type'];

    if (type != null) {
      // // Navigate to the create post view
      if (type == 'likeUser') {
        navigationService.navigateTo(route.Routes.postDetail);
      }
      // // If there's no view it'll just open the app on the first view
    }
  }
}
