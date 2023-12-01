import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/splash_screen_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class SplashScreenController extends Cubit<SplashScreenState>
    implements IBlocBase {
  SplashScreenController() : super(SplashScreenState());

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      state.splash_screen = true;
      emit(state.copyWith());
    });
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
