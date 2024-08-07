// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:beritama/core.dart';
import 'package:flutter/material.dart';

class HomeSearchText extends StatefulWidget {
  const HomeSearchText({Key? key}) : super(key: key);

  @override
  State<HomeSearchText> createState() => _HomeSearchTextState();
}

class _HomeSearchTextState extends State<HomeSearchText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
            label: "Judul Berita",
            prefixIcon: Icons.abc,
            onChanged: (value) {}),
        const SizedBox(
          height: 20.0,
        ),
        CustomTextField(
            label: "Deskripsi Berita",
            prefixIcon: Icons.abc,
            onChanged: (value) {}),
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
                      await Future.delayed(Duration(seconds: 5));
                      CustomShowDialog.hideDialog(globalContext);

                      CustomShowDialog.showDialogWidget(
                          globalContext, HomeSearchResult());
                    }))
          ],
        ),
      ],
    );
  }
}
