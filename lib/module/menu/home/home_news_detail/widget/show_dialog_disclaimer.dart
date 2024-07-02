// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:io';

import 'package:beritama/core.dart';
import 'package:beritama/module/menu/home/home_news_detail/service/home_news_detail_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ShowDisclaimerInfo extends StatelessWidget {
  List keyword = [
    "Survei",
    "Pasien",
    "Korban",
    "Banyak Korban",
    "Pemilu",
    "Pelanggaran dan Kontroversi",
    "Dampak Sosial dan Ekonomi",
    "Pemberitaan Media",
    "Lintas Media",
    "Kebakaran",
    "Geopolitik"
  ];
  List ambigu = [
    "Baju ini jelek",
    "Dia makan apel di taman",
    "Israel Mati konyol",
    "Serangan brutal membuat israel konyol",
    "Indonesia negara maju"
  ];

  ShowDisclaimerInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hallo i'am, BOTCHASER",
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
        Text(
          "Keyword",
          style: GoogleFonts.poppins(
            fontSize: 11.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          keyword.toString(),
          style: GoogleFonts.poppins(
            fontSize: 11.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "Ambigu",
          style: GoogleFonts.poppins(
            fontSize: 11.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          ambigu.toString(),
          style: GoogleFonts.poppins(
            fontSize: 11.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10.0,
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
  final String userId;
  final String newsId;

  const ShowFormDisclaimer(
      {Key? key, required this.userId, required this.newsId})
      : super(key: key);

  @override
  State<ShowFormDisclaimer> createState() => _ShowFormDisclaimerState();
}

class _ShowFormDisclaimerState extends State<ShowFormDisclaimer> {
  File? image;
  String reason = "";
  String link = "";
  bool loading = false;
  final formKey = GlobalKey<FormState>();
  bool success = false;

  Future<void> pickAndUploadImages() async {
    XFile? images = await ImagePicker().pickImage(source: ImageSource.gallery);
    image = File(images!.path);
    setState(() {});
  }

  debunking() async {
    loading = true;
    setState(() {});

    success = await HomeNewsDetailService().debunking(
        reason: reason,
        envidenceLink: link,
        image: image!,
        userId: widget.userId,
        newsId: widget.newsId);

    loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
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
                hint: "Reason",
                validator: Validator.required,
                onChanged: (value) {
                  reason = value;
                },
                prefixIcon: Icons.abc,
              ),
              const SizedBox(
                height: 10.0,
              ),
              CustomTextField(
                hint: "Envidence Link",
                validator: Validator.required,
                onChanged: (value) {
                  link = value;
                },
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
                  SizedBox(height: 10),
                  if (image != null)
                    Column(
                      children: [
                        Image.file(image!, height: 100, width: 100),
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
                    if (formKey.currentState!.validate() == true) {
                      CustomShowDialog.showLoadingDialog(context, "Loading");
                      // await debunking();
                      await Future.delayed(Duration(seconds: 1));

                      CustomShowDialog.hideDialog(globalContext);
                      // if (success) {
                      CustomShowDialog.showDialogInfo(
                          globalContext,
                          "Success Send Disclaimer",
                          Icons.check_circle,
                          Colors.green);
                      await Future.delayed(Duration(seconds: 2));
                      CustomShowDialog.hideDialog(globalContext);
                      Get.back();
                      // }
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
