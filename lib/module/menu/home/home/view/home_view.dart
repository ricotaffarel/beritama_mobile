import 'package:beritama/core.dart';
import 'package:beritama/module/menu/home/home/widget/home_card_news.dart';
import 'package:beritama/shared/utils/state_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:beritama/shared/widgets/textfield/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/home_controller.dart';
import '../state/home_state.dart';
import 'package:get_it/get_it.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController controller = HomeController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<HomeController>()) {
      GetIt.I.unregister<HomeController>();
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
      child: BlocListener<HomeController, HomeState>(
        listener: (context, state) {},
        child: BlocBuilder<HomeController, HomeState>(
          builder: (context, state) {
            final bloc = context.read<HomeController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    HomeController controller,
    HomeState state,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Beritama",
                      style: GoogleFonts.poppins(
                        fontSize: 23.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Icon(
                      Icons.notifications_outlined,
                      size: 27.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text("'Mencari kebenaran berita'"),
                const SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  height: 60,
                  child: CustomTextField(
                      hint: "Search",
                      readOnly: true,
                      onClick: () => Get.to(HomeNewsSearchView()),
                      prefixIcon: Icons.search,
                      suffixIcon: Icons.camera_alt,
                      onChanged: (value) {}),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                HomeCardNews1(
                  news: controller.dummyNews,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                HomeCardNews2(
                  news: controller.dummyNews,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
