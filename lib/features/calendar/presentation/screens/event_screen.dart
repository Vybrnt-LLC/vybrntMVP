import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/application/event_detail_bloc/event_detail_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/application/event_notification/bloc/event_notification_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/screens/event_detail_screen.dart';

class EventScreen extends StatelessWidget {
  final String eventID;
  final String type;
  final String typeID;

  const EventScreen({Key key, this.eventID, this.type, this.typeID})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return BlocProvider<EventNotificationBloc>(
        create: (context) => getIt<EventNotificationBloc>()
          ..add(EventNotificationEvent.getEvent(
              eventID: eventID,
              typeID: typeID,
              type: type,
              currentUserID: currentUserID)),
        child: BlocBuilder<EventNotificationBloc, EventNotificationState>(
            builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => Container(),
            loadFailure: (_) => Container(),
            loadSuccess: (state) => BlocProvider<EventDetailBloc>(
                create: (context) => getIt<EventDetailBloc>()
                  ..add(EventDetailEvent.getData(
                      senderID: state.event.senderID,
                      currentUserID: currentUserID,
                      orgID: state.event.orgID,
                      eventID: state.event.eventID.getOrCrash(),
                      isOrg: state.event.isOrg)),
                child: EventDetailScreen(event: state.event)),
          );
        }));
  }
}
