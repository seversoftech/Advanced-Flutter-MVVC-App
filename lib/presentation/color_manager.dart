import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = '#ED9728';
  static Color darkGrey = '#525252';
  static Color grey = '#737477';
  static Color lightGrey = '#9E9E9E';
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');

    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString;
    }
  }
}
