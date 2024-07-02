import 'package:beritama/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
        title: const Text('Ubah Password'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextField(
                  hint: "New Password",
                  prefixIcon: Icons.password,
                  validator: Validator.password,
                  obscure: true,
                  onChanged: (value) {}),
              const SizedBox(
                height: 15.0,
              ),
              CustomTextField(
                  hint: "Password Conformation",
                  validator: Validator.password,
                  prefixIcon: Icons.password,
                  obscure: true,
                  onChanged: (value) {}),
              const SizedBox(
                height: 25.0,
              ),
              QButton(
                  label: "Ubah Password",
                  onPressed: () async {
                    if (controller.formKey.currentState!.validate() == true) {
                      CustomShowDialog.showLoadingDialog(context, "Loading");
                      await Future.delayed(Duration(seconds: 2));
                      CustomShowDialog.hideDialog(context);
                      CustomShowDialog.showDialogWidget(
                          context,
                          Column(
                            children: [
                              Icon(
                                MdiIcons.checkCircle,
                                color: Colors.green,
                                size: 40,
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "Berhasil Ubah Password",
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              )
                            ],
                          ));
                      await Future.delayed(Duration(seconds: 2));
                      CustomShowDialog.hideDialog(context);
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
