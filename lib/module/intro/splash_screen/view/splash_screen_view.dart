import 'package:beritama/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  SplashScreenController controller = SplashScreenController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<SplashScreenController>()) {
      GetIt.I.unregister<SplashScreenController>();
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
      child: BlocListener<SplashScreenController, SplashScreenState>(
        listener: (context, state) async {
          if (state.splash_screen) {
            await session.getId();
            print(session.id);
            if (session.id == null) {
              Get.offAll(LoginView());
            } else {
              Get.offAll(MainNavigationView());
            }
          }
        },
        child: BlocBuilder<SplashScreenController, SplashScreenState>(
          builder: (context, state) {
            final bloc = context.read<SplashScreenController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    SplashScreenController controller,
    SplashScreenState state,
  ) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/logo.png",
          width: 170.0,
          height: 170.0,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
