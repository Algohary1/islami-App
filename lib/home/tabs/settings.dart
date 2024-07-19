import 'package:flutter/material.dart';
import 'package:sebha/my_theme_data.dart';

import '../../button_sheet/language_botton_sheet.dart';
import '../../button_sheet/theme_button_sheet.dart';

class settingsTab extends StatelessWidget {
  const settingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Theme'),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: (){
              showModalBottomSheet(context: context,
                isDismissible: true,
                isScrollControlled: true,
                builder:(context) {
                return ThemeButtonSheet();
              },);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: primaryColor)
              ),
              child: Text('light'),
            ),
          ),
          SizedBox(
            height: 44,
          ),
          Text('Language'),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: (){

              showModalBottomSheet(
                isDismissible: true,
                isScrollControlled: true,
                context: context, builder: (context) {
                return LanguageBottonSheet();
              },);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: primaryColor)
              ),
              child: Text('Arabic'),
            ),
          )
        ],
      ),
    );
  }
}
