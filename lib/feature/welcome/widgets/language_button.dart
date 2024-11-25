import 'package:blabber/common/utils/coloors.dart';
import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color:
              const Color(0xFF5729EC).withOpacity(0.5), // Light purple outline
          width: 0.5, // Adjust the width for visibility
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(20),
          splashFactory: NoSplash.splashFactory,
          highlightColor: Coloors.violetLight,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.language,
                  color: Coloors.violetLight,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('English'),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Coloors.violetLight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
