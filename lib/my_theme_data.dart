import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{
  static Color primaryColor=Color(0xFFB7935F);
  static Color blackColor=Color(0xFF242424);
   static ThemeData LightTheme= ThemeData(
     primaryColor: primaryColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.shifting,

      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          size: 30,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,

      ),

     textTheme: TextTheme(
       bodyLarge: GoogleFonts.elMessiri(
           fontSize: 30,
           color: Colors.black,
           fontWeight: FontWeight.w700),
       bodyMedium: GoogleFonts.elMessiri(
           fontSize: 25,
           color: Colors.black,
           fontWeight: FontWeight.w700),
       bodySmall: GoogleFonts.elMessiri(
           fontSize: 20,
           color: Colors.black,
           fontWeight: FontWeight.w700),

     )
  );

   static ThemeData DarkTheme= ThemeData();

}