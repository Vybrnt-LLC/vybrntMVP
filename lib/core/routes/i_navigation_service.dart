abstract class INavigationService {
  Future navigateTo(String routeName, {dynamic arguments});

  void goBack();
}
