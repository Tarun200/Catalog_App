import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyThemes
{
  static ThemeData lightTheme(BuildContext context)=>ThemeData(
      brightness: Brightness.light,
      fontFamily: GoogleFonts.poppins().fontFamily,
      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ),
  );
  static ThemeData darkTheme(BuildContext context)=>ThemeData(
    brightness: Brightness.dark,
  );
  static Color blackColor = Color(0xff000000);
  static Color indigoColor = Color(0xff3F0FB7);
  static Color creamColor = Color(0xfff5f5f5);

}
