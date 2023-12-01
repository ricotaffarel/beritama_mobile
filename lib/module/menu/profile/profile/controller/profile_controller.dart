import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/profile_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProfileController extends Cubit<ProfileState> implements IBlocBase {
  ProfileController() : super(ProfileState());

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

  List menuProfile = [
    {
      "menu": "Profile",
    },
    {
      "menu": "Change Password",
    }
  ];

  List menuAdditional = ["Privacy", "Contact Us"];
}
