import 'package:anuragam_website/views/components/blur_child.dart';
import 'package:anuragam_website/views/components/section_header.dart';
import 'package:anuragam_website/views/message/receive_message.dart';
import 'package:anuragam_website/views/message/send_message.dart';
import 'package:flutter/material.dart';

class MessageSection extends StatelessWidget {
  const MessageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SectionHeader(
          title: 'Share your love',
          subtext: 'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
        ),
        const SizedBox(
          height: 40,
        ),
        if (MediaQuery.of(context).size.width > 768) ...{
          ...[
            SizedBox(
              height: 350,
              width: 900,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SendMessage(),
                  ReceiveMessage(),
                ],
              ),
            ),
          ]
        } else
          ...{
            ...[
              Container(
                // width: 300,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: 400,
                child: SendMessage(),
              ),
              const SizedBox(height: 25,),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: 400,
                child: ReceiveMessage(),
              ),
            ]
          }
      ],
    );
  }
}
