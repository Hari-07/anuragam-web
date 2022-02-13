import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData anuragamTheme = ThemeData(
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //   style: ButtonStyle(
  //     elevation: MaterialStateProperty.all(5),
  //     foregroundColor: MaterialStateProperty.all(Color(0xFFAE3032)),
  //     backgroundColor: MaterialStateProperty.all(const Color(0XFFAE3032)),
  //     shadowColor: MaterialStateProperty.all(Colors.pinkAccent),
  //   ),
  // ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 247, 243, 244),
  primarySwatch: Colors.pink,
  textTheme: GoogleFonts.interTextTheme()
      .apply(bodyColor: Color(0xFFAE3032), displayColor: Color(0xFFAE3032)),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Color(0xFFAE3032))),
    hintStyle: const TextStyle(color: Color(0xFFAE3032)),
  ),
  snackBarTheme: SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
  )
);
