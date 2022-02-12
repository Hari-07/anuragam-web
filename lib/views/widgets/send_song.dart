import 'package:anuragam_website/controllers/submission.dart';
import 'package:anuragam_website/models/song_submission.dart';
import 'package:flutter/material.dart';

class SendSong extends StatefulWidget {
  const SendSong({ Key? key }) : super(key: key);

  @override
  _SendSongState createState() => _SendSongState();
}

class _SendSongState extends State<SendSong> {
  SongSubmission _songSubmission = SongSubmission.empty();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 50,
            child: TextFormField(
              onChanged: (value) {
                setState(() {
                  _songSubmission.link = value;
                });
              },
            ),
          ),
          //The text can say "Reach me at"
          TextButton(
            child: const Text('Send'),
            onPressed: () async {
              if(_songSubmission.isValid()) {
                await SubmissionInterface.addSongSubmission(_songSubmission);
              }
            },
          )
        ],
      ),
    );
  }
}