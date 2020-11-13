import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';

class UserData extends ChangeNotifier {
  String currentUserID;

  UserData({this.currentUserID});
}
