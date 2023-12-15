import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@unfreezed
class LoginState with _$LoginState {
  factory LoginState({
    @Default("") String email,
    @Default("") String password,
    @Default(false) bool isLogin,
    @Default(false) bool loading,
  }) = _LoginState;
}
