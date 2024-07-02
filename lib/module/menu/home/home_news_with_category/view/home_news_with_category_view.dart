import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/home_news_with_category_controller.dart';
import '../state/home_news_with_category_state.dart';
import 'package:get_it/get_it.dart';
import '../widget/home_card_news.dart';

class HomeNewsWithCategoryView extends StatefulWidget {
  const HomeNewsWithCategoryView({Key? key}) : super(key: key);

  @override
  State<HomeNewsWithCategoryView> createState() =>
      _HomeNewsWithCategoryViewState();
}

class _HomeNewsWithCategoryViewState extends State<HomeNewsWithCategoryView> {
  HomeNewsWithCategoryController controller = HomeNewsWithCategoryController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<HomeNewsWithCategoryController>()) {
      GetIt.I.unregister<HomeNewsWithCategoryController>();
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
      child: BlocListener<HomeNewsWithCategoryController,
          HomeNewsWithCategoryState>(
        listener: (context, state) {},
        child: BlocBuilder<HomeNewsWithCategoryController,
            HomeNewsWithCategoryState>(
          builder: (context, state) {
            final bloc = context.read<HomeNewsWithCategoryController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    HomeNewsWithCategoryController controller,
    HomeNewsWithCategoryState state,
  ) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Dashboard"),
    //     actions: const [],
    //   ),
    //   body: SingleChildScrollView(
    //     child: Container(
    //       padding: const EdgeInsets.all(20.0),
    //       child: const Column(
    //         children: [],
    //       ),
    //     ),
    //   ),
    // );
    return DefaultTabController(
      length: controller.categoryName.length, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: Text('Berita Terkini'),
          bottom: TabBar(
            isScrollable: true,
            onTap: (value) {
              controller.getNews();
            },
            tabs: [
              for (var i = 0; i < controller.categoryName.length; i++)
                Tab(text: controller.categoryName[i].toString()),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: controller.state.loading
                    ? ShimmerHomeCardNewsWithCategory()
                    : HomeCardNewsWithCategory(
                        news: controller.news,
                      ),
              ),
              SingleChildScrollView(
                child: controller.state.loading
                    ? ShimmerHomeCardNewsWithCategory()
                    : HomeCardNewsWithCategory(
                        news: controller.news,
                      ),
              ),
              SingleChildScrollView(
                child: controller.state.loading
                    ? ShimmerHomeCardNewsWithCategory()
                    : HomeCardNewsWithCategory(
                        news: controller.news,
                      ),
              ),
              SingleChildScrollView(
                child: controller.state.loading
                    ? ShimmerHomeCardNewsWithCategory()
                    : HomeCardNewsWithCategory(
                        news: controller.news,
                      ),
              ),
              SingleChildScrollView(
                child: controller.state.loading
                    ? ShimmerHomeCardNewsWithCategory()
                    : HomeCardNewsWithCategory(
                        news: controller.news,
                      ),
              ),
              SingleChildScrollView(
                child: controller.state.loading
                    ? ShimmerHomeCardNewsWithCategory()
                    : HomeCardNewsWithCategory(
                        news: controller.news,
                      ),
              ),
              SingleChildScrollView(
                child: controller.state.loading
                    ? ShimmerHomeCardNewsWithCategory()
                    : HomeCardNewsWithCategory(
                        news: controller.news,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
