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
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },

      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      // style: OutlinedButton.styleFrom(
      // padding: const EdgeInsets.symmetric(
      //   horizontal: 25,
      //   vertical: 15,
      // ),
      // side: const BorderSide(
      //   color: Colors.white,
      // ),
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(12),
      // ),
      //   fixedSize: const Size(150, 40)
      // )
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Color(0xFFAE3032)),
          backgroundColor: MaterialStateProperty.all(const Color(0XFFAE3032)),
          fixedSize: MaterialStateProperty.all(const Size(120, 40)),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),
    );
  }
}
