import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget(this.title, this.msg, {Key? key}) : super(key: key);
  String title;
  String msg;

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: 793,
      height: 150,
      borderRadius: 20,
      blur: 2,
      border: .5,
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0xFFffffff).withOpacity(0.2),
          const Color((0xFFFFFFFF)).withOpacity(0.2),
        ],
      ),
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromARGB(255, 10, 10, 10).withOpacity(0.15),
          Color.fromARGB(255, 0, 0, 0).withOpacity(0.15),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 36,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              msg,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
