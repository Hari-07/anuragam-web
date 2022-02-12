import 'package:anuragam_website/views/widgets/receive_field.dart';
import 'package:anuragam_website/views/widgets/send_message.dart';
import 'package:anuragam_website/views/widgets/timer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/anuragm.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Timer()],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Send_Message(),
                    SizedBox(
                      width: 20,
                    ),
                    Receive_Message()
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Music is an emotion',
                        style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                // ElevatedButton(
                //   onPressed: () {
                //     context.go('/receive');
                //   },
                //   child: const Text('Get Love'),
                // ),
                //     const SizedBox(
                //       width: 20,
                //     ),
                //     ElevatedButton(
                //       onPressed: () {
                //         context.go('/give');
                //       },
                //       child: const Text('Send Love'),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
