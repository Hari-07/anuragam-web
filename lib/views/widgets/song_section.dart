import 'package:anuragam_website/views/components/blur_child.dart';
import 'package:anuragam_website/views/components/section_header.dart';
import 'package:anuragam_website/views/song/receive_song.dart';
import 'package:anuragam_website/views/song/send_song.dart';
import 'package:flutter/material.dart';

class SongSection extends StatelessWidget {
  const SongSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurChild(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SectionHeader(
            title: 'Music is an emotion',
            subtext: 'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
          ),
          const SizedBox(
            height: 40,
          ),
          if (MediaQuery.of(context).size.width > 768) ...{
            SizedBox(
              height: 350,
              width: 900,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SendSong(),
                  ReceiveSong(),
                ],
              ),
            ),
          } else ...{
            ...[
              Container(
                  // width: 300,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  height: 400,
                  child: SendSong(),
                ),
                const SizedBox(height: 25,),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  height: 400,
                  child: ReceiveSong(),
                ),
            ]
          }
        ],
      ),
    );
  }
}
