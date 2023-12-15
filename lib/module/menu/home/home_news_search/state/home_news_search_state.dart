import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_news_search_state.freezed.dart';

@unfreezed
class HomeNewsSearchState with _$HomeNewsSearchState {
  factory HomeNewsSearchState({
    @Default("") String search,
  }) = _HomeNewsSearchState;
}
