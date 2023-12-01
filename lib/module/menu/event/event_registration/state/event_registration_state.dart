import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_registration_state.freezed.dart';

@unfreezed
class EventRegistrationState with _$EventRegistrationState {
  factory EventRegistrationState({
    @Default(0) int counter,
  }) = _EventRegistrationState;
}
