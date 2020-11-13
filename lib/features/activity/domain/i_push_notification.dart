abstract class IPushNotificationService {
  Future initialize();
  void serializeAndNavigate(Map<String, dynamic> message);
  //Future<dynamic> myBackgroundMessageHandler(Map<String, dynamic> message);
}
