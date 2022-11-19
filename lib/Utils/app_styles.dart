import 'package:flutter/material.dart';

Color primary = const Color(0xFF5E2257);
Color secondary = const Color(0xFFC0A6AE);
Color tertiary = const Color(0xFF907D79);

class Styles {
  static Color primaryColor = primary;
  static Color secondaryColor = secondary;
  static Color tertiaryColor = tertiary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color kaiColor = const Color(0xFFd2bdb6);

  static TextStyle textStyle =
      TextStyle(fontSize: 10, color: textColor, fontWeight: FontWeight.w500);

  static TextStyle headLine1 =
      TextStyle(fontSize: 26, color: primaryColor, fontWeight: FontWeight.bold);

  static TextStyle headLine2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);

  static TextStyle headLine3 =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w500);

  static TextStyle headLine4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
