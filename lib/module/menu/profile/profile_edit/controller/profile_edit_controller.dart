import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/profile_edit_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProfileEditController extends Cubit<ProfileEditState>
    implements IBlocBase {
  ProfileEditController() : super(ProfileEditState());

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
