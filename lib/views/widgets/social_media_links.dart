import 'package:anuragam_website/views/components/blur_child.dart';
import 'package:anuragam_website/views/components/section_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  // const SocialMedia({ Key? key }) : super(key: key);
  String title;
  String subtitle;
  bool isleft;
  String link;
  SocialMedia(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.isleft,
      required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurChild(
      child: Row(
        children: [
          if (isleft) ...{
            ...[
              //TODO:Youtube link display
              Expanded(child: Image.network(getYoutubeThumbnail(link))),
              const SizedBox(width: 100),
              Expanded(
                flex: 2,
                child: Column(
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
                ),
              ),
            ]
          } else ...{
            ...[
              Expanded(
                flex: 2,
                child: Column(
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
                ),
              ),
              const SizedBox(width: 100),
              //TODO:Instagram link display
              Expanded(child: Image.network(getYoutubeThumbnail(link))),
            ]
          }
        ],
      ),
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
