
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class MyPageView extends StatefulWidget {
  final List<Widget> screens;

  final int initialScreen; 

  MyPageView({this.screens, this.initialScreen});
  @override
  _MyPageViewState createState() => _MyPageViewState(this.screens, this.initialScreen);
}
  var currentPageValue = 0.0;

class _MyPageViewState extends State<StatefulWidget> {

  final List<Widget> screens;

  final int initialScreen;
  
  _MyPageViewState(this.screens, this.initialScreen);

  PageController _controller;

  @override
  void initState(){
    super.initState();
    _controller = PageController(initialPage: initialScreen);
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

 
  @override
  Widget build(BuildContext context) {
    _controller.addListener((){
      setState((){
        currentPageValue = _controller.page;
      });
    });
    return Container(
      child: PageView.builder(
        itemBuilder: (context, position)  {
          return screens[position];
        },
        itemCount: screens.length, 
        controller: _controller, 
        pageSnapping: true,
        dragStartBehavior: DragStartBehavior.down,
      )
    );
  }

  
}

