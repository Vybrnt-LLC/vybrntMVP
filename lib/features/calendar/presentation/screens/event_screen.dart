import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/calendar/application/event_detail_bloc/event_detail_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/screens/event_detail_screen.dart';

class EventScreen extends StatelessWidget {
  final String eventID;
  final String type;
  final String typeID;

  const EventScreen({Key key, this.eventID, this.type, this.typeID})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<EventDetailBloc>(
        create: (context) => getIt<EventDetailBloc>()
          ..add(EventDetailEvent.getEvent(
              eventID: eventID, typeID: typeID, type: type)),
        child: BlocBuilder<EventDetailBloc, EventDetailState>(
            builder: (context, state) {
          return EventDetailScreen(event: state.event);
        }));
  }
}
