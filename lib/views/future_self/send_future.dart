import 'package:anuragam_website/views/components/custom_button.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FutureMessage extends StatefulWidget {
  const FutureMessage({Key? key}) : super(key: key);

  @override
  State<FutureMessage> createState() => _SendMessageState();
}

class _SendMessageState extends State<FutureMessage> {
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
                      'Receive a Message in the Future',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Self-love is the best love and who better to tell you that than yourself? Confused about what you just read? Well you might feel the same when you receive a letter from yourself some years down the line. Head over to future.me and write a letter to your future self. Truly a (email) blast from the past',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
