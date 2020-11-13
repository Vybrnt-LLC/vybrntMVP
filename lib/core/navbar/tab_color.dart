import 'package:flutter/material.dart';

class TabColor with ChangeNotifier {
  Color _color = Colors.black;
  Color get color => _color;

  set color(Color value) {
    _color = value;
    notifyListeners();
  }
}
