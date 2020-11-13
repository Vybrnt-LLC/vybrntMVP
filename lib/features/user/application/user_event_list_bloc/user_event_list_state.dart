part of 'user_event_list_bloc.dart';

@freezed
abstract class UserEventListState with _$UserEventListState {
  const factory UserEventListState.initial() = Initial;
  const factory UserEventListState.loadInProgress() = DataTransferInProgress;
  const factory UserEventListState.loadSuccess(KtList<Event> events) =
      LoadSuccess;
  const factory UserEventListState.loadFailure(EventFailure eventFailure) =
      LoadFailure;
}
