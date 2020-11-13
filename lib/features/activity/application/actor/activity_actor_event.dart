part of 'activity_actor_bloc.dart';

@freezed
abstract class ActivityActorEvent with _$ActivityActorEvent {
  const factory ActivityActorEvent.getData(Activity activity) = _GetData;
  const factory ActivityActorEvent.getData1(Activity activity) = _GetData1;
}
