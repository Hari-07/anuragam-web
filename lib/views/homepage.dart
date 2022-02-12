import 'package:anuragam_website/views/widgets/hometop.dart';
import 'package:anuragam_website/views/widgets/receive_field.dart';
import 'package:anuragam_website/views/widgets/send_message.dart';
import 'package:anuragam_website/views/widgets/timer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 189, 71, 71),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const HomeTop(),
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
                  Receive_Message(),
                  SizedBox(
                    width: 20,
                  ),
                  Send_Message(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




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