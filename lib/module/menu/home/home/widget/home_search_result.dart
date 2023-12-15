import 'package:beritama/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSearchResult extends StatelessWidget {
  const HomeSearchResult({Key? key}) : super(key: key);

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
