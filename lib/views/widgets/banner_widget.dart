import 'package:anuragam_website/views/widgets/timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFDDB2),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Ragam Presents',
                style: TextStyle(
                  fontSize: 42,
                  color: Color(0xFFAE3032),
                  fontFamily: GoogleFonts.singleDay().fontFamily,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'ANURAGAM',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  // letterSpacing: 10,
                  fontSize: 103,
                  color: Color(0xFFAE3032),
                  fontFamily: GoogleFonts.londrinaShadow().fontFamily,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Timer(),
            ],
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: 300,
              height: 150,
              child: Image.asset('assets/banner_ill.png'),
            ),
          )
        ],
      ),
    );
  }
}
