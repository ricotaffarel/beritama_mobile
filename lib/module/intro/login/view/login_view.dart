import 'package:beritama/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/login_controller.dart';
import '../state/login_state.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginController controller = LoginController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<LoginController>()) {
      GetIt.I.unregister<LoginController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => controller,
      child: BlocListener<LoginController, LoginState>(
        listener: (context, state) {
          if (state.loading) {
            CustomShowDialog.showLoadingDialog(context, "Loading");
          }

          if (state.loading == false) {
            CustomShowDialog.hideDialog(
              context,
            );
            if (state.isLogin) {
              Get.offAll(MainNavigationView());
            }
          }
        },
        child: BlocBuilder<LoginController, LoginState>(
          builder: (context, state) {
            final bloc = context.read<LoginController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    LoginController controller,
    LoginState state,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Login",
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 7.0,
                ),
                Text("Hi! welcome back, you've been missed",
                    style: GoogleFonts.poppins(
                        fontSize: 13.0, color: Colors.grey.shade500)),
                const SizedBox(
                  height: 50.0,
                ),
                Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        hint: "Email",
                        validator: Validator.email,
                        prefixIcon: Icons.mail,
                        onChanged: (value) {
                          controller.state.email = value;
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      CustomTextField(
                        hint: "Password",
                        validator: Validator.password,
                        prefixIcon: Icons.password,
                        obscure: true,
                        onChanged: (value) {
                          controller.state.password = value;
                        },
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: const Text("Forgot Password")),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                QButton(
                  label: "Login",
                  onPressed: () {
                    if (controller.formKey.currentState!.validate() == true) {
                      controller.loginController();
                    }
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                QButton(
                  label: "Register",
                  color: Colors.grey.shade200,
                  textColor: Colors.black,
                  onPressed: () => Get.to(RegisterView()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
