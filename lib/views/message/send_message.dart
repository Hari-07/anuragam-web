import 'package:anuragam_website/controllers/submission.dart';
import 'package:anuragam_website/models/submission.dart';
import 'package:anuragam_website/views/components/custom_button.dart';
import 'package:anuragam_website/views/components/custom_textformfield.dart';
import 'package:flutter/material.dart';

class SendMessage extends StatefulWidget {
  const SendMessage({Key? key}) : super(key: key);

  @override
  State<SendMessage> createState() => _SendMessageState();
}

class _SendMessageState extends State<SendMessage> {
  Submission _submission = Submission.empty();

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
                      'Send Message',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'This Valentine\'s, spread love not covid. Write a wholesome and heartwarming message for a stranger and make their day. You can choose to stay anonymous or drop in your name and contact to let them know that you thought about them ;)',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Image(
                  image: AssetImage('assets/sendmsg.png'),
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
                _submission.contact = value;
              });
            },
            label: 'Reach me at',
          ),
          const SizedBox(
            height: 15,
          ),
          //The text can say "Reach me at"
          AnuragamFormField(
            onChanged: ((value) {
              setState(() {
                _submission.message = value;
              });
            }),
            label: 'Message',
          ),
          const Spacer(),
          AnuragamButton(
            onPressed: () async {
              if (_submission.isValid()) {
                await SubmissionInterface.addSubmission(_submission);
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
