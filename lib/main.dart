import 'package:anuragam_website/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _router = ANRRouter.router;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(5),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 255, 147, 152)),
                  shadowColor: MaterialStateProperty.all(Colors.pinkAccent))),
          scaffoldBackgroundColor: const Color.fromARGB(255, 247, 243, 244),
          primarySwatch: Colors.pink,
          textTheme: GoogleFonts.loveYaLikeASisterTextTheme(
              Theme.of(context).textTheme)),
    );
  }
}
