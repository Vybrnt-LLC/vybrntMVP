part of 'event_tile_bloc.dart';

@freezed
abstract class EventTileEvent with _$EventTileEvent {
  const factory EventTileEvent.getData(Event event) = GetData;
  const factory EventTileEvent.deleteEvent(Event event) = DeleteEvent;
}
