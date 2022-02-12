import 'package:anuragam_website/controllers/submission.dart';
import 'package:anuragam_website/models/submission.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class SendMessage extends StatefulWidget {
  const SendMessage({Key? key}) : super(key: key);

  @override
  State<SendMessage> createState() => _SendMessageState();
}

class _SendMessageState extends State<SendMessage> {
  Submission _submission = Submission.empty();

  @override
  Widget build(BuildContext context) {
    // return GlassmorphicContainer(
    //   width: 450,
    //   height: 450,
    //   borderRadius: 20,
    //   blur: 10,
    //   border: .5,
    //   borderGradient: LinearGradient(
    //     begin: Alignment.topLeft,
    //     end: Alignment.bottomRight,
    //     colors: [
    //       const Color(0xFFffffff).withOpacity(0.2),
    //       const Color((0xFFFFFFFF)).withOpacity(0.2),
    //     ],
    //   ),
    //   linearGradient: LinearGradient(
    //     begin: Alignment.topLeft,
    //     end: Alignment.bottomRight,
    //     colors: [
    //       const Color(0xFFffffff).withOpacity(0.2),
    //       const Color((0xFFFFFFFF)).withOpacity(0.2),
    //     ],
    //   ),
    //   child: Column(children: [
    //     const Padding(
    //       padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
    //       child: Text(
    //           "What is Lorey text of the printing a software like Aldus PageMaker including versions of Lorem Ipsum",
    //           style: TextStyle(color: Colors.white)),
    //     ),
    //     const SizedBox(
    //       height: 20,
    //     ),
    //     Form(
    //       child: Column(
    //         children: [
    //           TextFormField(
    //             style: const TextStyle(color: Colors.white),
    //             decoration: const InputDecoration(hintText: 'Name'),
    //           ),
    //           const SizedBox(
    //             height: 10,
    //           ),
    //           TextFormField(
    //             style: const TextStyle(color: Colors.white),
    //             decoration:
    //                 const InputDecoration(hintText: 'Type your message...'),
    //           ),
    //           const SizedBox(
    //             height: 10,
    //           ),
    //           ElevatedButton(onPressed: () {}, child: const Text('Send'))
    //         ],
    //       ),
    //     ),
    //   ]),
    // );
    return SizedBox(
      width: 357,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 100,
            child: Row(
              children: const [
                Text(
                  'A egestas quam etiam dui leo, nisi sit fames feugiat. Nisi, sit feugiat purus, integer aenean tortor orci.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Image(image: AssetImage('assets/sendmsg')),
              ],
            ),
          ),
          Container(
            height: 50,
            child: TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Reach me at',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
              onChanged: (value) {
                setState(() {
                  _submission.contact = value;
                });
              },
            ),
          ),
          //The text can say "Reach me at"
          Container(
            height: 50,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Message',
              ),
              onChanged: ((value) {
                _submission.message = value;
              }),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: const Text('Send'),
            onPressed: () async {
              await SubmissionInterface.addSubmission(_submission);
            },
          )
        ],
      ),
    );
  }
}

// labelText: 'Enter something',
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(width: 3, color: Colors.blue),
//                   borderRadius: BorderRadius.circular(15),