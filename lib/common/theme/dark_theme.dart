import 'package:blabber/common/utils/coloors.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
      scaffoldBackgroundColor: Coloors.backgroundDark,
      colorScheme: base.colorScheme.copyWith(
        surface: Coloors.backgroundDark,
      ));
}
