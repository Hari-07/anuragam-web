import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/receive');
              },
              child: Text('Get Love'),
            ),
            const SizedBox(width: 20,),
            ElevatedButton(
              onPressed: () {
                context.go('/give');
              },
              child: Text('Send Love'),
            ),
          ],
        ),
      ),
    );
  }
}
