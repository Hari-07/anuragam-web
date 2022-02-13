import 'package:anuragam_website/views/components/blur_child.dart';
import 'package:anuragam_website/views/components/section_header.dart';
import 'package:anuragam_website/views/future_self/future_img.dart';
import 'package:anuragam_website/views/future_self/send_future.dart';
import 'package:anuragam_website/views/widgets/social_media_links.dart';
import 'package:flutter/material.dart';

class FutureSection extends StatelessWidget {
  const FutureSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SectionHeader(
          title: 'Yourself',
          subtext: 'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
        ),
        const SizedBox(
          height: 40,
        ),
        if (MediaQuery.of(context).size.width > 768) ...{
          ...[
            SizedBox(
              height: 200,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FutureMessage(),
                  SizedBox(width: 100),
                  FutureImg(),
                ],
              ),
            ),
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
              height: 200,
              child: FutureMessage(),
            ),
            const SizedBox(
              height: 100,
            ),
            // Container(
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 20,
            //   ),
            //   height: 200,
            //   // child: FutureImg(),
            // ),
          ]
        },
        SocialMedia(
          title: 'Youtube',
          subtitle:
              'Mattis euismod mattis viverra fusce vestibulum duis. Auctor vel pretium egestas ut et eu dictum. In sed pulvinar interdum suspendisse. Porta nec eget ut blandit est. Fusce volutpat enim ut sit at arcu amet. Aliquam arcu, molestie sit quis.Mattis euismod mattis viverra fusce vestibulum duis. Auctor vel pretium egestas ut et eu dictum. In sed pulvinar interdum suspendisse. Porta nec eget ut blandit est. Fusce volutpat enim ut sit at arcu amet. Aliquam arcu, molestie sit quis.',
          isleft: true,
          link: 'https://youtu.be/-fv1itUt1Cc',
        ),
        const SizedBox(
          height: 100,
        ),
        SocialMedia(
          title: 'Instagram',
          subtitle:
              'Mattis euismod mattis viverra fusce vestibulum duis. Auctor vel pretium egestas ut et eu dictum. In sed pulvinar interdum suspendisse. Porta nec eget ut blandit est. Fusce volutpat enim ut sit at arcu amet. Aliquam arcu, molestie sit quis.Mattis euismod mattis viverra fusce vestibulum duis. Auctor vel pretium egestas ut et eu dictum. In sed pulvinar interdum suspendisse. Porta nec eget ut blandit est. Fusce volutpat enim ut sit at arcu amet. Aliquam arcu, molestie sit quis.',
          isleft: false,
          link: 'ab',
        ),
      ],
    );
  }
}
