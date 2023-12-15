import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/profile_change_password_controller.dart';
import '../state/profile_change_password_state.dart';
import 'package:get_it/get_it.dart';

class ProfileChangePasswordView extends StatefulWidget {
  const ProfileChangePasswordView({Key? key}) : super(key: key);

  @override
  State<ProfileChangePasswordView> createState() =>
      _ProfileChangePasswordViewState();
}

class _ProfileChangePasswordViewState extends State<ProfileChangePasswordView> {
  ProfileChangePasswordController controller =
      ProfileChangePasswordController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ProfileChangePasswordController>()) {
      GetIt.I.unregister<ProfileChangePasswordController>();
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
      child: BlocListener<ProfileChangePasswordController,
          ProfileChangePasswordState>(
        listener: (context, state) {},
        child: BlocBuilder<ProfileChangePasswordController,
            ProfileChangePasswordState>(
          builder: (context, state) {
            final bloc = context.read<ProfileChangePasswordController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ProfileChangePasswordController controller,
    ProfileChangePasswordState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileChangePassword'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Counter: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () => controller.increment(),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
