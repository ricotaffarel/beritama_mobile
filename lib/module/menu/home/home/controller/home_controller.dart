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
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  increment() {
    state.counter++;
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
