import 'package:beritama/module/intro/login/service/login_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/login_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class LoginController extends Cubit<LoginState> implements IBlocBase {
  LoginController() : super(LoginState());

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

  loginController() async {
    state.loading = true;
    emit(state.copyWith());

    bool result = await LoginService()
        .loginService(email: state.email, password: state.password);
    print("result $result");
    state.isLogin = result;
    state.loading = false;
    emit(state.copyWith());
  }
}
