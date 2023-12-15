import 'package:freezed_annotation/freezed_annotation.dart';
part 'community_detail_state.freezed.dart';

@unfreezed
class CommunityDetailState with _$CommunityDetailState {
  factory CommunityDetailState({
    @Default(0) int counter,
  }) = _CommunityDetailState;
}
