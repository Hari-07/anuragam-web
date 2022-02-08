import 'package:flutter/material.dart';

class SubmissionField extends StatefulWidget {
  const SubmissionField({
    Key? key,
    required this.submitFunction,
    required this.hintText,
    this.isLast = false,
  }) : super(key: key);

  final Function submitFunction;
  final bool isLast;
  final String hintText;

  @override
  State<SubmissionField> createState() => _SubmissionFieldState();
}

class _SubmissionFieldState extends State<SubmissionField> {
  String _formValue = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: ((value) {
            setState(() {
              _formValue = value;
            });
          }),
          decoration: InputDecoration(
            hintText: widget.hintText,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                widget.submitFunction(_formValue);
              },
              child: widget.isLast
                  ? const Icon(Icons.check_circle_outline_outlined)
                  : const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ],
    );
  }
}
