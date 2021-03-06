import 'package:anuragam_website/controllers/submission.dart';
import 'package:anuragam_website/models/song_submission.dart';
import 'package:anuragam_website/views/components/custom_button.dart';
import 'package:anuragam_website/views/components/custom_textformfield.dart';
import 'package:flutter/material.dart';

class SendSong extends StatefulWidget {
  const SendSong({Key? key}) : super(key: key);

  @override
  State<SendSong> createState() => _SendSongState();
}

class _SendSongState extends State<SendSong> {
  SongSubmission _songSubmission = SongSubmission.empty();
  TextEditingController controllerSong = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Send Song',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Is introducing someone to good music your love language? Share your favourite song/playlist with a stranger today and make their heart, beat to your tunes. ',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Image(
                  image: AssetImage(
                    'assets/sendsong.png',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          AnuragamFormField(
            onChanged: (value) {
              setState(() {
                _songSubmission.link = value;
              });
            },
            label: 'Song link',
            controller: controllerSong,
          ),
          const SizedBox(
            height: 15,
          ),
          const Spacer(),
          AnuragamButton(
            onPressed: () async {
              if (_songSubmission.isValid()) {
                await SubmissionInterface.addSongSubmission(_songSubmission);
                controllerSong.value = TextEditingValue.empty;
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Song sent succesfully'),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Please enter valid entries'),
                  ),
                );
              }
            },
            text: 'Send',
          )
        ],
      ),
    );
  }
}
