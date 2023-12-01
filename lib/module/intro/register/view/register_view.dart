import 'package:beritama/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/register_controller.dart';
import '../state/register_state.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  RegisterController controller = RegisterController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<RegisterController>()) {
      GetIt.I.unregister<RegisterController>();
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
      child: BlocListener<RegisterController, RegisterState>(
        listener: (context, state) {},
        child: BlocBuilder<RegisterController, RegisterState>(
          builder: (context, state) {
            final bloc = context.read<RegisterController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    RegisterController controller,
    RegisterState state,
  ) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 100,
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Register",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  Text("Register to your account",
                      style: GoogleFonts.poppins(
                          fontSize: 13.0, color: Colors.grey.shade500)),
                  const SizedBox(
                    height: 50.0,
                  ),
                  CustomTextField(
                    hint: "Enter Your Name",
                    prefixIcon: Icons.abc,
                    validator: Validator.required,
                    onChanged: (value) {
                      controller.state.name = value;
                      controller.formKey.currentState!.validate();
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  CustomTextField(
                    hint: "Enter Your Email",
                    prefixIcon: Icons.mail,
                    validator: Validator.email,
                    onChanged: (value) {
                      controller.state.email = value;
                      controller.formKey.currentState!.validate();
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  CustomTextField(
                    hint: "Enter Your Password",
                    prefixIcon: Icons.password,
                    validator: Validator.password,
                    obscure: true,
                    onChanged: (value) {
                      controller.state.password = value;
                      controller.formKey.currentState!.validate();
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  CustomTextField(
                    hint: "Enter Your Password Confirmation",
                    prefixIcon: Icons.password,
                    obscure: true,
                    validator: (value) {
                      if (value != controller.state.password) {
                        return 'Password and confirm password are not the same';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      controller.state.passwordConfirmation = value;
                      controller.formKey.currentState!.validate();
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  QButton(
                      label: "Register",
                      onPressed: () {
                        if (controller.formKey.currentState!.validate() ==
                            true) {
                          Get.back();
                        }
                      }),
                  const SizedBox(
                    height: 10.0,
                  ),
                  QButton(
                      label: "Haven't an account",
                      color: Colors.grey.shade400,
                      textColor: Colors.black,
                      onPressed: () => Get.back()),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        )));
  }
}
