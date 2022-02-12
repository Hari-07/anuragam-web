import 'package:flutter/material.dart';

class AnuragamButton extends StatelessWidget {
  const AnuragamButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        onPressed();
      },
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
      style: OutlinedButton.styleFrom(
        // padding: const EdgeInsets.symmetric(
        //   horizontal: 25,
        //   vertical: 15,
        // ),
        side: const BorderSide(
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        fixedSize: const Size(150, 40)
      )
    );
  }
}
