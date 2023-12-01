import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_state.freezed.dart';

@unfreezed
class ChatState with _$ChatState {
  factory ChatState({
    @Default(0) int counter,
  }) = _ChatState;
}
