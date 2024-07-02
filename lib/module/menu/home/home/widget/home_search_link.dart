// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:convert';
import 'dart:math';

import 'package:beritama/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeSearchLink extends StatefulWidget {
  HomeSearchLink({Key? key}) : super(key: key);
  String url = "";

  urlRequest() async {
    final session = SessionManager();

    await session.getId();
    var response = await Dio().post(
      "https://be-hoax-chaser.dzikrifaza.my.id/url-req/sendUrl",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "url": url,
        "userId": session.id,
      },
    );

    print(response.data);
  }

  @override
  State<HomeSearchLink> createState() => _HomeSearchLinkState();
}

class _HomeSearchLinkState extends State<HomeSearchLink> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
            label: "Masukan Link",
            prefixIcon: Icons.abc,
            onChanged: (value) {
              widget.url = value;
            }),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            Expanded(
                child: QButton(label: "Close", onPressed: () => Get.back())),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
                child: QButton(
                    label: "Search",
                    onPressed: () async {
                      Get.back();

                      CustomShowDialog.showLoadingDialog(
                          globalContext, "Loading..");
                      await widget.urlRequest();
                      await Future.delayed(Duration(seconds: 1));
                      CustomShowDialog.hideDialog(globalContext);

                      CustomShowDialog.showDialogWidget(
                          globalContext,
                          Column(
                            children: [
                              Icon(
                                MdiIcons.checkCircle,
                                color: Colors.green,
                                size: 40,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                "Sukses Check URL",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                "Silahkan cek hasil analisa berita di menu (check berita)",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              QButton(
                                  label: "Close",
                                  onPressed: () {
                                    Get.back();
                                  })
                            ],
                          ));
                    }))
          ],
        ),
      ],
    );
  }
}

class HomeSearchLinkVidio extends StatefulWidget {
  HomeSearchLinkVidio({Key? key}) : super(key: key);
  String url = "";

  urlRequest() async {
//     List<String> topics = [
//       "politik di Israel",
//       "politik di Amerika",
//       "ekonomi",
//       "pendidikan",
//       "teknologi",
//       "kesehatan",
//       "lingkungan",
//       "budaya",
//       "olahraga",
//       "hiburan",
//       "pariwisata",
//       "sains",
//       "hukum",
//       "agama",
//       "militer",
//       "kriminalitas",
//       "transportasi",
//       "makanan dan minuman",
//       "literatur",
//       "musik"
//     ];

//     // Randomly select one topic
//     String selectedTopic = topics[Random().nextInt(topics.length)];

//
// buatkan saya berita random berbahasa inggris, silahkan pilih topik salah satu berita $selectedTopic dan berikan saya respon berupa json. response nya seperti ini

// {
//   "title": berisi judul berita berbahasa inggris,
//   "description" : berisi desc berita berbahasa inggris,
//   "author": youtube,
//   "source": youtube,
//   "publish_date": contoh nya 2024-06-30T00:00:00.000Z,
//   "news_keywords": berisi keyword,
//   "ambigous_keywords": "-",
//   "is_training": diisi true saja,
//   "label": pilih antara "aktual" atau "hoax"
// }
// """;
//     print(prompt);

//     await session.getId();
//     await session.getToken();
//     var responseMl = await Dio().post(
//       "$urlMl/botama",
//       options: Options(
//         headers: {
//           "Content-Type": "application/json",
//         },
//       ),
//       data: {
//         "prompt": prompt,
//       },
//     );

//     String responseData = responseMl.data['data'];
//     responseData = responseData.replaceAll("```json", "");
//     responseData = responseData.replaceAll("```", "");
//     final data = jsonDecode(responseData);

//     print("title ${data['title']}");

//     var response = await Dio().post(
//       "https://be-hoax-chaser.dzikrifaza.my.id/news/createOrUpdate",
//       options: Options(
//         headers: {
//           "Content-Type": "application/json",
//           "Authorization": session.token
//         },
//       ),
//       data: {
//         "title": data['title'],
//         "description": data['description'],
//         "author": data['author'],
//         "source": data['source'],
//         "publish_date": data['publish_date'],
//         "news_keywords": data['news_keywords'],
//         "ambigous_keywords": data['ambigous_keywords'],
//         "is_training": true,
//         "label": data['label'],
//       },
//     );
    final session = SessionManager();
    await session.getId();
    var response = await Dio().post(
      "$urlMl/prediction/video",
      options: Options(
        headers: {
          "Content-Type": "application/json",
          // "Authorization": session.token
        },
      ),
      data: {"url": url, "userId": "b6881ea8-9676-4eed-8cc5-ddcbcb5f3800"},
    );
    print(response.data);
  }

  @override
  State<HomeSearchLinkVidio> createState() => _HomeSearchLinkVidioState();
}

class _HomeSearchLinkVidioState extends State<HomeSearchLinkVidio> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
            label: "Masukan Link Vidio",
            prefixIcon: Icons.abc,
            onChanged: (value) {
              widget.url = value;
            }),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            Expanded(
                child: QButton(label: "Close", onPressed: () => Get.back())),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
                child: QButton(
                    label: "Search",
                    onPressed: () async {
                      Get.back();
                      CustomShowDialog.showLoadingDialog(
                          globalContext, "Loading..");
                      await widget.urlRequest();
                      await Future.delayed(Duration(seconds: 1));
                      CustomShowDialog.hideDialog(globalContext);

                      CustomShowDialog.showDialogWidget(
                          globalContext,
                          Column(
                            children: [
                              Icon(
                                MdiIcons.checkCircle,
                                color: Colors.green,
                                size: 40,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                "Sukses Check URL",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                "Silahkan cek hasil analisa berita di menu (check berita)",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              QButton(
                                  label: "Close",
                                  onPressed: () {
                                    Get.back();
                                  })
                            ],
                          ));
                    }))
          ],
        ),
      ],
    );
  }
}
