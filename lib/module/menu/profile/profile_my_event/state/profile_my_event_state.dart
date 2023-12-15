import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_my_event_state.freezed.dart';

@unfreezed
class ProfileMyEventState with _$ProfileMyEventState {
  factory ProfileMyEventState({
    @Default(0) int counter,
  }) = _ProfileMyEventState;
}
