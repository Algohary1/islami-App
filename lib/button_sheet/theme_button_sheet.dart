import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sebha/provider/my_provider.dart';

import '../my_theme_data.dart';

class ThemeButtonSheet extends StatelessWidget {
  ThemeButtonSheet({super.key});

  bool? click;

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'light'.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: primaryColor),
                  ),
                  click == true
                      ? Icon(
                          Icons.done,
                          color: primaryColor,
                          size: 30,
                        )
                      : SizedBox(),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('dark'.tr()),
                  click != true
                      ? Icon(
                          Icons.done,
                          size: 30,
                          color: primaryColor,
                        )
                      : SizedBox(),
                  // Icon(Icons.done),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
