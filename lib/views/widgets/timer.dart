import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideCountdownSeparated(
      separator: '',
      duration: DateTime(2022, 2, 14).difference(DateTime.now()),
      height: 96.52,
      width: 79.7,
      showZeroValue: true,
      textStyle: const TextStyle(fontSize: 52, color: Colors.white),
      slideDirection: SlideDirection.up,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
    );
  }
}
