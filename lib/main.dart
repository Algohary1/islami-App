import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sebha/ahadeth_details.dart';
import 'package:sebha/home/home.dart';
import 'package:sebha/my_theme_data.dart';
import 'package:sebha/provider/my_provider.dart';
import 'package:sebha/sura_details.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MyApp()));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: provider.mode,
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,
      initialRoute: HomeScreen.routeName,
      routes:{
        HomeScreen.routeName: (context)=> HomeScreen(),
        SuraDetails.routeName: (context)=> SuraDetails(),
        ahadethDetails.routeName: (context)=> ahadethDetails(),
      },
    );
  }
}
