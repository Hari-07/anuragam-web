import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 985,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
      child: GlassmorphicContainer(
        width: 1049,
        height: 738.31,
        borderRadius: 20,
        blur: 10,
        border: .5,
        borderGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFFffffff).withOpacity(0.2),
            const Color((0xFFFFFFFF)).withOpacity(0.2),
          ],
        ),
        linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFFffffff).withOpacity(0.2),
            const Color((0xFFFFFFFF)).withOpacity(0.2),
          ],
        ),
        child: Column(children: []),
      ),
    );
  }
}
