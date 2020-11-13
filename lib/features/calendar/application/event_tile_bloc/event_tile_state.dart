part of 'event_tile_bloc.dart';

@freezed
abstract class EventTileState with _$EventTileState {
  const factory EventTileState({
    @required Organization org,
    @required User user,
  }) = _EventTileState;

  factory EventTileState.initial() =>
      EventTileState(org: Organization.empty(), user: User.empty());
}
