import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset('assets/images/main_bg.png'),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('إسلامي',
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.w700)),
        ),
      ),
    ]);
  }
}
