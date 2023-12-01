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

  List<Map<String, dynamic>> dummyNews = [
    {
      'title': 'Lorem Ipsum Ipsum Ipsum Ipsum Dolor Sit Amet',
      'author': 'John Doe',
      'time': "1 minutes",
    },
    {
      'title': 'Consectetur Adipiscing Elit',
      'author': 'Jane Smith',
      'time': "1 minutes",
    },
    {
      'title': 'Sed Do Eiusmod Tempor Incididunt',
      'author': 'Alex Johnson',
      'time': "1 minutes"
    },
    // Tambahkan data berita lainnya sesuai kebutuhan
  ];
}
