import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core.dart';
import '../controller/home_news_detail2_controller.dart';
import '../state/home_news_detail2_state.dart';
import 'package:get_it/get_it.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeNewsDetail2View extends StatefulWidget {
  final title;
  final desc;
  final date;
  final idNews;
  YoutubePlayerController url;

   HomeNewsDetail2View({Key? key, required this.idNews,required this.title, required this.date, required this.desc,required this.url}) : super(key: key);

  @override
  State<HomeNewsDetail2View> createState() => _HomeNewsDetail2ViewState();
}

class _HomeNewsDetail2ViewState extends State<HomeNewsDetail2View> {
  HomeNewsDetail2Controller controller = HomeNewsDetail2Controller();

  @override
  void initState() {
    if (GetIt.I.isRegistered<HomeNewsDetail2Controller>()) {
      GetIt.I.unregister<HomeNewsDetail2Controller>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );
    print("list cek ${widget.title.toString()}");
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
      child: BlocListener<HomeNewsDetail2Controller, HomeNewsDetail2State>(
        listener: (context, state) {},
        child: BlocBuilder<HomeNewsDetail2Controller, HomeNewsDetail2State>(
          builder: (context, state) {
            final bloc = context.read<HomeNewsDetail2Controller>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    HomeNewsDetail2Controller controller,
    HomeNewsDetail2State state,
  ) {
    // return Scaffold(
    //   body: Text("sata"),
    // );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Hoax Casher",
              style: GoogleFonts.poppins(
                fontSize: 19.0,
                fontWeight: FontWeight.bold,
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
                  "${widget.title}",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: YoutubePlayer(
                    controller: widget.url,
                    showVideoProgressIndicator: true,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Publish date : ${widget.date.toString()}",
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  "${widget.desc}",
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
                        news: controller.news,
                      ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () async {
          final session = SessionManager();
          await session.getId();
          CustomShowDialog.showDialogWidget(
              context,
              ShowFormDisclaimer(
                newsId: widget.idNews,
                userId: session.id!,
              ));
        },
        child: Container(
          width: 160,
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
                  fontWeight: FontWeight.w600,
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