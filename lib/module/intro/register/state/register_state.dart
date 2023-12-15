import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_state.freezed.dart';

@unfreezed
class RegisterState with _$RegisterState {
  factory RegisterState({
    @Default("") String name,
    @Default("") String email,
    @Default("") String password,
    @Default("") String passwordConfirmation,
    @Default(false) bool process,
    @Default(false) bool loading,
  }) = _RegisterState;
}
