import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/application/org_bloc/org_calendar_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_calendar.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';

class OrgCalendarList extends StatelessWidget {
  const OrgCalendarList({
    Key key,
    @required this.org,
    this.updatedOrg,
  }) : super(key: key);

  final OrgCalendar org;
  final OrgList updatedOrg;

  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return GestureDetector(
      onTap: () => org.isToggled
          ? (context.bloc<OrgCalendarBloc>().add(OrgCalendarEvent.toggleFalse(
              currentUserID, org.orgID.getOrCrash())))
          : context.bloc<OrgCalendarBloc>().add(OrgCalendarEvent.toggleTrue(
              currentUserID, org.orgID.getOrCrash())),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              width: 80.0,
              height: 80.0,
              decoration: org.isToggled
                  ? BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(15),
                    )
                  : null,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: GFAvatar(
                  borderRadius: BorderRadius.circular(15),
                  //backgroundColor: Colors.green[200],
                  shape: GFAvatarShape.square,
                  size: 20.0,
                  backgroundImage: updatedOrg.profileImageUrl.isEmpty
                      ? Image.asset('assets/images/user_placeholder.png').image
                      : CachedNetworkImageProvider(updatedOrg.profileImageUrl),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(updatedOrg.abbv, style: const TextStyle(fontSize: 14.0))
        ],
      ),
    );
  }
}
