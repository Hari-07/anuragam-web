import 'package:anuragam_website/views/widgets/banner_widget.dart';
import 'package:anuragam_website/views/widgets/message_section.dart';
import 'package:anuragam_website/views/widgets/social_media_links.dart';
import 'package:anuragam_website/views/widgets/song_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/anuragm.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BannerWidget(),
              const SizedBox(
                height: 100,
              ),
              const MessageSection(),
              const SizedBox(
                height: 100,
              ),
              const SongSection(),
              const SizedBox(
                height: 100,
              ),
              // SocialMedia(
              //     title: 'Youtube',
              //     subtitle:
              //         'Mattis euismod mattis viverra fusce vestibulum duis. Auctor vel pretium egestas ut et eu dictum. In sed pulvinar interdum suspendisse. Porta nec eget ut blandit est. Fusce volutpat enim ut sit at arcu amet. Aliquam arcu, molestie sit quis.Mattis euismod mattis viverra fusce vestibulum duis. Auctor vel pretium egestas ut et eu dictum. In sed pulvinar interdum suspendisse. Porta nec eget ut blandit est. Fusce volutpat enim ut sit at arcu amet. Aliquam arcu, molestie sit quis.',
              //     isleft: true,
              //     link: 'https://youtu.be/-fv1itUt1Cc'),
              // const SizedBox(
              //   height: 100,
              // ),
              // SocialMedia(
              //     title: 'Instagram',
              //     subtitle:
              //         'Mattis euismod mattis viverra fusce vestibulum duis. Auctor vel pretium egestas ut et eu dictum. In sed pulvinar interdum suspendisse. Porta nec eget ut blandit est. Fusce volutpat enim ut sit at arcu amet. Aliquam arcu, molestie sit quis.Mattis euismod mattis viverra fusce vestibulum duis. Auctor vel pretium egestas ut et eu dictum. In sed pulvinar interdum suspendisse. Porta nec eget ut blandit est. Fusce volutpat enim ut sit at arcu amet. Aliquam arcu, molestie sit quis.',
              //     isleft: false,
              //     link: 'ab')
            ],
          ),
        ),
      ),
    );
  }
}


                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                // ElevatedButton(
                //   onPressed: () {
                //     context.go('/receive');
                //   },
                //   child: const Text('Get Love'),
                // ),
                //     const SizedBox(
                //       width: 20,
                //     ),
                //     ElevatedButton(
                //       onPressed: () {
                //         context.go('/give');
                //       },
                //       child: const Text('Send Love'),
                //     ),
                //   ],
                // ),