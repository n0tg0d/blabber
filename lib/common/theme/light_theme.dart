import 'package:blabber/common/utils/coloors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    scaffoldBackgroundColor: Coloors.backgroundLight,
    colorScheme: base.colorScheme.copyWith(
      surface: Coloors.backgroundLight,
    ),
  );
}
