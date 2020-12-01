import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/features/activity/repository/analytics_service.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn(
        scopes: [
          'email',
        ],
        hostedDomain: "",
        clientId: "",
      );
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
  @lazySingleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging();
  @lazySingleton
  NavigationService get navigationService => NavigationService();
  @lazySingleton
  FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics();
  @lazySingleton
  AnalyticsService get analyticsService => AnalyticsService();
}
