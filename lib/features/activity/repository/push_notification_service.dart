import 'dart:convert';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:vybrnt_mvp/core/auth/firestore_helpers.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/activity/domain/activity.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_push_notification.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'activity_dtos.dart';

@LazySingleton(as: IPushNotificationService)
class PushNotificationService implements IPushNotificationService {
  FirebaseMessaging firebaseMessaging;
  FirebaseFirestore firestore;
  NavigationService navigationService;
  bool _initialized = false;

  PushNotificationService(
      {this.firebaseMessaging, this.navigationService, this.firestore});

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  Future initialize() async {
    if (!_initialized) {
      await _configureLocalTimeZone();
      await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();
// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
      const AndroidInitializationSettings initializationSettingsAndroid =
          AndroidInitializationSettings('vybrnt');
      final IOSInitializationSettings initializationSettingsIOS =
          IOSInitializationSettings(
              onDidReceiveLocalNotification: onDidReceiveLocalNotification);
      const MacOSInitializationSettings initializationSettingsMacOS =
          MacOSInitializationSettings();
      final InitializationSettings initializationSettings =
          InitializationSettings(
              android: initializationSettingsAndroid,
              iOS: initializationSettingsIOS,
              macOS: initializationSettingsMacOS);
      await flutterLocalNotificationsPlugin.initialize(initializationSettings,
          onSelectNotification: selectNotification);

      final String currentUserID = await firestore.currentUserID();

      if (Platform.isIOS) await getiOSPermission();

      firebaseMessaging.getToken().then((token) {
        debugPrint("Firebase Messaging Token: $token\n");
        //if (Platform.isAndroid) {
        usersRef
            .doc(currentUserID)
            .set({"androidNotificationToken": token}, SetOptions(merge: true));
        // }
      });

      firebaseMessaging.configure(
        onLaunch: (Map<String, dynamic> message) async {
          debugPrint("on launch: $message\n");
          final activity = _convertMessageToActivity(message);
          serializeAndNavigate(activity);
          // final String recipientID = message['data']['recipient'];
          // final String body = message['notification']['body'];
          // serializeAndNavigate(message);
          // if (recipientID == currentUserID) {
          //   print('Notification shown');
          // }
        },
        onBackgroundMessage: myBackgroundMessageHandler,
        onResume: (Map<String, dynamic> message) async {
          debugPrint("on resume: $message\n");
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
          debugPrint("on message: $message\n");
          //final String recipientID = message['data']['recipient'];
          final body = message['notification']['body'].toString();
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

  @override
  Future scheduleEventReminder(Event event) async {
    final typeID = event.isOrg ? event.orgID : event.senderID;
    final eventID = event.eventID.getOrCrash();
    final type = event.isOrg ? 'org' : 'user';

    final eventName = event.eventName;
    final startTime = DateFormat.jm().format(event.startTime);
    final notificationTime =
        event.startTime.subtract(const Duration(minutes: 15));
    final payload =
        'https://vybrnt.com/eventStart?type=$type&typeID=$typeID&eventID=$eventID';
    DocumentSnapshot doc;
    String creatorName;
    if (event.isOrg) {
      doc = await organizationsRef.doc(event.orgID).get();
      creatorName = doc.get('name').toString();
    } else {
      doc = await usersRef.doc(event.senderID).get();
      creatorName = doc.get('profileName').toString();
    }
    await flutterLocalNotificationsPlugin.zonedSchedule(
        0,
        '$eventName is starting at $startTime',
        'Organized by $creatorName',
        tz.TZDateTime(
            tz.local,
            notificationTime.year,
            notificationTime.month,
            notificationTime.day,
            notificationTime.hour,
            notificationTime.minute), //now(tz.local).add(
        //const Duration(seconds: 5)), // from(notificationTime, location),
        const NotificationDetails(
            android: AndroidNotificationDetails('Channel ID', 'Upcoming Event',
                'Notifies users of new events')),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        payload: payload);
  }

  Future onDidReceiveLocalNotification(
      int id, String title, String body, String payload) async {
    // display a dialog with the notification details, tap ok to go to another page
    final payloadUri = Uri.parse(payload);
    final type = payloadUri.queryParameters['type'];
    final typeID = payloadUri.queryParameters['typeID'];
    final eventID = payloadUri.queryParameters['eventID'];
    showSimpleNotification(
      ListTile(
          leading: const Icon(
            Icons.info_outline,
            color: Colors.white,
          ),
          title: Text(title, style: const TextStyle(color: Colors.white)),
          subtitle: Text(body, style: const TextStyle(color: Colors.white)),
          onTap: () => navigationService.navigateTo(Routes.eventDetail,
              arguments: EventScreenArguments(
                  eventID: eventID, type: type, typeID: typeID))),
      duration: const Duration(seconds: 5),
    );
  }

  Future selectNotification(String payload) async {
    if (payload != null) {
      debugPrint('notification payload: $payload');
    }
    final payloadUri = Uri.parse(payload);
    final type = payloadUri.queryParameters['type'];
    final typeID = payloadUri.queryParameters['typeID'];
    final eventID = payloadUri.queryParameters['eventID'];
    Future.delayed(const Duration(seconds: 3), () async {
      await navigationService.navigateTo(Routes.eventDetail,
          arguments: EventScreenArguments(
              eventID: eventID, type: type, typeID: typeID));
    });
  }

  Future<dynamic> myBackgroundMessageHandler(
      Map<String, dynamic> message) async {
    final activity = _convertMessageToActivity(message);
    serializeAndNavigate(activity);
  }

  Future<void> getiOSPermission() async {
    firebaseMessaging.requestNotificationPermissions();
    firebaseMessaging.onIosSettingsRegistered.listen((settings) {
      debugPrint("Settings registered: $settings");
    });
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            MacOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  @override
  Future<dynamic> serializeAndNavigate(Activity activity) {
    switch (activity.activityType) {
      case ActivityType.like:
        {
          return navigationService.navigateTo(Routes.postDetail,
              arguments: PostScreenArguments(
                  postID: activity.objectID,
                  type: OwnerTypeHelper.stringOf(activity.ownerType),
                  typeID: activity.ownerID));
        }
        break;
      case ActivityType.repost:
        {
          return navigationService.navigateTo(Routes.postDetail,
              arguments: PostScreenArguments(
                  postID: activity.objectID,
                  type: OwnerTypeHelper.stringOf(activity.ownerType),
                  typeID: activity.ownerID));
        }
        break;
      case ActivityType.comment:
        {
          return navigationService.navigateTo(Routes.postDetail,
              arguments: PostScreenArguments(
                  postID: activity.objectID,
                  type: OwnerTypeHelper.stringOf(activity.ownerType),
                  typeID: activity.ownerID));
        }
        break;
      case ActivityType.follow:
        {
          return navigationService.navigateTo(Routes.user,
              arguments: UserScreenArguments(userID: activity.objectID));
        }
        break;
      case ActivityType.post:
        {
          return navigationService.navigateTo(Routes.postDetail,
              arguments: PostScreenArguments(
                  postID: activity.objectID,
                  type: OwnerTypeHelper.stringOf(activity.ownerType),
                  typeID: activity.ownerID));
        }
        break;
      case ActivityType.event:
        {
          return navigationService.navigateTo(Routes.eventDetail,
              arguments: EventScreenArguments(
                  eventID: activity.objectID,
                  type: OwnerTypeHelper.stringOf(activity.ownerType),
                  typeID: activity.ownerID));
        }
        break;
      case ActivityType.admin:
        {
          return navigationService.navigateTo(Routes.org,
              arguments: OrgScreenArguments(orgID: activity.objectID));
        }
        break;
      default:
        return navigationService.navigateTo(Routes.user,
            arguments: UserScreenArguments(userID: activity.objectID));
    }
  }

  void _showInAppNotification(String body, Activity activity) {
    showSimpleNotification(
      ListTile(
          leading: const Icon(
            Icons.info_outline,
            color: Colors.white,
          ),
          title: Text(body, style: const TextStyle(color: Colors.white)),
          onTap: () => serializeAndNavigate(activity)),
      duration: const Duration(seconds: 5),
    );
  }

  Activity _convertMessageToActivity(Map<String, dynamic> message) {
    String activityString;
    if (Platform.isAndroid) {
      activityString = message['data']['activity'].toString();
    }
    if (Platform.isIOS) {
      activityString = message['activity'].toString();
    }

    final activityJSON = jsonDecode(activityString) as Map<String, dynamic>;
    final activity = ActivityDTO.fromJson(activityJSON)
        .copyWith(
            activityID: UniqueId().getOrCrash(), timeStamp: DateTime.now())
        .toDomain();
    return activity;
  }
}

Future<void> _configureLocalTimeZone() async {
  tz.initializeTimeZones();
  final String timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
  tz.setLocalLocation(tz.getLocation(timeZoneName));
}
