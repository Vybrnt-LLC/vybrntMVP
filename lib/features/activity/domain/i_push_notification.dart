import 'package:vybrnt_mvp/features/activity/domain/activity.dart';

abstract class IPushNotificationService {
  Future initialize();
  void serializeAndNavigate(Activity activity);
  //Future<dynamic> myBackgroundMessageHandler(Map<String, dynamic> message);
}
