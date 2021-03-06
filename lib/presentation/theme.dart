import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFFFBFBFB);
  static const Color secondaryColor = Color(0xFFF5F5F5);
  static const Color primaryTextColor = Color(0xFF080B0E);
  static const Color secondaryTextColor = Color(0xFF9E9E9E);
  static const Color logoRed = Color(0xFFF34323);
  static const Color logoBlue = Color(0xFF1ba4dc);

  static const skeletonGradient = LinearGradient(
    colors: [
      Color(0xFFEBEBF4),
      Color(0xFFF4F4F4),
      Color(0xFFEBEBF4),
    ],
    stops: [
      0.1,
      0.3,
      0.4,
    ],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );

  static final lightTheme = ThemeData(
    textTheme: GoogleFonts.rubikTextTheme().apply(
      bodyColor: primaryTextColor,
      displayColor: primaryTextColor,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primaryTextColor,
      ),
    ),
    canvasColor: Colors.white,
    colorScheme: const ColorScheme.light(
      primary: logoBlue,
      secondary: logoRed,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: primaryColor,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      refreshBackgroundColor: Colors.transparent,
      color: logoBlue,
      circularTrackColor: logoRed,
    ),
  );
}
