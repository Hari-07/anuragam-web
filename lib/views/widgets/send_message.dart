import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Send_Message extends StatelessWidget {
  const Send_Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: 400,
      height: 400,
      borderRadius: 20,
      blur: 10,
      border: .5,
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFffffff).withOpacity(0.2),
          Color((0xFFFFFFFF)).withOpacity(0.2),
        ],
      ),
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFffffff).withOpacity(0.2),
          Color((0xFFFFFFFF)).withOpacity(0.2),
        ],
      ),
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
          child: Text(
              "What is Lorem Ipsum?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
              style: TextStyle(color: Colors.white)),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {},
            child: Form(
                child: Column(
              children: [
                Container(
                  height: 40,
                  width: 200,
                  child: TextFormField(
                    decoration: const InputDecoration(hintText: 'Name'),
                  ),
                )
              ],
            )))
      ]),
    );
  }
}
