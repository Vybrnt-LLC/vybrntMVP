import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/application/event_detail_bloc/event_detail_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/application/event_tile_bloc/event_tile_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/screens/event_detail_screen.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/event_tile.dart';
import 'package:vybrnt_mvp/features/organization/application/event_list_bloc/event_list_bloc.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';

class UserProfileEventTab extends StatefulWidget {
  final String name;
  final String userID;
  final User user;

  const UserProfileEventTab({
    Key key,
    this.name,
    this.userID,
    this.user,
  }) : super(key: key);
  _UserProfileEventTabState createState() => _UserProfileEventTabState();
}

class _UserProfileEventTabState extends State<UserProfileEventTab> {
  ContainerTransitionType _transitionType = ContainerTransitionType.fade;
  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return BlocBuilder<EventListBloc, EventListState>(
        builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        loadInProgress: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadSuccess: (state) {
          return Container(
            child: SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (context) {
                    return CustomScrollView(
                        key: PageStorageKey<String>(widget.name),
                        slivers: <Widget>[
                          SliverPadding(
                            padding: const EdgeInsets.all(8.0),
                            sliver: SliverList(

                                //itemExtent: 70,
                                delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                return OpenContainer<bool>(
                                    key: ObjectKey(state.events[index]),
                                    transitionType: _transitionType,
                                    openBuilder: (BuildContext _,
                                        VoidCallback openContainer) {
                                      return BlocProvider<EventDetailBloc>(
                                          create: (context) => getIt<
                                              EventDetailBloc>()
                                            ..add(
                                                EventDetailEvent.getData(
                                                    senderID: state
                                                        .events[index].senderID,
                                                    currentUserID:
                                                        currentUserID,
                                                    orgID:
                                                        state.events[index]
                                                            .orgID,
                                                    eventID:
                                                        state.events[index]
                                                            .eventID
                                                            .getOrCrash(),
                                                    isOrg:
                                                        state.events[index]
                                                            .isOrg)),
                                          child: EventDetailScreen(
                                              isAdmin: state
                                                      .events[index].senderID ==
                                                  currentUserID,
                                              event: state.events[index]));
                                    },
                                    //onClosed: _showMarkedAsDoneSnackbar,

                                    closedShape: const RoundedRectangleBorder(),
                                    closedElevation: 0.0,
                                    closedBuilder: (BuildContext _,
                                        VoidCallback openContainer) {
                                      return Padding(
                                        padding: EdgeInsets.all(3),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          //color: Colors.white,
                                          child: BlocProvider<EventTileBloc>(
                                            create: (context) =>
                                                getIt<EventTileBloc>()
                                                  ..add(EventTileEvent.getData(
                                                      state.events[index])),
                                            child: EventTile(
                                                color: stringToColor(
                                                    widget.user.secondaryColor),
                                                isAdmin: widget.userID ==
                                                    currentUserID,
                                                event: state.events[index]),
                                          ),
                                        ),
                                      );
                                    });
                              },
                              childCount: state.events.size,
                            )),
                          )
                        ]);
                  },
                )),
          );
        },
        loadFailure: (state) {
          return Icon(Icons.error_outline); // return CriticalFailureDisplay(
          //   failure: state.eventFailure,
          // );
        },
      );
    });
  }
}
