import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Services/service_export.dart';

import 'app/pageview_control.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      themeMode: ref.watch(themeProvider) ? ThemeMode.dark : ThemeMode.light,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: const PageViewControl(),
    );
  }
}

class AppTheme {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.blueGrey.shade200,
    primarySwatch: Colors.indigo,
    iconTheme: IconThemeData(
      size: 30,
      color: Colors.blueGrey.shade800,
    ),
    cardTheme: CardTheme(
      elevation: 8,
      color: Colors.blueGrey.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    dividerColor: Colors.grey,
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: Colors.greenAccent.shade100,
    ),
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.blueGrey.shade900,
    primarySwatch: Colors.indigo,
    iconTheme: IconThemeData(
      size: 30,
      color: Colors.blueGrey.shade50,
    ),
    cardTheme: CardTheme(
      elevation: 8,
      color: Colors.blueGrey.shade800,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    dividerColor: Colors.grey,
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: Colors.greenAccent.shade700,
    ),
    textTheme: TextTheme(
      headline1: GoogleFonts.shareTechMono(
        fontSize: 102,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      headline2: GoogleFonts.shareTechMono(
        fontSize: 64,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      headline3: GoogleFonts.shareTechMono(
        fontSize: 51,
        fontWeight: FontWeight.w400,
      ),
      headline4: GoogleFonts.shareTechMono(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headline5: GoogleFonts.shareTechMono(
        color: Colors.blueGrey.shade200,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      headline6: GoogleFonts.shareTechMono(
        fontSize: 21,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      subtitle1: GoogleFonts.shareTechMono(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      subtitle2: GoogleFonts.shareTechMono(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodyText1: GoogleFonts.shareTechMono(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyText2: GoogleFonts.shareTechMono(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      button: GoogleFonts.shareTechMono(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      caption: GoogleFonts.shareTechMono(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      overline: GoogleFonts.shareTechMono(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    ),
  );
}
