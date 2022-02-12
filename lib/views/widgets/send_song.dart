import 'package:anuragam_website/controllers/submission.dart';
import 'package:anuragam_website/models/song_submission.dart';
import 'package:flutter/material.dart';

class SendSong extends StatefulWidget {
  const SendSong({Key? key}) : super(key: key);

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Send Music',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                'A egestas quam etiam dui leo, nisi sit fames feugiat. Nisi, sit feugiat purus, integer aenean tortor orci.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),

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
              if (_songSubmission.isValid()) {
                await SubmissionInterface.addSongSubmission(_songSubmission);
              }
            },
          )
        ],
      ),
    );
  }
}
