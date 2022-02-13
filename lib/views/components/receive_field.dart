import 'package:flutter/material.dart';

import 'custom_button.dart';

class ReceiveTemplate extends StatelessWidget {
  const ReceiveTemplate({
    Key? key,
    required this.title,
    required this.text1,
    required this.text2,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final String text1;
  final String text2;
  final String imagePath;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      text1,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Image.asset(imagePath))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text2,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const Spacer(),
          AnuragamButton(
            onPressed: () {
              onPressed();
            },
            text: 'Receive',
          )
          // const TextButton(onPressed: onPressed, child: child,)
        ],
      ),
    );
  }
}

// class ReceiveMessage extends StatelessWidget {
//   const ReceiveMessage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Future openDialogue() => showDialog(
//         context: context,
//         builder: (context) => const AlertDialog(
//               title: Text('Name'),
//             ));
//     return GlassmorphicContainer(
//       width: 450,
//       height: 450,
//       borderRadius: 20,
//       blur: 10,
//       border: .5,
//       borderGradient: LinearGradient(
//         begin: Alignment.topLeft,
//         end: Alignment.bottomRight,
//         colors: [
//           Color(0xFFffffff).withOpacity(0.2),
//           Color((0xFFFFFFFF)).withOpacity(0.2),
//         ],
//       ),
//       linearGradient: LinearGradient(
//         begin: Alignment.topLeft,
//         end: Alignment.bottomRight,
//         colors: [
//           Color(0xFFffffff).withOpacity(0.2),
//           Color((0xFFFFFFFF)).withOpacity(0.2),
//         ],
//       ),
//       child: Column(children: [
//         const Padding(
//           padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
//           child: Text(
//               "What is Lorem Ipsum?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
//               style: TextStyle(color: Colors.white)),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         ElevatedButton(
//             onPressed: () {
//               openDialogue();
//             },
//             child: Text('Receive'))
//       ]),
//     );
//   }
// }
