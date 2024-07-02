import 'package:beritama/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/home_news_detail2_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class HomeNewsDetail2Controller extends Cubit<HomeNewsDetail2State>
    implements IBlocBase {
  HomeNewsDetail2Controller() : super(HomeNewsDetail2State());

  @override
  void initState() async {
    //initState event
    await getNews();
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

  increment() {
    state.counter++;
    emit(state.copyWith());
  }
}
