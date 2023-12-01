import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/event_registration_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class EventRegistrationController extends Cubit<EventRegistrationState>
    implements IBlocBase {
  EventRegistrationController() : super(EventRegistrationState());

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
