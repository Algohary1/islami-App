import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sebha/ahadeth_details.dart';
import 'package:sebha/ahadeth_model.dart';


class ahadethTab extends StatefulWidget {
  ahadethTab({super.key});

  @override
  State<ahadethTab> createState() => _quranTabState();
}

class _quranTabState extends State<ahadethTab> {
  List<String> ahadethNames = [
  'الحديث الأول',
  'الحديث الثاني',
  'الحديث الثالث',
  'الحديث الرابع',
  'الحديث الخامس',
  'الحديث السادس',
  'الحديث السابع',
  'الحديث الثامن',
  'الحديث التاسع',
  'الحديث العاشر',
  'الحديث الحادي عشر',
  'الحديث الثاني عشر',
  'الحديث الثالث عشر',
  'الحديث الرابع عشر',
  'الحديث الخامس عشر',
  'الحديث السادس عشر',
  'الحديث السابع عشر',
  'الحديث الثامن عشر',
  'الحديث التاسع عشر',
  'الحديث العشرون',
  'الحديث الحادي والعشرون',
  'الحديث الثاني والعشرون',
  'الحديث الثالث والعشرون',
  'الحديث الرابع والعشرون',
  'الحديث الخامس والعشرون',
  'الحديث السابع والعشرون',
  'الحديث الثامن والعشرون',
  'الحديث التاسع والعشرون',
  'الحديث الثلاثــون',
  'الـحديث الحادي والثلاثون',
  'الحديث الثاني والثلاثون',
  'الحديث الثالث والثلاثون',
  'الحديث الرابع والثلاثون',
  'الحديث الخامس والثلاثون',
  'الحديث السادس والثلاثون',
  'الحديث السابع والثلاثون',
  'الـحديث الثامن والثلاثون',
  'الحديث التاسع والثلاثون',
  'الحديث الأربعون',
  'الحديث الحادي والأربعون',
  'الحديث الثاني والأربعـون',
  'الحديث الثالث والأربعون',
  'الحديث الرابع والأربعون',
  'الـحديث الخامس والأربعون',
  'الحديث السادس والأربعون',
  'الحديث السابع والأربعون',
  'الـحديث الثامن والأربعون',
  'الحديث التاسع والأربعون',
  'الحديث الخمسون',
  ];

  @override
  Widget build(BuildContext context) {
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
          color: Color(0xffB7935F),
        ),
        Text('الأحاديث', textAlign: TextAlign.center,style: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w300
        ),),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 40),
                child: InkWell(
                  onTap: (){

                    Navigator.pushNamed(context, ahadethDetails.routeName, arguments: ahadethModel(ahadethNames[index],index));
                  },
                  child: Text(
                    ahadethNames[index],
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ),
              );
            },
            itemCount: ahadethNames.length,
          ),
        ),
      ],
    );
  }
}
