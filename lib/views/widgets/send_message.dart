import 'dart:html';

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
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
          child: Text(
              "What is Lorey text of the printing a software like Aldus PageMaker including versions of Lorem Ipsum",
              style: TextStyle(color: Colors.white)),
        ),
        const SizedBox(
          height: 20,
        ),
        Form(
          child: Column(
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(hintText: 'Name'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration:
                    const InputDecoration(hintText: 'Type your message...'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Send'))
            ],
          ),
        ),
      ]),
    );
  }
}
