import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_countdown/slide_countdown.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int endTime = DateTime(2022, 2, 14, 18).millisecondsSinceEpoch;
    return CountdownTimer(
      endTime: endTime,
      widgetBuilder: (_, CurrentRemainingTime? time) {
        if (time == null) {
          return Text('Game over');
        } else if (time.hours != null) {
          return TimerText(
            time.hours.toString().padLeft(2, '0') + ':' + time.min.toString().padLeft(2, '0') + ':' + time.sec.toString().padLeft(2, '0'),
          );
        } else if(time.min != null) {
          return TimerText(
            '00 :' + time.min.toString().padLeft(2, '0') +':' + time.sec.toString().padLeft(2, '0'),
          );
        } else {
          return TimerText(
            '00 : 00 :' +  time.sec.toString().padLeft(2, '0'),
          );
        }
      },
    );
  }
}

class TimerText extends StatelessWidget {
  const TimerText(this.string ,{ Key? key}) : super(key: key);

  final String string;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      string,
      maxLines: 1,
      style: const TextStyle(
        fontSize: 240,
        color: Color(0xFFAE3032),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
