import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Components/constants.dart';
import 'Screens/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primaryColor: kblue,

        textTheme: TextTheme(
          headline1: GoogleFonts.roboto(
              fontSize: 93, fontWeight: FontWeight.w300, letterSpacing: -1.5),
          headline2: GoogleFonts.roboto(
              fontSize: 58, fontWeight: FontWeight.w300, letterSpacing: -0.5),
          headline3: GoogleFonts.roboto(
              fontSize: 47, fontWeight: FontWeight.w400),
          headline4: GoogleFonts.roboto(
              fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          headline5: GoogleFonts.roboto(
              fontSize: 23, fontWeight: FontWeight.w400),
          headline6: GoogleFonts.roboto(
              fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
          subtitle1: GoogleFonts.roboto(
              fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
          subtitle2: GoogleFonts.roboto(
              fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
          bodyText1: GoogleFonts.roboto(
              fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
          bodyText2: GoogleFonts.roboto(
              fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          button: GoogleFonts.roboto(
              fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
          caption: GoogleFonts.roboto(
              fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
          overline: GoogleFonts.roboto(
              fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
        ),

      ),
      home: const MyHomePage(),
    );
  }
}