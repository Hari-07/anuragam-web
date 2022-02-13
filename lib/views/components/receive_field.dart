import 'package:flutter/material.dart';

import 'custom_button.dart';

class ReceiveTemplate extends StatelessWidget {
  const ReceiveTemplate({
    Key? key,
    required this.title,
    required this.text1,
    required this.text2,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final String text1;
  final String text2;
  final String imagePath;
  final Function onPressed;

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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      text1,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Image.asset(imagePath))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text2,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const Spacer(),
          AnuragamButton(
            onPressed: () {
              onPressed();
            },
            text: 'Receive',
          )
          // const TextButton(onPressed: onPressed, child: child,)
        ],
      ),
    );
  }
}
