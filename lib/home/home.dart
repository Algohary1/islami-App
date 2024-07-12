import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sebha/home/tabs/ahadeth.dart';
import 'package:sebha/home/tabs/quran1.dart';
import 'package:sebha/home/tabs/radio.dart';
import 'package:sebha/home/tabs/sebha.dart';
import 'package:sebha/home/tabs/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/main_bg.png',
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('إسلامي',
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.w700)),
        ),
        bottomNavigationBar:
            BottomNavigationBar(
              currentIndex: selectedIndex,
                onTap: (value) {
                  selectedIndex=value;
                  setState(() {
                  });
                },
                backgroundColor: Color(0xFFB7935F),
                type: BottomNavigationBarType.shifting,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.white,
                showUnselectedLabels: false,
                showSelectedLabels: false,
                items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')), label: '',
          backgroundColor: Color(0xFFB7935F),),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')), label: '',
          backgroundColor: Color(0xFFB7935F),),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ahadeth.png')), label: '',
          backgroundColor: Color(0xFFB7935F),),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/moshaf.png')), label: '',
          backgroundColor: Color(0xFFB7935F),),
          BottomNavigationBarItem(icon: Icon(Icons.settings,),label: '',
          backgroundColor: Color(0xFFB7935F),),
        ]),
        body: tabs[selectedIndex],
      ),
    ]);
  }
  List<Widget>tabs=[
    radioTab(),
    sebhaTab(),
    ahadethTab(),
    quranTab(),
    settingsTab(),
  ];

}
