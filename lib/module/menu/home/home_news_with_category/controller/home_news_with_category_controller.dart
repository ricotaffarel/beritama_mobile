import 'package:beritama/core.dart';
import 'package:beritama/module/menu/home/home_news_with_category/service/home_news_with_categoryservice.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/home_news_with_category_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class HomeNewsWithCategoryController extends Cubit<HomeNewsWithCategoryState>
    implements IBlocBase {
  HomeNewsWithCategoryController() : super(HomeNewsWithCategoryState());

  @override
  void initState() {
    // getCategories();
    getNews();
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  List<String> categoryName = [
    "Pemilu",
    "Olahraga",
    "Hiburan",
    "Sains & Teknologi",
    "Kesehatan",
    "Agama",
    "Budaya"
  ];

  // getCategories() async {
  //   state.loading = true;
  //   emit(state.copyWith());

  //   state.category = await HomeNewsWithCategoryService().getCategories();
  //   for (var i = 0; i < state.category.length; i++) {
  //     var item = state.category[i];
  //     categoryName.insert(i, item.newsCategoryName!);
  //   }

  //   state.loading = false;
  //   emit(state.copyWith());
  // }
  getNews() async {
    state.loading = true;
    emit(state.copyWith());

    state.news = await HomeService().getNews();
    print(state.news.length);

    state.loading = false;
    emit(state.copyWith());
  }
}
