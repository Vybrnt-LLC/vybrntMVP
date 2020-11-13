import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:vybrnt_mvp/features/calendar/application/create_event_bloc/create_event_bloc.dart';

import 'date_time_picker.dart';

class DateTimeField extends StatefulWidget {
  const DateTimeField({Key key}) : super(key: key);
  @override
  _DateTimeFieldState createState() => _DateTimeFieldState();
}

class _DateTimeFieldState extends State<DateTimeField> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateEventBloc, CreateEventState>(
        builder: (context, state) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DateTimePicker(
              labelText: 'From',
              //enableTime: !_event.allDay,
              selectedDate: state.event.startTime, //_startDate,
              selectedTime:
                  TimeOfDay.fromDateTime(state.event.startTime), //_startTime,
              selectDate: (DateTime date) {
                setState(() {
                  context.bloc<CreateEventBloc>().add(
                      CreateEventEvent.startTimeChanged(_combineDateWithTime(
                          date,
                          TimeOfDay.fromDateTime(state.event.startTime))));
                  context.bloc<CreateEventBloc>().add(
                      CreateEventEvent.endTimeChanged(_combineDateWithTime(
                          date, TimeOfDay.fromDateTime(state.event.endTime))));
                });
              },
              selectTime: (TimeOfDay time) {
                setState(
                  () {
                    context.bloc<CreateEventBloc>().add(
                        CreateEventEvent.startTimeChanged(
                            _combineDateWithTime(state.event.startTime, time)));
                    context.bloc<CreateEventBloc>().add(
                        CreateEventEvent.endTimeChanged(_combineDateWithTime(
                            state.event.endTime,
                            time.replacing(hour: time.hour + 1))));
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DateTimePicker(
              labelText: 'To',
              selectedDate: state.event.endTime,
              selectedTime: TimeOfDay.fromDateTime(state.event.endTime),
              selectDate: (DateTime date) {
                setState(
                  () {
                    context.bloc<CreateEventBloc>().add(
                        CreateEventEvent.endTimeChanged(_combineDateWithTime(
                            date,
                            TimeOfDay.fromDateTime(state.event.endTime))));
                  },
                );
              },
              selectTime: (TimeOfDay time) {
                setState(
                  () {
                    context.bloc<CreateEventBloc>().add(
                        CreateEventEvent.endTimeChanged(
                            _combineDateWithTime(state.event.endTime, time)));
                  },
                );
              },
            ),
          ),
        ],
      );
    });
  }

  DateTime _combineDateWithTime(DateTime date, TimeOfDay time) {
    if (date == null && time == null) {
      return null;
    }
    final dateWithoutTime =
        DateTime.parse(DateFormat('y-MM-dd 00:00:00').format(date));
    return dateWithoutTime
        .add(Duration(hours: time.hour, minutes: time.minute));
  }
}
