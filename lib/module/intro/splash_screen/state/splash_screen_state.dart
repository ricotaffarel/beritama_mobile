import 'package:freezed_annotation/freezed_annotation.dart';
part 'splash_screen_state.freezed.dart';

@unfreezed
class SplashScreenState with _$SplashScreenState {
  factory SplashScreenState({@Default(false) bool splash_screen}) =
      _SplashScreenState;
}
