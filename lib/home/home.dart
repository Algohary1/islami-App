import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sebha/home/tabs/ahadeth.dart';
import 'package:sebha/home/tabs/quran1.dart';
import 'package:sebha/home/tabs/radio.dart';
import 'package:sebha/home/tabs/sebha.dart';
import 'package:sebha/home/tabs/settings.dart';
import 'package:sebha/my_theme_data.dart';

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
        appBar: AppBar(
          title: Text('إسلامي', style:
          Theme.of(context).textTheme.bodyLarge,
            ),

        ),
        bottomNavigationBar:
            BottomNavigationBar(
              currentIndex: selectedIndex,
                onTap: (value) {
                  selectedIndex=value;
                  setState(() {
                  });
                },
                items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')), label: '',
          backgroundColor: MyThemeData.primaryColor,),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')), label: '',
          backgroundColor: MyThemeData.primaryColor,),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ahadeth.png')), label: '',
          backgroundColor: MyThemeData.primaryColor,),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/moshaf.png')), label: '',
          backgroundColor: MyThemeData.primaryColor,),
          BottomNavigationBarItem(icon: Icon(Icons.settings,),label: '',
          backgroundColor: MyThemeData.primaryColor,),
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
