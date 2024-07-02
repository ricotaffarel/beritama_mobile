import 'package:beritama/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  HomeNewsModel news = HomeNewsModel(message: "message", data: []);
  getNews() async {
    state.loading = true;
    emit(state.copyWith());

    news = await HomeService().getNews();
    print(state.news.length);

    state.loading = false;
    emit(state.copyWith());
  }
}
