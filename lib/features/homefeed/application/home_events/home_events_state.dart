part of 'home_events_bloc.dart';

@freezed
abstract class HomeEventsState with _$HomeEventsState{
  const factory HomeEventsState.initial() = Initial;
  const factory HomeEventsState.loadInProgress() = DataTransferInProgress;
  const factory HomeEventsState.loadSuccess(KtList<Event> events) = LoadSuccess;
  const factory HomeEventsState.loadFailure(EventFailure eventFailure) =
      LoadFailure;
}