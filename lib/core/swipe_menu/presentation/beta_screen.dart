import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/controllers/simple_hidden_drawer_controller.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:vybrnt_mvp/socicon_icons.dart';

class BetaScreen extends StatelessWidget {
  Widget _buildList() => ListView(
        children: [
          _tile('Provide Feedback', 'https://forms.gle/cS3LFQbC8ZyMgpxL9',
              Icons.feedback),
          _tile(
              'Bug Report', 'https://forms.gle/ez2fA4DxdBKdPkqP9', Icons.error),
          Divider(),
          _tile('Website', 'https://www.vybrntapp.com', Icons.web),
          _tile('Instagram', 'https://www.instagram.com/vybrntapp/',
              Socicon.instagram),
          Divider(),
          _tile('Terms of Use', 'https://www.vybrntapp.com/terms-of-use',
              Icons.account_box),
          _tile('Privacy Policy', 'https://www.vybrntapp.com/privacy-policy',
              Icons.lock),
        ],
      );

  ListTile _tile(
    String title,
    String url,
    IconData icon,
  ) =>
      ListTile(
        onTap: () => launch(url),
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              SimpleHiddenDrawerController.of(context).toggle();
            }),
        title: Text('REFERENCES',
            style: GoogleFonts.getFont('Barlow Condensed',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 30)
            // Center(
            //   child: Image.asset('assets/vybrnt_title_clear.png',
            //       width: 200, fit: BoxFit.cover),
            // )
            ),
      ),
      body: _buildList(),
    );
  }
}
