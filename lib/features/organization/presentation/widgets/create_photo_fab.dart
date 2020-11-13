import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:vybrnt_mvp/features/calendar/presentation/screens/create_event_screen.dart';
import 'package:vybrnt_mvp/features/posts/presentation/posts/create_posts/create_post_screen.dart';
import 'package:vybrnt_mvp/features/user/presentation/screens/create_photo_screen.dart';

const double _fabDimension = 56.0;

class CreatePhotoFAB extends StatefulWidget {
  final String orgID;
  final bool isOrg;

  const CreatePhotoFAB({Key key, this.orgID, this.isOrg}) : super(key: key);

  @override
  _CreatePhotoFABState createState() => _CreatePhotoFABState();
}

class _CreatePhotoFABState extends State<CreatePhotoFAB> {
  ContainerTransitionType _transitionType = ContainerTransitionType.fade;
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 7.0,
                  spreadRadius: 4.0,
                ),
              ],
              image: DecorationImage(
                  image: ExactAssetImage('assets/add.png'),
                  fit: BoxFit.fitWidth)),
          child: Icon(Icons.add)),
      //animatedIcon: AnimatedIcons.add_event,
      animatedIconTheme: IconThemeData(size: 22),
      backgroundColor: Color(0x00000000),
      curve: Curves.bounceIn,
      children: [
        // FAB 1
        SpeedDialChild(
            child: OpenContainer(
              transitionType: _transitionType,
              openBuilder: (BuildContext context, VoidCallback _) {
                return CreatePostScreen(editedPost: null);
              },
              closedElevation: 6.0,
              closedShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(_fabDimension / 2),
                ),
              ),
              closedColor: Theme.of(context).colorScheme.secondary,
              closedBuilder:
                  (BuildContext context, VoidCallback openContainer) {
                return SizedBox(
                  height: _fabDimension,
                  width: _fabDimension,
                  child: Center(
                    child: Icon(
                      Icons.create,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                );
              },
            ),
            backgroundColor: Color(0xFF801E48),
            // onTap: () => widget.onPush(0),
            label: 'Create a Post',
            labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 16.0),
            labelBackgroundColor: Color(0xFF801E48)),
        // FAB 2
        SpeedDialChild(
            child: OpenContainer(
              transitionType: _transitionType,
              openBuilder: (BuildContext context, VoidCallback _) {
                return CreateEventScreen(editedEvent: null);
              },
              closedElevation: 6.0,
              closedShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(_fabDimension / 2),
                ),
              ),
              closedColor: Theme.of(context).colorScheme.secondary,
              closedBuilder:
                  (BuildContext context, VoidCallback openContainer) {
                return SizedBox(
                  height: _fabDimension,
                  width: _fabDimension,
                  child: Center(
                    child: Icon(
                      Icons.event,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                );
              },
            ),
            backgroundColor: Color(0xFF801E48),
            // onTap: () => widget.onPushPhoto(0),
            label: 'Create an Event',
            labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 16.0),
            labelBackgroundColor: Color(0xFF801E48)),
        SpeedDialChild(
            child: OpenContainer(
              transitionType: _transitionType,
              openBuilder: (BuildContext context, VoidCallback _) {
                return CreatePhotoScreen(id: widget.orgID, isOrg: widget.isOrg);
              },
              closedElevation: 6.0,
              closedShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(_fabDimension / 2),
                ),
              ),
              closedColor: Theme.of(context).colorScheme.secondary,
              closedBuilder:
                  (BuildContext context, VoidCallback openContainer) {
                return SizedBox(
                  height: _fabDimension,
                  width: _fabDimension,
                  child: Center(
                    child: Icon(
                      Icons.camera,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                );
              },
            ),
            backgroundColor: Color(0xFF801E48),
            // onTap: () => widget.onPushPhoto(0),
            label: 'Add a Photo',
            labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 16.0),
            labelBackgroundColor: Color(0xFF801E48)),
      ],
    );
  }
}
