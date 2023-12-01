import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_state.freezed.dart';

@unfreezed
class EventState with _$EventState {
  factory EventState({
    @Default(0) int counter,
  }) = _EventState;
}
