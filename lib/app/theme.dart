import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,    
    appBarTheme: const AppBarTheme(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    ),
    fontFamily: GoogleFonts.montserrat().fontFamily,
    visualDensity: VisualDensity.standard,
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    fontFamily: GoogleFonts.montserrat().fontFamily,
    visualDensity: VisualDensity.standard,
  );
}
