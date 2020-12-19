import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/controllers/simple_hidden_drawer_controller.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/application/bloc/calendar_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/application/event_detail_bloc/event_detail_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/application/event_tile_bloc/event_tile_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/application/org_bloc/org_calendar_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/screens/event_detail_screen.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/event_tile.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/org_calendar_list.dart';
import 'package:vybrnt_mvp/features/user/application/fab_bloc/fab_bloc.dart';
import 'package:vybrnt_mvp/features/user/presentation/widgets/create_fab.dart';

class CalendarMonthScreen extends StatefulWidget {
  CalendarMonthScreen({
    Key key,
  }) : super(key: key);

  @override
  _CalendarMonthScreenState createState() => _CalendarMonthScreenState();
}

class _CalendarMonthScreenState extends State<CalendarMonthScreen>
    with TickerProviderStateMixin {
  ContainerTransitionType _transitionType = ContainerTransitionType.fade;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  CalendarController _calendarController;
  Map<DateTime, List> _eventsMap;
  AnimationController _animationController;
  List _selectedEvents;

  final Map<DateTime, List> _holidays = {
    DateTime(2019, 1, 1): ['New Year\'s Day'],
    DateTime(2019, 1, 6): ['Epiphany'],
    DateTime(2019, 2, 14): ['Valentine\'s Day'],
    DateTime(2019, 4, 21): ['Easter Sunday'],
    DateTime(2019, 4, 22): ['Easter Monday'],
  };

  @override
  void initState() {
    super.initState();

    _calendarController = CalendarController();

    final _selectedDay = DateTime.now();

    _eventsMap = {
      _selectedDay.subtract(Duration(days: 30)): [
        'Event A0',
        'Event B0',
        'Event C0'
      ],
    };
//_setupEvents();

    _selectedEvents = _eventsMap[_selectedDay] ?? []; // i made a change here
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime day, List events) {
    print('CALLBACK: _onDaySelected');
    setState(() {
      _selectedEvents = events;
    });
  }

  void _onVisibleDaysChanged(
      DateTime first, DateTime last, CalendarFormat format) {
    print('CALLBACK: _onVisibleDaysChanged');
  }

  List<Event> events1 = [];

  //  _setupEvents() async {
  //   List<Organization> organizations = await OrganizationDatabaseService.getOrgs();
  //   for(int i = 0; i < organizations.length; i++){
  //   //List<Event> events = await CalendarService.getEvents(organizations[i].orgID);
  //   if(events != null) {
  //   setState(() {
  //     events1 += events;
  //   });}
  //   }

  //   for(int i = 0; i < events1.length; i++) {
  //     _eventsMap[events1[i].date.toDate()] = [events1[i]];
  //   }
  // }

  Widget _buildTableCalendarWithBuilders() {
    return BlocBuilder<CalendarBloc, CalendarState>(builder: (context, state) {
      //for(int i = 0; i < events1.length; i++) {
      //     _eventsMap[events1[i].date.toDate()] = [events1[i]];
      //   }
      return state.map(
        initial: (_) => Container(),
        loadInProgress: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadSuccess: (state) {
          final events = state.events;
          _eventsMap.clear();
          List<Event> eventList = new List();
          List<DateTime> dates = new List();
          for (int i = 0; i < events.size; i++) {
            final eventDate = events[i].startTime.subtract(Duration(
                hours: events[i].startTime.hour,
                minutes: events[i].startTime.minute,
                seconds: events[i].startTime.second,
                milliseconds: events[i].startTime.millisecond));
            if (!dates.contains(eventDate)) {
              dates.add(eventDate);
            }
          }
          for (int i = 0; i < dates.length; i++) {
            for (int j = 0; j < events.size; j++) {
              DateTime eventDate = events[j].startTime.subtract(Duration(
                  hours: events[j].startTime.hour,
                  minutes: events[j].startTime.minute,
                  seconds: events[j].startTime.second,
                  milliseconds: events[j].startTime.millisecond));
              if (eventDate.compareTo(dates[i]) == 0) {
                eventList.add(events[j]);
              }
            }
            // _eventsMap[dates[i]] = [eventList];
            _eventsMap[dates[i]] = eventList.toList();
            if (eventList != null) {
              eventList.clear();
            }
          }
          return TableCalendar(
            //locale: 'pl_PL',
            calendarController: _calendarController,
            //events: _events,
            events: _eventsMap,
            holidays: _holidays,
            initialCalendarFormat: CalendarFormat.month,
            formatAnimation: FormatAnimation.slide,
            startingDayOfWeek: StartingDayOfWeek.sunday,
            availableGestures: AvailableGestures.all,
            availableCalendarFormats: const {
              CalendarFormat.month: '',
              //CalendarFormat.week: '',
            },
            calendarStyle: CalendarStyle(
              outsideDaysVisible: false,
              weekendStyle: TextStyle().copyWith(color: Colors.blue[800]),
              holidayStyle: TextStyle().copyWith(color: Colors.blue[800]),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekendStyle: TextStyle().copyWith(color: Colors.blue[600]),
            ),
            headerStyle: HeaderStyle(
              centerHeaderTitle: true,
              //formatButtonVisible: false,
              formatButtonTextStyle:
                  TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
              formatButtonDecoration: BoxDecoration(
                color: Colors.deepOrange[400],
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            builders: CalendarBuilders(
              selectedDayBuilder: (context, date, _) {
                return FadeTransition(
                  opacity:
                      Tween(begin: 0.0, end: 1.0).animate(_animationController),
                  child: Container(
                    margin: const EdgeInsets.all(4.0),
                    padding: const EdgeInsets.only(top: 5.0, left: 6.0),
                    color: Colors.deepOrange[300],
                    width: 100,
                    height: 100,
                    child: Text(
                      '${date.day}',
                      style: TextStyle().copyWith(fontSize: 16.0),
                    ),
                  ),
                );
              },
              todayDayBuilder: (context, date, _) {
                return Container(
                  margin: const EdgeInsets.all(4.0),
                  padding: const EdgeInsets.only(top: 5.0, left: 6.0),
                  color: Colors.amber[400],
                  width: 100,
                  height: 100,
                  child: Text(
                    '${date.day}',
                    style: TextStyle().copyWith(fontSize: 16.0),
                  ),
                );
              },
              markersBuilder: (context, date, events, holidays) {
                final children = <Widget>[];

                if (events.isNotEmpty) {
                  children.add(
                    Positioned(
                      right: 1,
                      bottom: 1,
                      child: _buildEventsMarker(date, events),
                    ),
                  );
                }

                if (holidays.isNotEmpty) {
                  children.add(
                    Positioned(
                      right: -2,
                      top: -2,
                      child: _buildHolidaysMarker(),
                    ),
                  );
                }

                return children;
              },
            ),
            onDaySelected: (date, events) {
              _onDaySelected(date, events);
              _animationController.forward(from: 0.0);
            },
            onVisibleDaysChanged: _onVisibleDaysChanged,
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

  Widget _buildEventsMarker(DateTime date, List events) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: _calendarController.isSelected(date)
            ? Colors.brown[500]
            : _calendarController.isToday(date)
                ? Colors.brown[300]
                : Colors.blue[400],
      ),
      width: 16.0,
      height: 16.0,
      child:
          Center(child: Icon(MdiIcons.square, size: 10.0, color: Colors.white)
              // child: Text(
              //   '${events.length}',
              //   style: TextStyle().copyWith(
              //     color: Colors.white,
              //     fontSize: 12.0,
              //   ),
              // ),
              ),
    );
  }

  Widget _buildHolidaysMarker() {
    return Icon(
      Icons.add_box,
      size: 20.0,
      color: Colors.blueGrey[800],
    );
  }

  Widget _topOrgList() {
    return Container(
      height: 120.0,
      child: BlocBuilder<OrgCalendarBloc, OrgCalendarState>(
          //bloc: BlocProvider.of<OrgCalendarBloc>(context),
          builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(5.0),
              itemBuilder: (context, index) {
                // if (org.failureOption.isSome()) {
                //   return Icon(Icons.error);//ErrorNoteCard(note: note);
                // }
                return OrgCalendarList(
                    key: ObjectKey(state.updatedOrgs[index]),
                    org: state.organizations[index],
                    updatedOrg: state.updatedOrgs[index]);
              },
              itemCount: state.organizations.size,
            );
          },
          loadFailure: (state) {
            return Icon(Icons.error_outline); // return CriticalFailureDisplay(
            //   failure: state.eventFailure,
            // );
          },
        );
      }),
    );
  }

  // _toggleOrg(Organization org) async {
  //   if(org.isToggled) {
  //     //BlocProvider.of<CalendarBloc>(context).add(CalendarEvent.toggleFalse(org.orgID));
  //   } else {
  //     //BlocProvider.of<CalendarBloc>(context).add(CalendarEvent.toggleTrue(org.orgID));
  //   }

  // }

  // for(int i = 0; i < events1.length; i++) {
  //   _eventsMap[events1[i].date.toDate()] = [events1[i]];
  // }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications), onPressed: null),
        ],
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              SimpleHiddenDrawerController.of(context).toggle();
            }),
        title: Text('COMMUNITY CALENDAR',
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(child: _topOrgList()),
                SliverToBoxAdapter(child: _buildTableCalendarWithBuilders()),
                SliverToBoxAdapter(child: const SizedBox(height: 8.0)),
                SliverToBoxAdapter(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Events', style: TextStyle(fontSize: 18)),
                )),
                _buildEventListSliver(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: BlocProvider(
        create: (context) => getIt<FabBloc>(),
        child: CreateFAB(),
      ),
    );
  }

  Widget _buildEventListSliver() {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return OpenContainer<bool>(
            key: ObjectKey(_selectedEvents[index]),
            transitionType: _transitionType,
            openBuilder: (BuildContext _, VoidCallback openContainer) {
              return BlocProvider<EventDetailBloc>(
                  create: (context) => getIt<EventDetailBloc>()
                    ..add(EventDetailEvent.getData(
                        senderID: _selectedEvents[index].senderID,
                        currentUserID: currentUserID,
                        orgID: _selectedEvents[index].orgID,
                        eventID: _selectedEvents[index].eventID.getOrCrash(),
                        isOrg: _selectedEvents[index].isOrg)),
                  child: EventDetailScreen(event: _selectedEvents[index]));
            },
            //onClosed: _showMarkedAsDoneSnackbar,

            closedShape: const RoundedRectangleBorder(),
            closedElevation: 0.0,
            closedBuilder: (BuildContext _, VoidCallback openContainer) {
              return Padding(
                padding: EdgeInsets.all(3),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  //color: Colors.white,
                  child: BlocProvider<EventTileBloc>(
                    lazy: false,
                    create: (context) => getIt<EventTileBloc>()
                      ..add(EventTileEvent.getData(_selectedEvents[index])),
                    child: EventTile(
                        event: _selectedEvents[index], isAdmin: false),
                  ),
                ),
              );
            });
      }, childCount: _selectedEvents.length),
    );
  }
}
