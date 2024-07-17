import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class sebhaTab extends StatefulWidget {
  const sebhaTab({super.key});

  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  int counter = 0;
  String zekr = '';

  List<String> Zekr = ['سبحان الله', 'الحمدلله', 'الله اكبر'];
  int index = 0;
  double angle = 0;

  zekrCounter() {
    if (counter == 33) {
      counter = 0;
      index++;
    } else {
      counter++;
    }
    if (index == Zekr.length) {
      index = 0;
    }
    angle += 360 / 3;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 70,
        ),
        child: Column(children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/sebha_head.png'),
              Padding(
                padding: const EdgeInsets.only(top: 75),
                child: Transform.rotate(
                  angle: angle,
                  child: GestureDetector(
                      onTap: () {
                        zekrCounter();
                      },
                      child: Image.asset('assets/images/sebha_body.png')),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'عدد التسبيحات',
            style: GoogleFonts.elMessiri(
                fontWeight: FontWeight.w600, fontSize: 25),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                counter.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFFB7935F),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              '${Zekr[index]}',
              style: GoogleFonts.inter(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }
}
