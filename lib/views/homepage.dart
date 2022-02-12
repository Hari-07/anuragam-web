import 'package:anuragam_website/views/widgets/banner_widget.dart';
import 'package:anuragam_website/views/widgets/message_section.dart';
import 'package:anuragam_website/views/widgets/song_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BannerWidget(),
              // TitleWidget(), //Heading and Substring
              Container(
                // TODO:TEMPORARY FOR VISIBILITY
                color: Colors.white,
                height: 200,
                child: MessageSection(),
              ),
              // TitleWidget(), //Heading and Substring
              Container(
                // TODO:TEMPORARY FOR VISIBILITY
                color: Colors.white,
                height: 200,
                child: SongSection(),
              ),
              // SongSection(),
              // TitleWidget(), //Heading and Substring
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