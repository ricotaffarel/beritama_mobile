import 'package:beritama/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    {"menu": "Profile", "to": ProfileEditView()},
    {"menu": "Ubah Password", "to": ProfileChangePasswordView()},
    {"menu": "My Event", "to": ProfileMyEventView()}
  ];

  List menuAdditional = ["Privacy", "Contact Us"];
}
