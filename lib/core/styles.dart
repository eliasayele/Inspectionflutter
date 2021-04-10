import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
//Colors.grey[400]
/// Convenience class to access application colors.
abstract class AppTheme {
  /// Dark background color.
  static const Color backgroundColor = Color(0xFF191D1F);

  /// Slightly lighter version of [backgroundColor].
  static const Color backgroundFadedColor = Color(0xFF191B1C);

  /// Color used for cards and surfaces.
  static const Color cardColor = Color(0xFF1F2426);

  /// Accent color used in the application.
  static const Color accentColor = Color(0xFFef8354);
  static const Color myPrimaryColor = Color(0xFFe8AB27);
  static const Color secondPrimaryColor = Color(0xFF737CC6);

  //Color(0xFFE1E0F5)

  ///text style for app bars
  static const TextStyle appBartexstyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 24.0,
    color: Colors.white,
  );

  ///text style for yellow buttons
  static const TextStyle yellowButtonsTextStyle = TextStyle(
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w900,
    fontSize: 24.0,
    color: Colors.white,
  );
}

class Screen {
  ///getting scren size for later use of elements
  void getScreen(context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
  }
}
