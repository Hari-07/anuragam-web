import 'dart:ui';

import 'package:flutter/material.dart';

class BlurChild extends StatelessWidget {
  const BlurChild({
    Key? key,
    this.padding = const EdgeInsets.all(40),
    required this.child,
  }) : super(key: key);

  final EdgeInsets padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        color: Colors.black.withOpacity(0.4),
        padding: padding,
        child: BackdropFilter(
          child: child,
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
        ),
      ),
    );
  }
}
