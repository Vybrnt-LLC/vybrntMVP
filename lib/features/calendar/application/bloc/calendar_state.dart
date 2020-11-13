part of 'calendar_bloc.dart';

@freezed
abstract class CalendarState with _$CalendarState{
  const factory CalendarState.initial() = Initial;
  const factory CalendarState.loadInProgress() = DataTransferInProgress;
  const factory CalendarState.loadSuccess(KtList<Event> events) = LoadSuccess;
  const factory CalendarState.loadFailure(EventFailure eventFailure) =
      LoadFailure;
}




