
import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xffdfdddd);
  static Color searchBarColor = const Color(0xFFF4F6FD);
  static Color textColor = const Color(0xFF3b3b3b);
  static TextStyle textStyle = TextStyle(fontSize: 16,color: textColor,fontWeight: FontWeight.w500);
  static TextStyle headlineStyleOne = TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppStyles.textColor);
  static TextStyle headlineStyleTwo = const TextStyle(fontSize: 17, fontWeight: FontWeight.w100,);
  static TextStyle headlineStyleThree = TextStyle(fontSize: 21, fontWeight: FontWeight.bold,color: AppStyles.textColor);
  static TextStyle headlineStyleFour = TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: AppStyles.textColor);
}