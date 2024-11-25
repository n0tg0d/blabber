import 'package:blabber/common/utils/coloors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? buttonWidth;
  final VoidCallback onPressed;
  final String text;
  const CustomElevatedButton({
    super.key,
    this.buttonWidth,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
                vertical: 12, horizontal: 24), // Padding inside the button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          child: Ink(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Coloors.violetDark,
                  Coloors.violetLight,
                ], // Gradient colors
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                  vertical: 12, horizontal: 24), // Button content padding
              child: const Text(
                'AGREE AND CONTINUE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16, // Font size
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
