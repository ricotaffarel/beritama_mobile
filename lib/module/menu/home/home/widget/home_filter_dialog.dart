// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:beritama/core.dart';
import 'package:beritama/module/menu/home/home/widget/home_search_link.dart';
import 'package:beritama/module/menu/home/home/widget/home_search_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeFilterDialog extends StatefulWidget {
  const HomeFilterDialog({Key? key}) : super(key: key);

  @override
  State<HomeFilterDialog> createState() => _HomeFilterDialogState();
}

class _HomeFilterDialogState extends State<HomeFilterDialog> {
  int indexCategory = 0;
  int indexChecked = 0;
  int indexFilter = 0;
  List category = [
    "Pemilu",
    "Olahraga",
    "Hiburan",
    "Sains & Teknologi",
    "Kesehatan",
    "Agama",
    "Budaya"
  ];
  List filter = [
    "Terbaru",
    "Minggu Ini",
    "Bulan Ini",
  ];
  List checkedNews = ["Link Berita", "Judul & Isi Berita"];

  updateIndexCategory(int i) {
    indexCategory = i;
    setState(() {});
  }

  updateIndexChecked(int i) {
    indexChecked = i;
    setState(() {});
  }

  updateIndexFilter(int i) {
    indexFilter = i;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Kategori Berita",
          style: GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Wrap(
          children: [
            for (var i = 0; i < category.length; i++)
              InkWell(
                onTap: () {
                  updateIndexCategory(i);
                },
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.only(right: 10.0, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    color:
                        indexCategory == i ? primaryColor : Colors.transparent,
                    border: Border.all(
                      width: 1.0,
                      color: primaryColor,
                    ),
                  ),
                  child: Text(
                    category[i],
                    style: TextStyle(
                      fontSize: 13.0,
                      color: indexCategory == i ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
          ],
        ),
        Text(
          "Waktu Berita",
          style: GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Wrap(
          children: [
            for (var i = 0; i < filter.length; i++)
              InkWell(
                onTap: () {
                  updateIndexFilter(i);
                },
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.only(right: 10.0, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    color: indexFilter == i ? primaryColor : Colors.transparent,
                    border: Border.all(
                      width: 1.0,
                      color: primaryColor,
                    ),
                  ),
                  child: Text(
                    filter[i],
                    style: TextStyle(
                      fontSize: 13.0,
                      color: indexFilter == i ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
          ],
        ),
        Text(
          "Cari Kebenaran Berita",
          style: GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            for (var i = 0; i < checkedNews.length; i++)
              InkWell(
                onTap: () {
                  updateIndexChecked(i);
                  Get.back();
                  if (indexChecked == 0) {
                    CustomShowDialog.showDialogWidget(
                        context, HomeSearchLink());
                  } else {
                    CustomShowDialog.showDialogWidget(
                        context, HomeSearchText());
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.only(right: 10.0, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    color: primaryColor,
                    border: Border.all(
                      width: 1.0,
                      color: primaryColor,
                    ),
                  ),
                  child: Text(
                    checkedNews[i],
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            Expanded(
                child: QButton(label: "Close", onPressed: () => Get.back())),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
                child: QButton(label: "Filter", onPressed: () => Get.back()))
          ],
        ),
      ],
    );
  }
}
