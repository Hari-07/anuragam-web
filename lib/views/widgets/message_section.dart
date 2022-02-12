import 'package:anuragam_website/views/widgets/send_message.dart';
import 'package:flutter/material.dart';

class MessageSection extends StatelessWidget {
  const MessageSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SendMessage(),
        // ReceiveMessage(),
      ],
    );
  }
}