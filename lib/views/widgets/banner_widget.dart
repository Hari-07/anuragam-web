import 'package:anuragam_website/views/widgets/timer.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFDDB2),
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.width > 768 ? MediaQuery.of(context).size.height : MediaQuery.of(context).size.height * 0.6,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 150,),
              AutoSizeText(
                'Ragam Presents',
                style: TextStyle(
                  fontSize: 32,
                  color: Color(0xFFAE3032),
                ),
                maxLines: 1,
              ),
              SizedBox(
                height: 20,
              ),
              AutoSizeText(
                'ANURAGAM',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 35,
                  letterSpacing: MediaQuery.of(context).size.width > 768 ? 30 : 10,
                  color: Color(0xFFAE3032),
                ),
                maxLines: 1,
              ),
              SizedBox(
                height: 5,
              ),
              Timer(),
            ],
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width > 768 ? MediaQuery.of(context).size.width/3 : 0.8 * MediaQuery.of(context).size.width,
              // height: 150,
              child: Image.asset('assets/banner_ill.png'),
            ),
          )
        ],
      ),
    );
  }
}
