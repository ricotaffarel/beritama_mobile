import 'package:freezed_annotation/freezed_annotation.dart';
part 'community_state.freezed.dart';

@unfreezed
class CommunityState with _$CommunityState {
  factory CommunityState({
    @Default(0) int counter,
  }) = _CommunityState;
}
