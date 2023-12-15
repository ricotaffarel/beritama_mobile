import 'package:beritama/core.dart';
import 'package:beritama/module/menu/home/home/widget/home_card_news.dart';
import 'package:beritama/module/menu/home/home_news_detail/widget/show_dialog_disclaimer.dart';
import 'package:beritama/shared/utils/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/home_news_detail_controller.dart';
import '../state/home_news_detail_state.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeNewsDetailView extends StatefulWidget {
  final HomeNewsModel news;

  const HomeNewsDetailView({Key? key, required this.news}) : super(key: key);

  @override
  State<HomeNewsDetailView> createState() => _HomeNewsDetailViewState();
}

class _HomeNewsDetailViewState extends State<HomeNewsDetailView> {
  HomeNewsDetailController controller = HomeNewsDetailController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<HomeNewsDetailController>()) {
      GetIt.I.unregister<HomeNewsDetailController>();
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
      child: BlocListener<HomeNewsDetailController, HomeNewsDetailState>(
        listener: (context, state) {},
        child: BlocBuilder<HomeNewsDetailController, HomeNewsDetailState>(
          builder: (context, state) {
            final bloc = context.read<HomeNewsDetailController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    HomeNewsDetailController controller,
    HomeNewsDetailState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "BERITAMA",
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
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                CustomShowDialog.showDialogWidget(
                  context,
                  ShowDisclaimerInfo(),
                );
              },
              child: const Icon(
                Icons.warning,
                size: 24.0,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.news.newsTitle!,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 160.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        (widget.news.fileName != null)
                            ? "$url/uploads/news/${widget.news.fileName.toString()}"
                            : "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        8.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Publish date : ${widget.news.createdAt.toString().substring(0, 10)}",
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  widget.news.newsDescription!,
                  maxLines: controller.state.seeMore ? null : 3,
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                InkWell(
                  onTap: () {
                    controller.seeMore();
                  },
                  child: Text(
                    controller.state.seeMore ? "Hide......." : "See more......",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.blueAccent.shade700,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                (controller.state.loading == true)
                    ? ShimmerHomeCardNews2()
                    : HomeCardNews2(
                        news: controller.state.news,
                      ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          CustomShowDialog.showDialogWidget(context, ShowFormDisclaimer());
        },
        child: Container(
          width: 150,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
            color: Colors.red,
          ),
          child: Row(
            children: [
              const Icon(
                Icons.warning_amber_rounded,
                size: 24.0,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                "Disclaimer News",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
