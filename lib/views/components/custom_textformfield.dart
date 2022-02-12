import 'package:flutter/material.dart';

class AnuragamFormField extends StatelessWidget {
  const AnuragamFormField({
    Key? key,
    required this.onChanged,
    required this.label,
  }) : super(key: key);

  final Function(String) onChanged;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: label,
          hintStyle:  TextStyle(
            fontSize: 18,
            color: Colors.white.withOpacity(0.6),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.pink,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
