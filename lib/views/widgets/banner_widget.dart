import 'package:anuragam_website/views/components/blur_child.dart';
import 'package:anuragam_website/views/widgets/timer.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurChild(
      child: SizedBox(
        width: 800,
        child: Center(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'ANURAGAM',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    letterSpacing: 10,
                    fontSize: 103,
                    color: Colors.white,
                  ),
                ),
                const Timer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.white,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.white,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.white,
                    ),
                  ],  
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
