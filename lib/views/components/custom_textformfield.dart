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
          hintStyle: const TextStyle(
            fontSize: 18,
            color: Color(0xFFAE3032),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFFAE3032),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFFAE3032),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        style: const TextStyle(
          color: Color(0xFFAE3032),
          fontSize: 18,
        ),
      ),
    );
  }
}
