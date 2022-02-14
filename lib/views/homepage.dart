import 'package:anuragam_website/views/widgets/banner_widget.dart';
import 'package:anuragam_website/views/widgets/events_section.dart';
import 'package:anuragam_website/views/widgets/future_section.dart';
import 'package:anuragam_website/views/widgets/message_section.dart';
import 'package:anuragam_website/views/widgets/song_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8E3C8),
      body: ListView(
        children: const [
          BannerWidget(),
          SizedBox(
            height: 130,
          ),
          EventsSection(),
          SizedBox(
            height: 130,
          ),
          MessageSection(),
          SizedBox(
            height: 130,
          ),
          SongSection(),
          SizedBox(
            height: 130,
          ),
          FutureSection(),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}
