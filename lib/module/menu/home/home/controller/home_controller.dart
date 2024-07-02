import 'package:beritama/core.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class HomeController extends Cubit<HomeState> implements IBlocBase {
  HomeController() : super(HomeState());

  @override
  void initState() async {
    //initState event
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

  HomeNewsModel news = HomeNewsModel(message: "message", data: []);

  getNews() async {
    state.loading = true;
    emit(state.copyWith());

    news = await HomeService().getNews();
    // print(news.data.length);

    state.loading = false;
    emit(state.copyWith());
  }

  int currentIndex = 0;
  updateIndexSlider(int i) {
    currentIndex = i;
    emit(state.copyWith());
  }

  final CarouselController carouselController = CarouselController();
}
