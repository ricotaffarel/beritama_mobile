import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@unfreezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(0) int counter,
  }) = _HomeState;
}
