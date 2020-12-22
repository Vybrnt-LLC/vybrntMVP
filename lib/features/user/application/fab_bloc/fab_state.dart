part of '../fab_bloc/fab_bloc.dart';

@freezed
abstract class FabState with _$FabState {
  const factory FabState.initial() = _Initial;
}
