import 'package:anuragam_website/controllers/submission.dart';
import 'package:anuragam_website/models/submission.dart';
import 'package:anuragam_website/views/widgets/submission_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubmissionPage extends StatefulWidget {
  const SubmissionPage({ Key? key }) : super(key: key);

  @override
  State<SubmissionPage> createState() => _SubmissionPageState();
}

class _SubmissionPageState extends State<SubmissionPage> {

  int _formIndex = 0;
  final Submission _submissiondata = Submission.empty();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LinearProgressIndicator(value: _formIndex/2,),
          IndexedStack(
            index: _formIndex,
            children: [
              SubmissionField(
                hintText: 'Enter Name',
                submitFunction: (String value) {
                  setState(() {
                    _formIndex = 1;
                    _submissiondata.name = value;
                  });
                },
              ),
              SubmissionField(
                hintText: 'Enter Message',
                submitFunction: (String value) {
                  setState(() {
                    _formIndex = 2;
                    _submissiondata.message = value;
                  });
                },
              ),
              SubmissionField(
                hintText: 'Enter Contact',
                submitFunction: (String value) async {
                  setState(() {
                    _submissiondata.contact = value;
                  });
                  await SubmissionInterface.addSubmission(_submissiondata);
                  context.go('/');
                },
                isLast: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}

