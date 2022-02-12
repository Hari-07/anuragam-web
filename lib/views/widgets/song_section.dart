import 'package:anuragam_website/views/widgets/send_song.dart';
import 'package:flutter/material.dart';

class SongSection extends StatelessWidget {
  const SongSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SendSong(),
        // ReceiveMessage(),
      ],
    );
  }
}