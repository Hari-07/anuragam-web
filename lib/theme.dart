import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData anuragamTheme = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(5),
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 255, 147, 152)),
          shadowColor: MaterialStateProperty.all(Colors.pinkAccent))),
  scaffoldBackgroundColor: const Color.fromARGB(255, 247, 243, 244),
  primarySwatch: Colors.pink,
  textTheme: GoogleFonts.arapeyTextTheme(),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    hintStyle: const TextStyle(color: Colors.white),
  ),
);
