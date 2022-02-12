import 'package:anuragam_website/views/widgets/timer.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: 1049,
      height: 738.31,
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
      // ignore: prefer_const_literals_to_create_immutables
      child: Center(
        child: Container(
          width: 500,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'ANURAGAM',
                style: TextStyle(
                  letterSpacing: 5,
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              Timer(),
            ],
          ),
        ),
      ),
    );
  }
}
