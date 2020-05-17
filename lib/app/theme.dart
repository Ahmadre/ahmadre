import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinycolor/tinycolor.dart';

abstract class AppTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    accentColor: const Color(0xFF37E0B7),
    buttonColor: const Color(0xFFEB5757),    
    appBarTheme: const AppBarTheme(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    ),
    fontFamily: GoogleFonts.montserrat().fontFamily,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    accentColor: TinyColor(const Color(0xFF37E0B7)).darken(10).color,
    buttonColor: const Color(0xFFEB5757),
    appBarTheme: const AppBarTheme(
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    fontFamily: GoogleFonts.montserrat().fontFamily,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
