import 'package:firebase_analytics/observer.dart';
import 'package:meta/meta.dart';

abstract class IAnalyticsService {
  FirebaseAnalyticsObserver getAnalyticsObserver();
  Future setUserProperties({@required String userID});
  Future logLogin();
  Future logSignUp();
  Future logPostCreated({bool hasImage});
  Future logEventCreated({bool hasImage});
  Future setCurrentScreen(String screenName);
}
