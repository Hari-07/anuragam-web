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
    if (MediaQuery.of(context).size.width > 768) {
      return SizedBox(
        width: 900,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (isleft) ...{
              ...[
                //TODO:Youtube link display
                const Expanded(
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
        ),
      );
    } else {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        height: 600,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SocialDescription(title: title, subtitle: ''),
            const SizedBox(
              height: 100,
            ),
            const Placeholder(),
          ],
        ),
      );
    }
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
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 18,
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
