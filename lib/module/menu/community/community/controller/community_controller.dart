import 'package:beritama/core.dart';
import 'package:beritama/module/menu/community/community/service/community_service.dart';
import 'package:beritama/module/menu/home/home/model/news_model_user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class CommunityController extends Cubit<CommunityState> implements IBlocBase {
  CommunityController() : super(CommunityState());

  @override
  void initState() async {
    // await getCommunity();
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
  NewsModelByUser news = NewsModelByUser(message: "message", data: []);
  getCommunity() async {
    state.loading = true;
    emit(state.copyWith());

    state.communityList = await CommunityService().getCommunity();
    print(state.communityList.length);
    await Future.delayed(Duration(seconds: 2));
    state.loading = false;
    emit(state.copyWith());
  }

  getNews() async {
    state.loading = true;
    emit(state.copyWith());

    news = await HomeService().getNewsByUser();
    // print(news.data.length);

    state.loading = false;
    emit(state.copyWith());
  }
}
