import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_edit_state.freezed.dart';

@unfreezed
class ProfileEditState with _$ProfileEditState {
  factory ProfileEditState({
    @Default(0) int counter,
  }) = _ProfileEditState;
}
