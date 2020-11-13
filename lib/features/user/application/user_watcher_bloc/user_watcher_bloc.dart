import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:vybrnt_mvp/features/user/domain/i_user_service.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_failure.dart';

part 'user_watcher_bloc.freezed.dart';
part 'user_watcher_event.dart';
part 'user_watcher_state.dart';

@injectable
class UserWatcherBloc extends Bloc<UserWatcherEvent, UserWatcherState> {
  final IUserService _userService;

  UserWatcherBloc(this._userService) : super(UserWatcherState.initial());

  StreamSubscription<User> _userStreamSubscription;

  @override
  Stream<UserWatcherState> mapEventToState(
    UserWatcherEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        yield const UserWatcherState.loadInProgress();

        bool isBlocked = await _userService.isBlocked(e.userID);
        if (isBlocked) {
          yield UserWatcherState.loadFailure(UserFailure.loadFailed());
        } else {
          await _userStreamSubscription?.cancel();
          _userStreamSubscription = _userService
              .getUserStream(e.userID)
              .listen((user) => add(UserWatcherEvent.userReceived(user)));
        }
      },
      userReceived: (e) async* {
        yield UserWatcherState.loadSuccess(e.user);
      },
    );
  }
}
