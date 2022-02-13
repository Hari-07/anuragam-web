import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EventsSection extends StatelessWidget {
  const EventsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Events',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFAE3032),
            fontSize: 40,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 300,
          width: 870,
          child: Center(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                EventContainer(),
                EventContainer(),
                EventContainer(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class EventContainer extends StatelessWidget {
  const EventContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          color: Color(0xFFBD4747).withOpacity(0.17),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Color(0xFFAE3032),
            width: 2,
          ),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Color(0xFFAE3032),
                  width: 1,
                ),
              ),
              height: 250,
              child: const Placeholder(),
            ),
            const Expanded(
              child: Center(
                child: AutoSizeText(
                  'Register',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
