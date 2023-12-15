import 'dart:io';

import 'package:beritama/core.dart';
import 'package:beritama/shared/utils/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/home_news_detail_state.dart';
import 'package:beritama/bloc_util.dart';
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

  getNews() async {
    state.loading = true;
    emit(state.copyWith());

    state.news = await HomeService().getNews();
    print(state.news.length);

    state.loading = false;
    emit(state.copyWith());
  }
}
