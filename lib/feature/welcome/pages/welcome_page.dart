import 'package:blabber/common/utils/coloors.dart';
import 'package:blabber/common/widgets/custom_elevated_button.dart';
import 'package:blabber/feature/welcome/widgets/language_button.dart';
import 'package:blabber/feature/welcome/widgets/privacy_and_terms.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset('assets/images/welcome_icon.png'),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  child: Text('Hello cool people,', style: TextStyle(
                    color: isDarkMode ? Coloors.backgroundLight : Coloors.textBlack,
                  ),),
                  
                ),
                Text(
                  'Welcome to Blabber',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, 
                    color: isDarkMode ? Coloors.backgroundLight : Coloors.textBlack,),
                ),
                const PrivacyandTerms(),
                const SizedBox(
                  height: 50,
                ),
                CustomElevatedButton(
                  onPressed: () {},
                  text: 'AGREE AND CONTINUE',
                ),
                const SizedBox(
                  height: 50,
                ),
                const LanguageButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
