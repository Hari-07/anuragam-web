import 'package:flutter/material.dart';

class FutureImg extends StatelessWidget {
  const FutureImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Expanded(child: Image.asset('assets/future.png')),
    );
  }
}
