import 'package:blabber/common/utils/coloors.dart';
import 'package:flutter/material.dart';

class PrivacyandTerms extends StatelessWidget {
  const PrivacyandTerms({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: 'Read our ',
              style: TextStyle(
                height: 1.5,
                color: isDarkMode ? Coloors.backgroundLight : Coloors.textBlack,
              ),
              children: [
                const TextSpan(
                    text: 'Privacy Policy. ',
                    style: TextStyle(
                      color: Coloors.violetLight,
                    )),
                TextSpan(
                    text: 'Tap "Agree and Continue" to accept the ',
                    style: TextStyle(
                      color: isDarkMode
                          ? Coloors.backgroundLight
                          : Coloors.textBlack,
                    )),
                const TextSpan(
                    text: 'Terms of Services',
                    style: TextStyle(
                      color: Coloors.violetLight,
                    )),
              ])),
    );
  }
}
