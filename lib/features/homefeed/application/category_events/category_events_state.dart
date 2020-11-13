part of 'category_events_bloc.dart';

@freezed
abstract class CategoryEventsState with _$CategoryEventsState {
  const factory CategoryEventsState.initial() = Initial;
  const factory CategoryEventsState.loadInProgress() = DataTransferInProgress;
  const factory CategoryEventsState.loadSuccess(KtList<Event> events) =
      LoadSuccess;
  const factory CategoryEventsState.loadFailure(EventFailure eventFailure) =
      LoadFailure;
}
