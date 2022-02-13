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
      text1: 'A egestas quam etiam dui leo, nisi sit fames feugiat. Nisi, sit feugiat purus, integer aenean tortor orci.',
      text2: 'A egestas quam etiam dui leo, nisi sit fames feugiat. Nisi, sit feugiat purus, integer aenean tortor orci.A egestas quam etiam dui leo, nisi sit fames feugiat. Nisi, sit feugiat ....',
      imagePath: 'assets/receive_song.png',
      onPressed: () async {
        final songSubmission = await SubmissionInterface.getSongSubmission();
        await launch(songSubmission.link);
      },
    );
  }
}