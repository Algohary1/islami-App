import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sebha/sura_model.dart';

import '../../sura_details.dart';

class quranTab extends StatefulWidget {
  quranTab({super.key});

  @override
  State<quranTab> createState() => _quranTabState();
}

class _quranTabState extends State<quranTab> {
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/quran.png',
          height: 227,
          width: 205,
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              ' عدد الآيات ',
              textAlign: TextAlign.left,
              style: GoogleFonts.elMessiri(
                  fontWeight: FontWeight.w600, fontSize: 25),
            ),
            SizedBox(
              width: 9,
            ),
            Text(
              ' اسم السورة ',
              textAlign: TextAlign.right,
              style: GoogleFonts.elMessiri(
                  fontWeight: FontWeight.w600, fontSize: 25),
            ),
          ],
        ),
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

                    Navigator.pushNamed(context, SuraDetails.routeName, arguments: SuraModel(suraNames[index],index));
                  },
                  child: Text(
                    suraNames[index],
                    textAlign: TextAlign.right,
                    style: GoogleFonts.inter(
                        fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ),
              );
            },
            itemCount: suraNames.length,
          ),
        ),
      ],
    );
  }
}
