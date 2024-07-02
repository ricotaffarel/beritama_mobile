import 'package:beritama/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  ProfileController controller = ProfileController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ProfileController>()) {
      GetIt.I.unregister<ProfileController>();
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
      child: BlocListener<ProfileController, ProfileState>(
        listener: (context, state) {},
        child: BlocBuilder<ProfileController, ProfileState>(
          builder: (context, state) {
            final bloc = context.read<ProfileController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ProfileController controller,
    ProfileState state,
  ) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Profile",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.blue.shade900,
          actions: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () async {
                  await session.clearSessions();
                  Get.offAll(LoginView());
                },
                icon: const Icon(
                  Icons.logout,
                  size: 24.0,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        "https://shanibacreative.com/wp-content/uploads/2020/06/membuat-foto-profil-yang-bagus-834x556.jpg",
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Abdul Ghani",
                      style: GoogleFonts.poppins(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      "Wiraswasta",
                      style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              for (var item in controller.menuProfile)
                ListTile(
                  leading: Text(
                    item["menu"].toString(),
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.chevron_right,
                  ),
                  onTap: () {
                    Get.to(item['to']);
                  },
                ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "Privacy",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              for (var item in controller.menuAdditional)
                ListTile(
                  leading: Text(
                    item.toString(),
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.chevron_right,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
