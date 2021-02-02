import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/controllers/simple_hidden_drawer_controller.dart';
import 'package:intl/intl.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/activity/application/bloc/activity_bloc.dart';
import 'package:vybrnt_mvp/features/activity/domain/activity.dart';
import 'package:vybrnt_mvp/features/activity/presentation/widget/activity_item.dart';

class ActivityScreen extends StatefulWidget {
  final String currentUserID;
  //final ValueChanged<Post> onPushPostDetail;

  ActivityScreen({Key key, this.currentUserID}) : super(key: key);

  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                SimpleHiddenDrawerController.of(context).toggle();
              }),
          backgroundColor: Colors.black,
          title: Text('ACTIVITY',
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
        body: SafeArea(
          top: false,
          child: BlocBuilder<ActivityBloc, ActivityState>(
              builder: (context, state) {
            return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                loadFailure: (state) {
                  return Icon(Icons.error_outline);
                },
                loadSuccess: (state) {
                  return RefreshIndicator(
                    onRefresh: () async => context
                        .bloc<ActivityBloc>()
                        .add(ActivityEvent.getData()),
                    child: ListView.builder(
                      itemCount: state.activities.size,
                      itemBuilder: (BuildContext context, int index) {
                        return ActivityItem(activity: state.activities[index]);
                      },
                    ),
                  );
                });
          }),
        ));
  }
}
