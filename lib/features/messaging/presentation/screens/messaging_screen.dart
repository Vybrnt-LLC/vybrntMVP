import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart' as route;

class MessagingScreen extends StatelessWidget {
  static final String id = '/messaging_screen';
  final ValueChanged<int> onPush;
  final ValueChanged<int> onPushSearch;
  //final SimpleHiddenDrawerBloc bloc;

  MessagingScreen({
    this.onPush,
    this.onPushSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          ],
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                //ExtendedNavigator.of(context);
                context.navigator.pop();
              }),
          title: Center(child: Text('Messaging'))),
      backgroundColor: Colors.green[100],
      body: Container(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Text('Messaging Screen', style: TextStyle(fontSize: 50.0)),
              FlatButton.icon(
                icon: Icon(Icons.person),
                onPressed: () async {
                  //ExtendedNavigator.of(context);
                  context.navigator.push(route.Routes.chat);
                },
                label: Text('logout'),
              ),
              FlatButton.icon(
                icon: Icon(Icons.arrow_forward),
                //onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                //builder: (_) => MessagingScreen())),
                onPressed: () => onPush(9),
                label: Text('navigate to new page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
