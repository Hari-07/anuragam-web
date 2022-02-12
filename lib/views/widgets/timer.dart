import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:slide_countdown/slide_countdown.dart';

// int endtime = DateTime.now().microsecondsSinceEpoch + 1000 * 30;

// class Timer extends StatelessWidget {
//   const Timer({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CountdownTimer(
//       endTime: endtime,
//       widgetBuilder: (_,CurrentRemainingTime time){},
//     );
//   }
// }

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SlideCountdownSeparated(
      separator: '',
      duration: Duration(minutes: 61),
      height: 96.52,
      width: 79.7,
      showZeroValue: true,
      textStyle: TextStyle(fontSize: 52, color: Colors.white),
      slideDirection: SlideDirection.up,
      decoration: BoxDecoration(
        color: Colors.transparent,
        // borderRadius: BorderRadius.all(Radius.circular(7)),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color.fromARGB(255, 248, 155, 186),
        //     offset: Offset(4.0, 4.0),
        //     blurRadius: 5.0,
        //     spreadRadius: 1.0,
        //   )
        // ]
      ),
    );
  }
}
