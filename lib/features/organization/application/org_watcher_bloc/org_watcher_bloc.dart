import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/organization/domain/i_org_service.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post_failure.dart';

part 'org_watcher_bloc.freezed.dart';
part 'org_watcher_event.dart';
part 'org_watcher_state.dart';

@injectable
class OrgWatcherBloc extends Bloc<OrgWatcherEvent, OrgWatcherState> {
  final IOrgService _orgService;

  OrgWatcherBloc(this._orgService) : super(OrgWatcherState.initial());

  StreamSubscription<Organization> _orgStreamSubscription;

  @override
  Stream<OrgWatcherState> mapEventToState(
    OrgWatcherEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        yield const OrgWatcherState.loadInProgress();
        await _orgStreamSubscription?.cancel();
        _orgStreamSubscription = _orgService
            .getOrgStream(e.orgID)
            .listen((org) => add(OrgWatcherEvent.orgReceived(org)));
      },
      orgReceived: (e) async* {
        yield OrgWatcherState.loadSuccess(e.org);
      },
    );
  }
}
