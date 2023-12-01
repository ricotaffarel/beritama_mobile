import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_news_detail_state.freezed.dart';

@unfreezed
class HomeNewsDetailState with _$HomeNewsDetailState {
  factory HomeNewsDetailState({
    @Default(false) bool seeMore,
  }) = _HomeNewsDetailState;
}
