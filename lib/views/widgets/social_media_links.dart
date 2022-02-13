import 'package:anuragam_website/views/components/blur_child.dart';
import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  String title;
  String subtitle;
  bool isleft;
  String link;
  SocialMedia({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.isleft,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isleft) ...{
          ...[
            //TODO:Youtube link display
            Expanded(
              // child: Image.network(
              //   getYoutubeThumbnail(link),
              // ),
              child: Placeholder(),
            ),
            const SizedBox(width: 100),
            Expanded(
              flex: 2,
              child: SocialDescription(
                title: title,
                subtitle: subtitle,
              ),
            ),
          ]
        } else ...{
          ...[
            Expanded(
              flex: 2,
              child: SocialDescription(title: title, subtitle: subtitle),
            ),
            const SizedBox(width: 100),
            Expanded(
              // child: Image.network(
              //   getYoutubeThumbnail(link),
              // ),
              child: Container(
                child: Placeholder(),
              ),
            ),
          ]
        }
      ],
    );
  }
}

class SocialDescription extends StatelessWidget {
  const SocialDescription({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

String getYoutubeThumbnail(String videoUrl) {
  final Uri? uri = Uri.tryParse(videoUrl);
  // if (uri == null) {
  //   return null;
  // }

  return 'https://img.youtube.com/vi/${uri?.queryParameters['v']}/0.jpg';
}
