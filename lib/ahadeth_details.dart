import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sebha/ahadeth_model.dart';
import 'package:sebha/provider/my_provider.dart';

import 'my_theme_data.dart';

class ahadethDetails extends StatefulWidget {
  static const String routeName = 'ahadethDetails';

  const ahadethDetails({super.key});

  @override
  State<ahadethDetails> createState() => _ahadethDetailsState();
}

class _ahadethDetailsState extends State<ahadethDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as ahadethModel;
    var provider=Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.mode==ThemeMode.light?'assets/images/main_bg.png':
              'assets/images/bg_dark.png',),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(model.title),
        ),
        body: Card(
          color: Colors.transparent,
          elevation: 4,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                color: Colors.transparent,
              )),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  model.content[index],
                  textAlign: TextAlign.right,
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            },
            itemCount: model.content.length,
          ),
        ),
      ),
    );
    }

  }


