import 'package:anuragam_website/views/components/blur_child.dart';
import 'package:anuragam_website/views/components/custom_button.dart';
import 'package:anuragam_website/views/components/section_header.dart';
import 'package:anuragam_website/views/future_self/future_img.dart';
import 'package:anuragam_website/views/future_self/send_future.dart';
import 'package:anuragam_website/views/widgets/social_media_links.dart';
import 'package:anuragam_website/views/widgets/social_section.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FutureSection extends StatelessWidget {
  const FutureSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SectionHeader(
          title: 'Love Yourself',
          subtext: 'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
        ),
        const SizedBox(
          height: 40,
        ),
        if (MediaQuery.of(context).size.width > 768) ...{
          ...[
            SizedBox(
              height: 350,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  FutureMessage(),
                  SizedBox(width: 100),
                  FutureImg(),
                ],
              ),
            ),
            AnuragamButton(
              onPressed: () async {
                await launch('https://www.futureme.org/');
              },
              text: 'Send',
            ),
            const SizedBox(
              height: 100,
            ),
            const SizedBox(height: 40, child: SocialSection()),
            const SizedBox(
              height: 100,
            ),
          ]
        } else ...{
          ...[
            Container(
              // width: 300,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              height: 320,
              child: FutureMessage(),
            ),
            AnuragamButton(
              onPressed: () async {
                await launch('https://www.futureme.org/');
              },
              text: 'Send',
            ),
            const SizedBox(
              height: 100,
            ),
            const SizedBox(height: 40, child: SocialSection()),
            const SizedBox(
              height: 100,
            ),
          ]
        },
      ],
    );
  }
}
