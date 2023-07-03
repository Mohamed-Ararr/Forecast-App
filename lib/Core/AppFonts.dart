import 'package:flutter/material.dart';

import 'AppColors.dart';

class AppFonts {
  static TextStyle appTitle = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static TextStyle cityFontStyle = const TextStyle(
    fontSize: 22,
    fontFamily: "Russo One",
    letterSpacing: 1,
  );

  static TextStyle cityTempStyle = const TextStyle(
    fontSize: 50,
    fontFamily: "Russo One",
  );

  static TextStyle cityDetailStyle = TextStyle(
    color: AppColors.greyColor,
    fontSize: 14,
  );

  static TextStyle cityNumbersDetailStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );
}
