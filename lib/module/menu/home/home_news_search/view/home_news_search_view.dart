import 'package:beritama/core.dart';
import 'package:beritama/module/menu/home/home_news_search/widget/home_news_search_card.dart';
import 'package:beritama/shared/utils/state_util.dart';
import 'package:beritama/shared/widgets/textfield/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/home_news_search_controller.dart';
import '../state/home_news_search_state.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeNewsSearchView extends StatefulWidget {
  const HomeNewsSearchView({Key? key}) : super(key: key);

  @override
  State<HomeNewsSearchView> createState() => _HomeNewsSearchViewState();
}

class _HomeNewsSearchViewState extends State<HomeNewsSearchView> {
  HomeNewsSearchController controller = HomeNewsSearchController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<HomeNewsSearchController>()) {
      GetIt.I.unregister<HomeNewsSearchController>();
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
      child: BlocListener<HomeNewsSearchController, HomeNewsSearchState>(
        listener: (context, state) {},
        child: BlocBuilder<HomeNewsSearchController, HomeNewsSearchState>(
          builder: (context, state) {
            final bloc = context.read<HomeNewsSearchController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    HomeNewsSearchController controller,
    HomeNewsSearchState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            size: 25.0,
          ),
        ),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "RESULTAMA",
              style: GoogleFonts.poppins(
                fontSize: 19.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "'Mencari Kebenaran Berita'",
              style: TextStyle(
                fontSize: 11.0,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                  child: CustomTextField(
                      hint: "Search",
                      prefixIcon: Icons.search,
                      onChanged: (value) {
                        state.search = value;
                      }),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                // Text(
                //   "Indentify result:",
                //   style: TextStyle(
                //     fontSize: 13.0,
                //     fontWeight: FontWeight.w600,
                //   ),
                // ),
                // const SizedBox(
                //   height: 10.0,
                // ),
                // HomeCardNews1(
                //   news: controller.state.,
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
