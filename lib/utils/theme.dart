import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DanaCloneTheme {
  // Colors
  static const Color mainBlue = Color(0xFF118EEA);
  static const Color secondaryBlue = Color(0xFF86C6F6);
  static const Color black = Color(0xFF000000);
  static const Color secondaryBlack = Color(0xFF313131);
  static const Color orange = Color(0xFFF0A446);
  static const Color whiteBg = Color(0xFFF5F5F5);

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
    // sudah: (Subheader) DANA Deals,
    headline4: GoogleFonts.notoSans(
      color: black,
      fontSize: 21,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.3,
    ),
    // sudah: (appbar) 0,
    headline5: GoogleFonts.notoSans(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    headline6: GoogleFonts.notoSans(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    // HeaderWidget: Scan
    subtitle1: GoogleFonts.notoSans(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.2,
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
    // Sudah:
    button: GoogleFonts.notoSans(
      fontSize: 14,
      fontWeight: FontWeight.w500,
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

  static TextTheme textTheme = TextTheme(
    headline1: GoogleFonts.roboto(
      fontSize: 88,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    headline2: GoogleFonts.roboto(
      fontSize: 55,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    headline3: GoogleFonts.roboto(
      fontSize: 44,
      fontWeight: FontWeight.w400,
    ),
    headline4: GoogleFonts.roboto(
      fontSize: 31,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headline5: GoogleFonts.roboto(
      fontSize: 22,
      fontWeight: FontWeight.w400,
    ),
    headline6: GoogleFonts.roboto(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    // Subheader: Jajan,
    subtitle1: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: orange,
    ),

    // Subheader: Electricity
    subtitle2: GoogleFonts.roboto(
      fontSize: 15,
      color: secondaryBlack,
    ),

    bodyText1: GoogleFonts.roboto(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyText2: GoogleFonts.roboto(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),

    button: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    caption: GoogleFonts.roboto(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    overline: GoogleFonts.roboto(
      fontSize: 9,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  );

  // Theme Data
  static ThemeData themeData() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: mainBlue,
      ),
      primaryTextTheme: primaryTextTheme,
      textTheme: textTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: mainBlue,
          elevation: 0,
        ),
      ),
    );
  }
}
