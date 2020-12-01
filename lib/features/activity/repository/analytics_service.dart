import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_analytics_service.dart';

@LazySingleton(as: IAnalyticsService)
class AnalyticsService implements IAnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics();

  @override
  FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  //User Properties tell us what the user is
  // property to indicate if its a pro paying member
  //property that might tell us it's a regular poster, etc

  @override
  Future setUserProperties({@required String userID, String userRole}) async {
    await _analytics.setUserId(userID);
    await _analytics.setUserProperty(name: 'user_role', value: userRole);
  }

  @override
  Future logLogin() async {
    await _analytics.logLogin(loginMethod: 'email');
  }

  @override
  Future logSignUp() async {
    await _analytics.logSignUp(signUpMethod: 'email');
  }

  @override
  Future logPostCreated({bool hasImage}) async {
    await _analytics
        .logEvent(name: 'create_post', parameters: {'has_image': hasImage});
  }

  @override
  Future logEventCreated({bool hasImage}) async {
    await _analytics
        .logEvent(name: 'create_event', parameters: {'has_image': hasImage});
  }
}
