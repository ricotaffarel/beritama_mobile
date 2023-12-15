import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/home_news_search_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class HomeNewsSearchController extends Cubit<HomeNewsSearchState>
    implements IBlocBase {
  HomeNewsSearchController() : super(HomeNewsSearchState());

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
}
