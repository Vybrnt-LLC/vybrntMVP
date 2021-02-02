import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/screens/create_event_screen.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/create_org_screen.dart';
import 'package:vybrnt_mvp/features/posts/presentation/posts/create_posts/create_post_screen.dart';
import 'package:vybrnt_mvp/features/user/application/fab_bloc/fab_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const double _fabDimension = 56.0;

class CreateFAB extends StatelessWidget {
  final ContainerTransitionType _transitionType = ContainerTransitionType.fade;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FabBloc>(
        create: (context) => getIt<FabBloc>(),
        child: SpeedDial(
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
          visible: true,
          curve: Curves.bounceIn,
          children: [
            // FAB 1
            SpeedDialChild(
                onTap: () => context
                    .bloc<FabBloc>()
                    .add(const FabEvent.setCurrentScreen('create_post')),
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
                onTap: () => context
                    .bloc<FabBloc>()
                    .add(const FabEvent.setCurrentScreen('create_event')),
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
                onTap: () => context
                    .bloc<FabBloc>()
                    .add(const FabEvent.setCurrentScreen('create_org')),
                child: OpenContainer(
                  transitionType: _transitionType,
                  openBuilder: (BuildContext context, VoidCallback _) {
                    return CreateOrgScreen();
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
                          Icons.group_add,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    );
                  },
                ),
                backgroundColor: Color(0xFF801E48),
                // onTap: () => widget.onPush(0),
                label: 'Create an Org Page',
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 16.0),
                labelBackgroundColor: Color(0xFF801E48)),
            SpeedDialChild(
                onTap: () => context
                    .bloc<FabBloc>()
                    .add(const FabEvent.setCurrentScreen('report_bias')),
                child: GestureDetector(
                  onTap: () {
                    launch('http://equity.psu.edu/reportbias');
                  },
                  child: SizedBox(
                    height: _fabDimension,
                    width: _fabDimension,
                    child: Center(
                      child: Icon(
                        Icons.report,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                  ),
                ),
                backgroundColor: Colors.amber[900],
                // onTap: () => widget.onPushPhoto(0),
                label: 'PSU Report Bias',
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 16.0),
                labelBackgroundColor: Color(0xFF801E48)),
            // FAB 2
            SpeedDialChild(
                onTap: () => context
                    .bloc<FabBloc>()
                    .add(const FabEvent.setCurrentScreen('feedback')),
                child: GestureDetector(
                  onTap: () => launch('https://forms.gle/cS3LFQbC8ZyMgpxL9'),
                  child: SizedBox(
                    height: _fabDimension,
                    width: _fabDimension,
                    child: Center(
                      child: Icon(
                        Icons.feedback,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                  ),
                ),
                backgroundColor: Color(0xFF801E48),
                // onTap: () => widget.onPushPhoto(0),
                label: 'Provide Feedback',
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 16.0),
                labelBackgroundColor: Color(0xFF801E48)),
            SpeedDialChild(
                onTap: () => context
                    .bloc<FabBloc>()
                    .add(const FabEvent.setCurrentScreen('report_bug')),
                child: GestureDetector(
                  onTap: () => launch('https://forms.gle/ez2fA4DxdBKdPkqP9'),
                  child: SizedBox(
                    height: _fabDimension,
                    width: _fabDimension,
                    child: Center(
                      child: Icon(
                        Icons.bug_report,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                  ),
                ),
                backgroundColor: Color(0xFF801E48),
                // onTap: () => widget.onPushPhoto(0),
                label: 'Report Bug',
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 16.0),
                labelBackgroundColor: Color(0xFF801E48)),
          ],
        ));
  }
}
