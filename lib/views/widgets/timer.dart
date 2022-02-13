import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_countdown/slide_countdown.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideCountdownSeparated(
      separatorStyle: const TextStyle(
        fontSize: 52,
        color: Color(0xFFAE3032),
      ),
      duration: DateTime(2022, 2, 14, 18).difference(DateTime.now()),
      height: 96,
      width: 100,
      showZeroValue: true,
      textStyle: TextStyle(
        fontSize: 80,
        color: Color(0xFFAE3032),
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.sourceSansPro().fontFamily,
      ),
      slideDirection: SlideDirection.up,
      decoration: const BoxDecoration()
    );
  }
}
