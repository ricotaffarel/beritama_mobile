import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/profile_my_event_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProfileMyEventController extends Cubit<ProfileMyEventState>
    implements IBlocBase {
  ProfileMyEventController() : super(ProfileMyEventState());

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
}
