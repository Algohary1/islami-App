import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sebha/sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName='suraDetails';
  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String>verses=[];
  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
      loadSuraFile(model.index);

    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/main_bg.png'), fit: BoxFit.fill)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(model.name, style: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w700,
            fontSize: 30
          ),),
        ),
        body: Card(
          color: Color(0xCCF8F8F8),
          elevation: 4,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              color: Colors.transparent,
            )
          ),

          child: ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                 '${verses[index]}(${index+1})',
                textAlign: TextAlign.right,style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.w400,

              ),),
            );
          },
          itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  loadSuraFile(int index)async{
   String sura= await rootBundle.loadString('assets/files/${index+1}.txt');

    List<String>suraLines=sura.split('\n');
    print(suraLines);
    verses=suraLines;
    setState(() {

    });
  }
}
