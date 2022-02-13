import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_countdown/slide_countdown.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideCountdownSeparated(
      separatorStyle: const TextStyle(
        fontSize: 240,
        color: Color(0xFFAE3032),
      ),
      duration: DateTime(2022, 2, 14, 18).difference(DateTime.now()),
      height: 250,
      width: 320,
      showZeroValue: true,
      textStyle: TextStyle(
        fontSize: 240,
        color: Color(0xFFAE3032),
        fontWeight: FontWeight.bold,
      ),
      slideDirection: SlideDirection.up,
      decoration: const BoxDecoration()
    );
  }
}
