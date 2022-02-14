import 'package:anuragam_website/controllers/submission.dart';
import 'package:anuragam_website/views/components/receive_field.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ReceiveMessage extends StatelessWidget {
  const ReceiveMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReceiveTemplate(
      title: 'Receive Message',
      text1:
          'Feeling a bit lonely on Valentine\'s? Don\'t worry, there\'s no scarcity of love today',
      text2:
          'Click on the receive button to receive a message written by a stranger and who knows, maybe a dose of unfiltered and unconditional love is what you might need',
      imagePath: 'assets/receive_message.png',
      onPressed: () async {
        final submission = await SubmissionInterface.getSubmission();
        print(submission);
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: 
                // height: 400,
                // child: 
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      submission.message,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                //     AutoSizeText(
                //       '-' + submission.contact,
                //       style: TextStyle(
                //         fontSize: 18,
                //       ),
                //       textAlign: TextAlign.right,
                //     )
                const SizedBox(height: 10,),
                    Text(
                      '- ' + submission.contact,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.right,
                    )
                  ],
                ),
              // ),
            );
          },
        );
      },
    );
  }
}
