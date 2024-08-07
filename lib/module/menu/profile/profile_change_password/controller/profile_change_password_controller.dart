import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/profile_change_password_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProfileChangePasswordController extends Cubit<ProfileChangePasswordState>
    implements IBlocBase {
  ProfileChangePasswordController() : super(ProfileChangePasswordState());

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

  final formKey = GlobalKey<FormState>();

  increment() {
    state.counter++;
    emit(state.copyWith());
  }
}
