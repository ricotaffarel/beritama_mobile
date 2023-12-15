import 'package:beritama/core.dart';
import 'package:beritama/module/menu/home/home_news_with_category/model/home_news_with_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_news_with_category_state.freezed.dart';

@unfreezed
class HomeNewsWithCategoryState with _$HomeNewsWithCategoryState {
  factory HomeNewsWithCategoryState({
    @Default([]) List<HomeNewsWithCategoryModel> category,
    @Default([]) List<HomeNewsModel> news,
    @Default(false) bool loading,
  }) = _HomeNewsWithCategoryState;
}
