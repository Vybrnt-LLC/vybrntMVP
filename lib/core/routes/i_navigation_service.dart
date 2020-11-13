abstract class INavigationService {
  Future<dynamic> navigateTo(String routeName, {dynamic arguments});

  void goBack();
}
