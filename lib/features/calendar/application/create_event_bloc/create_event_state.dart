part of 'create_event_bloc.dart';

@freezed
abstract class CreateEventState with _$CreateEventState{
  const factory CreateEventState({
    @required Event event,
    @required KtList<OrgList> admins,
    @required String id,
    @required List<String> categories,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<EventFailure, Unit>> saveFailureOrSuccessOption,
  }) = _CreateEventState;

  factory CreateEventState.initial() => CreateEventState(
        event: Event.empty(),
        admins: KtList.empty(),
        categories: [],
        id: '',
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
