import 'package:anuragam_website/controllers/submission.dart';
import 'package:anuragam_website/views/components/receive_field.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ReceiveSong extends StatelessWidget {
  const ReceiveSong({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReceiveTemplate(
      title: 'Receive Song',
      text1: 'Ran out of good songs to listen to?',
      text2: 'Click on this button to receive a randomly curated and personal playlist/song that someone holds dear.',
      imagePath: 'assets/receive_song.png',
      onPressed: () async {
        final songSubmission = await SubmissionInterface.getSongSubmission();
        await launch(songSubmission.link);
      },
    );
  }
}