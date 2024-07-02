import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_news_detail2_state.freezed.dart';

@unfreezed
class HomeNewsDetail2State with _$HomeNewsDetail2State {
  factory HomeNewsDetail2State({
    @Default(0) int counter,
    @Default(false) bool seeMore,
    @Default(false) bool loading,
  }) = _HomeNewsDetail2State;
}
