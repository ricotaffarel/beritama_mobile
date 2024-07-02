import 'package:carousel_slider/carousel_slider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:beritama/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      body: RefreshIndicator(
        onRefresh: () async {
          await controller.getNews();
        },
        child: SafeArea(
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
                        "Hoax Chaser",
                        style: GoogleFonts.poppins(
                          fontSize: 23.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(HomeNotificationView());
                        },
                        child: const Icon(
                          Icons.notifications_outlined,
                          size: 27.0,
                        ),
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
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 60,
                          child: CustomTextField(
                              hint: "Search",
                              readOnly: true,
                              onClick: () => Get.to(HomeNewsSearchView()),
                              prefixIcon: Icons.search,
                              onChanged: (value) {}),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      InkWell(
                        onTap: () {
                          CustomShowDialog.showDialogWidget(
                              context, HomeFilterDialog());
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          child: Icon(
                            MdiIcons.filter,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Builder(builder: (context) {
                    List images = [
                      "https://mmc.tirto.id/image/otf/640x0/2017/01/08/TIRTO_1368antarafoto-anti-hoax-solo-080117-yud-1_ratio-16x9.JPG",
                      "https://static.republika.co.id/uploads/images/inpicture_slide/050527300-1661469977-hoax_153323_bigjpg.jpg"
                    ];

                    return CarouselSlider(
                      options: CarouselOptions(
                          height: MediaQuery.of(context).size.height / 4,
                          autoPlay: false,
                          enlargeCenterPage: false,
                          viewportFraction: 1),
                      items: images.map((imageUrl) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(6.0),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    imageUrl,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    );
                  }),
                  const SizedBox(
                    height: 15.0,
                  ),
                  (controller.state.loading == true)
                      ? ShimmerHomeCardNews1()
                      : HomeCardNews1(
                          news: controller.news,
                        ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  (controller.state.loading == true)
                      ? ShimmerHomeCardNews2()
                      : HomeCardNews2(
                          news: controller.news,
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
