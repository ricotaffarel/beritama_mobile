import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_notification_state.freezed.dart';

@unfreezed
class HomeNotificationState with _$HomeNotificationState {
  factory HomeNotificationState({
    @Default(0) int counter,
  }) = _HomeNotificationState;
}
