import 'package:vybrnt_mvp/features/activity/domain/activity.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';

abstract class IPushNotificationService {
  Future initialize();
  void serializeAndNavigate(Activity activity);
  Future scheduleEventReminder(Event event);
  //Future<dynamic> myBackgroundMessageHandler(Map<String, dynamic> message);
}
