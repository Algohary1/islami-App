import 'package:flutter/material.dart';
import 'package:sebha/ahadeth_details.dart';
import 'package:sebha/home/home.dart';
import 'package:sebha/sura_details.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes:{
        HomeScreen.routeName: (context)=> HomeScreen(),
        SuraDetails.routeName: (context)=> SuraDetails(),
        ahadethDetails.routeName: (context)=> ahadethDetails(),
      },
    );

  }
}
