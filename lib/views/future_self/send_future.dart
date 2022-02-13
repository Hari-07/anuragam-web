import 'package:anuragam_website/views/components/custom_button.dart';

import 'package:flutter/material.dart';

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
                      'Recieve Future Message',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'A egestas quam etiam dui leo, nisi sit fames feugiat. Nisi, sit feugiat purus, integer aenean tortor orci.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
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
          const Spacer(),
          AnuragamButton(
            onPressed: () {},
            text: 'Send',
          )
        ],
      ),
    );
  }
}
