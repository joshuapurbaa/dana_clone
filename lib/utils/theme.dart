import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DanaCloneTheme {
  // Colors
  static const Color mainBlue = Color(0xFF118EEA);
  static const Color secondaryBlue = Color(0xFF86C6F6);

  // Primary Text Theme
  static TextTheme primaryTextTheme = TextTheme(
    headline1: GoogleFonts.notoSans(
      fontSize: 80,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    headline2: GoogleFonts.notoSans(
      fontSize: 50,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    headline3: GoogleFonts.notoSans(
      fontSize: 40,
      fontWeight: FontWeight.w400,
    ),
    headline4: GoogleFonts.notoSans(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    // sudah: 0,
    headline5: GoogleFonts.notoSans(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    headline6: GoogleFonts.notoSans(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    subtitle1: GoogleFonts.notoSans(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    subtitle2: GoogleFonts.notoSans(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyText1: GoogleFonts.notoSans(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyText2: GoogleFonts.notoSans(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    button: GoogleFonts.notoSans(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    // sudah: Rp,
    caption: GoogleFonts.notoSans(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.4,
      color: secondaryBlue,
    ),
    overline: GoogleFonts.notoSans(
      fontSize: 8,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  );

  // Theme Data
  static ThemeData themeData() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        backgroundColor: mainBlue,
      ),
      primaryTextTheme: primaryTextTheme,
    );
  }
}
