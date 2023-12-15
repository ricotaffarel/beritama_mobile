import 'package:beritama/module/menu/home/home/service/home_service.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/home_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class HomeController extends Cubit<HomeState> implements IBlocBase {
  HomeController() : super(HomeState());

  @override
  void initState() {
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

  getNews() async {
    state.loading = true;
    emit(state.copyWith());

    state.news = await HomeService().getNews();
    print(state.news.length);

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
