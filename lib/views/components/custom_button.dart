import 'package:flutter/material.dart';

class AnuragamButton extends StatefulWidget {
  const AnuragamButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final Function onPressed;
  final String text;

  @override
  State<AnuragamButton> createState() => _AnuragamButtonState();
}

class _AnuragamButtonState extends State<AnuragamButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        setState(() {
          isLoading = true;
        });
        await widget.onPressed();
        setState(() {
          isLoading = false;
        });
      },
      child: isLoading
          ? const Center(
              child: SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            )
          : Text(
              widget.text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Color(0xFFAE3032)),
          backgroundColor: MaterialStateProperty.all(const Color(0XFFAE3032)),
          minimumSize: MaterialStateProperty.all(const Size(150, 60)),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),
    );
  }
}
