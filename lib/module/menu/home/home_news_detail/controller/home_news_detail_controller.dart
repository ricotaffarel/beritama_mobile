import 'package:beritama/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class HomeNewsDetailController extends Cubit<HomeNewsDetailState>
    implements IBlocBase {
  HomeNewsDetailController() : super(HomeNewsDetailState());

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

  seeMore() {
    state.seeMore = !state.seeMore;
    emit(state.copyWith());
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
}
