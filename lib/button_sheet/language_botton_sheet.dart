import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sebha/my_theme_data.dart';

class LanguageBottonSheet extends StatelessWidget {
  const LanguageBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                context.setLocale(Locale('ar'));
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('arabic'.tr(),
                      style: context.locale == Locale("ar")
                          ? Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: primaryColor)
                          : Theme.of(context).textTheme.bodyMedium),
                  context.locale==Locale("ar")?Icon(
                    Icons.done,
                    color: primaryColor,
                    size: 30,
                  ):SizedBox(),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                context.setLocale(Locale('en'));
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('english'.tr(),
                      style: context.locale != Locale("ar")
                          ? Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: primaryColor)
                          : Theme.of(context).textTheme.bodyMedium),
                  context.locale != Locale("ar")
                      ? Icon(
                          Icons.done,
                          size: 30,
                          color: primaryColor,
                        )
                      : SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
