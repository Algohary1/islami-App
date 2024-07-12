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
  int index = 0;


  List<String> Zekr = [
    'سبحان الله',
    'الحمدلله',
    'الله اكبر'
  ];

  zekrCounter() {
    setState(() {

      if (counter == 33 )
      {
        counter = 0;
        index=(index+1) % zekr.length;
      }
      else{
        counter++;
      }
    });
  }

  double rotationAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 70,
        ),
        child: Stack(
            children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/sebha_head.png',
                width: 73,
                height: 95,
              ),
              Stack(
                children: [

                  Image.asset(
                    'assets/images/sebha_body.png',
                    width: 232,
                    height: 225,
                  )
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
                  height: 81,
                  width: 69,
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
                      color: Colors.white
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              if (counter == 33) {
                counter = 0;
                index = (index + 1) % Zekr.length;
              } else {
                counter++;
              }
              rotationAngle += 0.03;
            });
          },
          child: Text(Zekr[index],style: GoogleFonts.inter(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.white
          ),),
          style:ElevatedButton.styleFrom(
            backgroundColor: Color(0xffB7935F),
            padding: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
            ],
          ),
        ]),
      ),
    );
  }
}
