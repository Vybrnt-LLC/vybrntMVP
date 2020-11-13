import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static final String id = "about_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.teal,
        child: Center(
          child: Text("About Vybrnt Screen",
              style: TextStyle(color: Colors.white, fontSize: 30.0)),
        ),
      ),
    );
  }
}
