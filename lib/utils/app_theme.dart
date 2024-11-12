import 'package:flutter/material.dart';
import 'package:gorcery/utils/constants.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: FONT_FAMILY,
    colorScheme: const ColorScheme.light(
      primary: Color(0xff23AA49),
      onPrimary: Color(0xff23AA49),
      secondary: Color(0xffFF324B),
      surface: Colors.white,
      onSurface: Color(0xff06161C),
      onSecondary: Color(0xff979899),
      primaryContainer: Color(0xffEBF8EE),
      secondaryContainer: Color(0xffF3F5F7),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    fontFamily: FONT_FAMILY,
    colorScheme: const ColorScheme.dark(
      primary: Color(0xff23AA49),
      onPrimary: Color(0xff0D1F29),
      secondary: Color(0xffFF324B),
      surface: Color(0xff0D1F29),
      onSurface: Color(0xffFFFFFF),
      onSecondary: Color(0xff617986),
      primaryContainer: Color(0xff1A3848),
      secondaryContainer: Color(0xff1A3848),
    ),
  );
}
