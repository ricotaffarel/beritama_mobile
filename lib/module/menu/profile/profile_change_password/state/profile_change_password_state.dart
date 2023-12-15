import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_change_password_state.freezed.dart';

@unfreezed
class ProfileChangePasswordState with _$ProfileChangePasswordState {
  factory ProfileChangePasswordState({
    @Default(0) int counter,
  }) = _ProfileChangePasswordState;
}
