import 'package:beritama/module/menu/home/home/model/news_model_user.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:beritama/core.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeCardNews1 extends StatelessWidget {
  final HomeNewsModel news;

  HomeCardNews1({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Berita Terbaru",
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(HomeNewsWithCategoryView());
              },
              child: Text(
                "See all",
                style: GoogleFonts.poppins(
                  fontSize: 12.0,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        SizedBox(
          height: 190.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: news.data.length,
            physics: const ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              var item = news.data[index];
              return InkWell(
                onTap: () {
                  Get.to(HomeNewsDetailView(
                    news: item,
                  ));
                },
                child: Container(
                  width: 220,
                  height: 190.0,
                  margin: const EdgeInsets.only(
                    right: 10.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 24,
                        offset: Offset(0, 11),
                      ),
                    ],
                  ),
                  child: Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 220,
                            height: 100.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  (item.fileName != null)
                                      ? "$url/uploads/news/${item.fileName.toString()}"
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
                            child: Stack(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Banner(
                                      message: item.label,
                                      location: BannerLocation.topEnd,
                                      color: Colors.red,
                                    ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 7.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.title ?? "",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.person,
                                          size: 17.0,
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        SizedBox(
                                          width: 80,
                                          child: Text(
                                            item.author ?? "",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.access_time,
                                          size: 17.0,
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        SizedBox(
                                          width: 60,
                                          child: Text(
                                            item.publishDate != null
                                                ? timeago
                                                    .format(
                                                      parseDateString(item
                                                          .publishDate
                                                          .toString()),
                                                    )
                                                    .toString()
                                                : "-",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ShimmerHomeCardNews1 extends StatelessWidget {
  const ShimmerHomeCardNews1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 3; i++)
            Container(
              width: 220,
              height: 190.0,
              margin: const EdgeInsets.only(
                right: 10.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
              ),
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 220,
                          height: 100.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 10,
                                width: 30,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class HomeCardNews2 extends StatelessWidget {
  final HomeNewsModel news;

  HomeCardNews2({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Rekomendasi Topik",
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(HomeNewsWithCategoryView());
              },
              child: Text(
                "See all",
                style: GoogleFonts.poppins(
                  fontSize: 12.0,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        ListView.builder(
          itemCount: news.data.length,
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            var item = news.data[index];
            return InkWell(
              onTap: () {
                // Get.to(HomeNewsDetailView(
                //   news: item,
                // ));
              },
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                  bottom: 10.0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent.shade700,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: Text(
                              item.newsCategory?.name ?? "Pemilu",
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Spacer(),
                          const Icon(
                            Icons.bookmark_outline,
                            color: Colors.black,
                            size: 24.0,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 100.0,
                              width: 100,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    (item.fileName != null)
                                        ? "$url/uploads/news/${item.fileName.toString()}"
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
                              child: Stack(
                                children: [
                                  Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Banner(
                                        message: item.label,
                                        location: BannerLocation.topEnd,
                                        color: Colors.red,
                                      ))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item.title ?? "",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    item.description ?? "",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.person,
                                            size: 17.0,
                                          ),
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                          SizedBox(
                                            width: 50,
                                            child: Text(
                                              item.author ?? "",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 11.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.access_time,
                                            size: 17.0,
                                          ),
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            item.publishDate != null
                                                ? timeago
                                                    .format(
                                                      parseDateString(item
                                                          .publishDate
                                                          .toString()),
                                                    )
                                                    .toString()
                                                : "-",
                                            style: TextStyle(
                                              fontSize: 11.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class HomeCardNews3 extends StatelessWidget {
  final HomeNewsModel news;

  HomeCardNews3({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          itemCount: news.data.length,
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            var item = news.data[index];
            return InkWell(
              onTap: () {
                // Get.to(HomeNewsDetailView(
                //   news: item,
                // ));
              },
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                  bottom: 10.0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent.shade700,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: Text(
                              item.newsCategory?.name ?? "Pemilu",
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Spacer(),
                          const Icon(
                            Icons.bookmark_outline,
                            color: Colors.black,
                            size: 24.0,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 100.0,
                              width: 100,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    (item.fileName != null)
                                        ? "$url/uploads/news/${item.fileName.toString()}"
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
                              child: Stack(
                                children: [
                                  Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Banner(
                                        message: item.label,
                                        location: BannerLocation.topEnd,
                                        color: Colors.red,
                                      ))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item.title ?? "",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    item.description ?? "",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.person,
                                            size: 17.0,
                                          ),
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                          SizedBox(
                                            width: 50,
                                            child: Text(
                                              item.author ?? "",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 11.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.access_time,
                                            size: 17.0,
                                          ),
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            item.publishDate != null
                                                ? timeago
                                                    .format(
                                                      parseDateString(item
                                                          .publishDate
                                                          .toString()),
                                                    )
                                                    .toString()
                                                : "-",
                                            style: TextStyle(
                                              fontSize: 11.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class HomeCardNews4 extends StatelessWidget {
  final NewsModelByUser news;
  HomeCardNews4({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          itemCount: news.data.length,
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            var item = news.data[index];
            final newUrl =
                item.url.replaceAll("https://www.youtube.com/watch?v=", "");
            YoutubePlayerController ytCon = YoutubePlayerController(
                initialVideoId: newUrl,
                flags: YoutubePlayerFlags(
                  autoPlay: false,
                  mute: false,
                ));
            if (news.data.length == 0) {
              return Center(
                  child: Image.network(
                "https://sitasing.instiki.ac.id/app-assets/images/pages/no-data-found.png",
                width: MediaQuery.of(context).size.width - 50,
                height: 400,
              ));
            } else {
              return InkWell(
                onTap: () {
                  Get.to(HomeNewsDetail2View(
                    // news: item,
                    idNews: item.news?.id ?? "",
                    title: item.news?.title ?? "-",
                    desc: item.news?.description ?? "-",
                    date: item.news?.publishDate ?? "-",
                    url: ytCon,
                  ));
                },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 24,
                        offset: Offset(0, 11),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.blueAccent.shade700,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Text(
                                item.news?.newsCategory ?? "Pemilu",
                                style: TextStyle(
                                  fontSize: 11.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Spacer(),
                            const Icon(
                              Icons.bookmark_outline,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100.0,
                                width: 100,
                                child: YoutubePlayer(
                                  controller: ytCon,
                                  showVideoProgressIndicator: true,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      item.news?.title ?? "",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      item.news?.description ?? "",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.person,
                                              size: 17.0,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            SizedBox(
                                              width: 50,
                                              child: Text(
                                                item.news?.author ?? "",
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 11.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.access_time,
                                              size: 17.0,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            Text(
                                              item.news?.publishDate != null
                                                  ? timeago
                                                      .format(
                                                        parseDateString(item
                                                            .news!.publishDate
                                                            .toString()),
                                                      )
                                                      .toString()
                                                  : "-",
                                              style: TextStyle(
                                                fontSize: 11.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}

class ShimmerHomeCardNews2 extends StatelessWidget {
  const ShimmerHomeCardNews2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recommendation Topic",
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(HomeNewsWithCategoryView());
              },
              child: Text(
                "See all",
                style: GoogleFonts.poppins(
                  fontSize: 12.0,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        ListView.builder(
          itemCount: 3,
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                bottom: 10.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
              ),
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 10.0,
                            width: 150.0,
                            color: Colors.white,
                          ),
                          Spacer(),
                          Container(
                            height: 10.0,
                            width: 150.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 100,
                              height: 100.0,
                              // margin: const EdgeInsets.only(
                              //   right: 10.0,
                              // ),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 24,
                                    offset: Offset(0, 11),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 10.0,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Container(
                                    height: 10.0,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Container(
                                    height: 8.0,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 8.0,
                                        width: 80.0,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        height: 8.0,
                                        width: 80.0,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
