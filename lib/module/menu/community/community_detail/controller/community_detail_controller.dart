import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/community_detail_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class CommunityDetailController extends Cubit<CommunityDetailState>
    implements IBlocBase {
  CommunityDetailController() : super(CommunityDetailState());

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
