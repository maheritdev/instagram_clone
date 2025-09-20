import 'package:flutter/material.dart';

class Appcolors {
  static Color LoginButtonColor = Color(0xff405de6);

  static Color Black = Colors.black;
  static Color LightGrey = Color(0xffC7C7C7);
  static Color TextFeildBG = Color(0xffFAFAFA);
  static Color UNREADBADGECOLOR = Color(0xffED4956);
  static Color VerifiedColor = Color(0xff3897F0);
  static List<Color> storiesColor = [
    Color(0xffE20337),
    Color(0xffC60188),
    Color(0xff7700C3),
  ];

  static List<Color> statusColors(bool isViewed) {
    // For viewed stories, use a simple grey color
    if (isViewed) {
      return [Colors.grey.shade400];
    }

    // For unviewed stories, use the Instagram-like gradient
    return const [
      Color(0xFFFEDA75), // Yellow
      Color(0xFFFA7E1E), // Orange
      Color(0xFFD62976), // Pink
      Color(0xFF962FBF), // Purple
      Color(0xFF4F5BD5),  // Blue
    ];
  }

}
