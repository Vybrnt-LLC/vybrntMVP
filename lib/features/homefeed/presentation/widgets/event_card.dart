import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';

class EventCard extends StatelessWidget {
  final Event event;
  const EventCard({
    Key key,
    this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Flexible(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: event.eventImageUrl.isEmpty
                        ? ExactAssetImage('assets/images/user_placeholder.png')
                        : CachedNetworkImageProvider(
                            event.eventImageUrl,
                          ),
                  ),
                  border: Border.all(width: 2.0, color: Colors.white),
                  boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black)],
                  borderRadius: BorderRadius.circular(10.0)),
              width: 250,
              //color: Colors.black38,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Text(
            event.eventName,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: Colors.black54),
          ),
        ),
        Flexible(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat.MMMd().format(event.startTime),
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(color: Colors.black54),
              ),
              Text(' | ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black54)),
              Text(
                DateFormat.jm().format(event.startTime),
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(color: Colors.black54),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
