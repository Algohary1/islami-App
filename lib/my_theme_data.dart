import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sebha/my_theme_data.dart';

import 'my_theme_data.dart';

  Color primaryColor=Color(0xFFB7935F);
  Color primaryDarkColor=Color(0xFF141A2E);
  Color blackColor=Color(0xFF242424);
  Color yellowColor=Color(0xFFFACC1D);
class MyThemeData{

   static ThemeData LightTheme= ThemeData(
     primaryColor: primaryColor,
     dividerColor: primaryColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,

      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 30,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,

      ),
      textTheme: TextTheme(
       bodyLarge: GoogleFonts.elMessiri(
           fontSize: 30,
           color: blackColor,
           fontWeight: FontWeight.w700),
       bodyMedium: GoogleFonts.elMessiri(
           fontSize: 25,
           color: blackColor,
           fontWeight: FontWeight.w700),
       bodySmall: GoogleFonts.elMessiri(
           fontSize: 20,
           color: blackColor,
           fontWeight: FontWeight.w700),

     )
  );

   static ThemeData DarkTheme= ThemeData(
     primaryColor: primaryDarkColor,
     dividerColor: yellowColor,
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       backgroundColor: primaryDarkColor,
       showSelectedLabels: false,
       showUnselectedLabels: false,
       selectedItemColor: yellowColor,
       unselectedItemColor: Colors.white,
       type: BottomNavigationBarType.fixed,

     ),
     scaffoldBackgroundColor: Colors.transparent,
     appBarTheme: AppBarTheme(
       iconTheme: IconThemeData(
         color: Colors.white,
         size: 30,
       ),
       centerTitle: true,
       backgroundColor: Colors.transparent,

     ),
       textTheme: TextTheme(
         bodyLarge: GoogleFonts.elMessiri(
             fontSize: 30,
             color: yellowColor,
             fontWeight: FontWeight.w700),
         bodyMedium: GoogleFonts.elMessiri(
             fontSize: 25,
             color: yellowColor,
             fontWeight: FontWeight.w700),
         bodySmall: GoogleFonts.elMessiri(
             fontSize: 20,
             color: yellowColor,
             fontWeight: FontWeight.w700),

       )
   );

}