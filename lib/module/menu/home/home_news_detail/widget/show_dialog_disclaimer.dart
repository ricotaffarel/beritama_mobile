// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:io';

import 'package:beritama/core.dart';
import 'package:beritama/shared/utils/image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowDisclaimerInfo extends StatelessWidget {
  const ShowDisclaimerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hallo i'am, BOTAMA",
          style: GoogleFonts.poppins(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "I am a robot from the news application to analyze detailed news information, let's see the results !",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.grey[800],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "News Information",
          style: GoogleFonts.poppins(
            fontSize: 13.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Information",
              style: GoogleFonts.poppins(
                fontSize: 11.0,
              ),
            ),
            Text(
              "Aktual",
              style: GoogleFonts.poppins(
                fontSize: 11.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Percentagee",
              style: GoogleFonts.poppins(
                fontSize: 11.0,
              ),
            ),
            Text(
              "80",
              style: GoogleFonts.poppins(
                fontSize: 11.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Ambigous",
              style: GoogleFonts.poppins(
                fontSize: 11.0,
              ),
            ),
            Text(
              "10",
              style: GoogleFonts.poppins(
                fontSize: 11.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        QButton(
            label: "Close",
            color: Colors.red,
            onPressed: () {
              Get.back();
            })
      ],
    );
  }
}

class ShowFormDisclaimer extends StatefulWidget {
  const ShowFormDisclaimer({Key? key}) : super(key: key);

  @override
  State<ShowFormDisclaimer> createState() => _ShowFormDisclaimerState();
}

class _ShowFormDisclaimerState extends State<ShowFormDisclaimer> {
  List<File> selectedImages = [];

  Future<void> pickAndUploadImages() async {
    List<File> images = await ImageUploadUtil.pickImages(globalContext);

    if (images.isNotEmpty) {
      selectedImages = images;
      setState(() {});
      await ImageUploadUtil.uploadImages(images);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Add Disclaimer",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextField(
              hint: "Message",
              onChanged: (value) {},
              prefixIcon: Icons.abc,
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextField(
              hint: "Link",
              onChanged: (value) {},
              prefixIcon: Icons.abc,
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: pickAndUploadImages,
              child: Text('Pick and Upload Images'),
            ),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Selected Images:'),
                SizedBox(height: 8),
                // Display the selected image paths
                // for (var image in controller.selectedImages)
                //   Text(image.path),
                for (var image in selectedImages)
                  Column(
                    children: [
                      Image.file(image, height: 100, width: 100),
                      SizedBox(height: 8),
                    ],
                  ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            QButton(
              label: "Close",
              onPressed: () => Get.back(),
              color: Colors.red,
            ),
            const SizedBox(
              height: 10.0,
            ),
            QButton(
                label: "Send",
                onPressed: () async {
                  Get.back();
                  CustomShowDialog.showDialogInfo(
                      globalContext,
                      "Success Send Disclaimer",
                      Icons.check_circle,
                      Colors.green);
                  await Future.delayed(Duration(seconds: 3));
                  CustomShowDialog.hideDialog(globalContext);
                })
          ],
        ),
      ),
    );
  }
}
