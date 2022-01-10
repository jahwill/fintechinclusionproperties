import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptheme {
  static const _lightfillColor = Colors.black;
  static const _darkFillColor = Colors.white;
  static const _lightfocusColor = Color(0xFF0AF09f);
  static ThemeData themeData() {
    return ThemeData(
      colorScheme: lightScheme,
      accentColor: lightScheme.primary.withOpacity(0.2),
      canvasColor: lightScheme.background,
      focusColor: _lightfocusColor,
      primaryColor: lightScheme.primaryVariant,
      highlightColor: Colors.transparent,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
          elevation: 1,
          textTheme: _textTheme,
          iconTheme: IconThemeData(color: _darkFillColor)),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          _lightfillColor.withOpacity(0.80),
          _darkFillColor,
        ),
        contentTextStyle: _textTheme.subtitle1.apply(color: _darkFillColor),
      ),
    );
  }

  static ColorScheme lightScheme = ColorScheme(
      primary: Color(0xFFEACC28),
      background: const Color(0xFFE6EBEB),
      primaryVariant: const Color(0xFF017A78),
      secondary: const Color(0xFFEFF3F3),
      secondaryVariant: const Color(0xFFFAFBFB),
      brightness: Brightness.light,
      surface: const Color(0xFFE6EBEB),
      onBackground: Colors.white,
      error: _lightfillColor,
      onPrimary: _lightfillColor,
      onSecondary: _lightfillColor,
      onSurface: _lightfillColor,
      onError: _lightfillColor);

  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;
  static TextTheme _textTheme = TextTheme(
      headline1: GoogleFonts.quicksand(fontWeight: _bold, fontSize: 70),
      headline2: GoogleFonts.quicksand(fontWeight: _bold, fontSize: 60),
      headline3: GoogleFonts.quicksand(fontWeight: _bold, fontSize: 40),
      headline4: GoogleFonts.quicksand(fontWeight: _medium, fontSize: 20.0),
      headline5: GoogleFonts.quicksand(fontWeight: _medium, fontSize: 16.0),
      headline6: GoogleFonts.quicksand(fontWeight: _bold, fontSize: 16.0),
      caption: GoogleFonts.quicksand(fontWeight: _medium, fontSize: 16),
      bodyText1: GoogleFonts.quicksand(fontWeight: _regular, fontSize: 14),
      bodyText2: GoogleFonts.quicksand(fontWeight: _regular, fontSize: 16),
      overline: GoogleFonts.quicksand(fontWeight: _medium, fontSize: 12),
      subtitle2: GoogleFonts.quicksand(fontWeight: _medium, fontSize: 14.0),
      subtitle1: GoogleFonts.quicksand(fontWeight: _medium, fontSize: 16.0),
      button: GoogleFonts.quicksand(
        fontWeight: _semiBold,
      ));

  static final Color kTextColor = Color(0xFF151C2A);
}
