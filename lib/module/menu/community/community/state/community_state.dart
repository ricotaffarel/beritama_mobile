import 'package:beritama/module/menu/community/community/models/community_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'community_state.freezed.dart';

@unfreezed
class CommunityState with _$CommunityState {
  factory CommunityState({
    @Default(0) int counter,
    @Default(false) bool loading,
    @Default([]) List<CommunityModel> communityList,
  }) = _CommunityState;
}
