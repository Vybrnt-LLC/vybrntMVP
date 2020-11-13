part of 'event_list_bloc.dart';

@freezed
abstract class EventListState with _$EventListState {
  const factory EventListState.initial() = Initial;
  const factory EventListState.loadInProgress() = DataTransferInProgress;
  const factory EventListState.loadSuccess(KtList<Event> events) = LoadSuccess;
  const factory EventListState.loadFailure(EventFailure eventFailure) =
      LoadFailure;
}
