import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => {launch('https://www.instagram.com/anuragam_nitc/')},
          child: const FaIcon(
            FontAwesomeIcons.instagram,
            size: 40,
            color: Color(0xFFAE3032),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        SizedBox(
          height: 30,
          child: InkWell(
            onTap: () => {launch('https://www.youtube.com/c/RagamNITC')},
            child: const FaIcon(
              FontAwesomeIcons.youtube,
              size: 40,
              color: Color(0xFFAE3032),
            ),
          ),
        )
      ],
    );
  }
}
