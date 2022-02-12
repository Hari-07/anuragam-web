import 'dart:ui';

import 'package:flutter/material.dart';

class BlurChild extends StatelessWidget {
  const BlurChild({
    Key? key,
    this.padding = const EdgeInsets.all(20),
    required this.child,
  }) : super(key: key);

  final EdgeInsets padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        padding: padding,
        child: BackdropFilter(
          child: child,
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
        ),
      ),
    );
  }
}
