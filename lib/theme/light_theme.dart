import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme {
  ThemeData themeData = ThemeData(
    textTheme: GoogleFonts.plusJakartaSansTextTheme(),
    primaryColor: const Color(0xFFE0533D),
    scaffoldBackgroundColor: const Color(0xFFF3F3F3),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFE0533D),
      background: const Color(0xFFF3F3F3),
      secondary: const Color(0xFF242424),
      error: Colors.redAccent,
    ),
  );
}