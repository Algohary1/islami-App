import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sebha/provider/my_provider.dart';

import '../my_theme_data.dart';

class ThemeButtonSheet extends StatelessWidget {
  const ThemeButtonSheet({super.key});

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
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Light',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: primaryColor),
                  ),
                  Icon(
                    Icons.done,
                    color: primaryColor,
                    size: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.dark);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Dark'),
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
