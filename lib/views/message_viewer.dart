import 'package:anuragam_website/controllers/submission.dart';
import 'package:anuragam_website/models/submission.dart';
import 'package:flutter/material.dart';

class MessageViewer extends StatelessWidget {
  const MessageViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MessageContent(),
      ),
    );
  }
}

class MessageContent extends StatefulWidget {
  const MessageContent({Key? key}) : super(key: key);

  @override
  _MessageContentState createState() => _MessageContentState();
}

class _MessageContentState extends State<MessageContent> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SubmissionInterface.getSubmission(),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.done){
          return Text('${snapshot.data}');
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
