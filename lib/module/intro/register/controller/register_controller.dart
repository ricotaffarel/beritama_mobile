import 'package:beritama/module/intro/register/service/register_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/register_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class RegisterController extends Cubit<RegisterState> implements IBlocBase {
  RegisterController() : super(RegisterState());

  final formKey = GlobalKey<FormState>();

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

  registerController() async {
    state.loading = true;
    emit(state.copyWith());

    bool result = await RegisterService().registerService(
        email: state.email, password: state.password, name: state.name);
    print("result $result");
    state.process = result;
    state.loading = false;
    emit(state.copyWith());
  }
}
