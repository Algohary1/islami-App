import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sebha/ahadeth_details.dart';
import 'package:sebha/ahadeth_model.dart';

import '../../my_theme_data.dart';


class ahadethTab extends StatefulWidget {
  ahadethTab({super.key});
  @override
  State<ahadethTab> createState() => _quranTabState();
}

class _quranTabState extends State<ahadethTab> {
  List<ahadethModel>allAhadeth=[];

  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty){
      loadahadethFile();

    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/ahadeth_bg.png',
          height: 219,
          width: 312,
        ),
        Divider(
          thickness: 3,
          color: MyThemeData.primaryColor,
        ),
        Text('الأحاديث', textAlign: TextAlign.center,style: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w300
        ),),
        Divider(
          thickness: 3,
          color: MyThemeData.primaryColor,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ahadethDetails.routeName,
                    arguments: allAhadeth[index]
                    );

                  },
                  child: Text(allAhadeth[index].title,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 25
                  ),
                    textAlign: TextAlign.center,
                  ));
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );

  }

  loadahadethFile() {
    rootBundle.loadString('assets/files/ahadeth.txt').then((value) {
      List<String> ahadeth = value.split('#');

      for(int i=0; i<ahadeth.length;i++){

        String hadethOne = ahadeth[i];
        List<String> hadethLines = hadethOne.trim().split('\n');
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> content = hadethLines;
        ahadethModel hadethModel=ahadethModel(title, content);
        allAhadeth.add(hadethModel);
        print(hadethModel.title);

      }
      setState(() {

      });
    });
  }
}
