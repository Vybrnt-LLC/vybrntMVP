import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'package:vybrnt_mvp/core/routes/i_navigation_service.dart';

@LazySingleton(as: INavigationService)
class NavigationService implements INavigationService {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  @override
  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }

  @override
  void goBack() {
    return navigatorKey.currentState.pop();
  }
}
