import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/core/swipe_menu/widgets/simple_hidden_drawer_provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        SimpleHiddenDrawerProvider.of(context).toggle();
                      })
      ),
          body: Container(
        color: Colors.green,
        child: Center(
          child: Text("Settings Screen",
              style: TextStyle(color: Colors.white, fontSize: 30.0)),
        ),
      ),
    );
  }
}
