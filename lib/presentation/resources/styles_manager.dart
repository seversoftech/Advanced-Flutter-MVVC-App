
import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextstyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}

//Regular Style

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextstyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.regular, color);
}

// light text style

TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextstyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.light, color);
}

// bold text style..

TextStyle getBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextstyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.bold, color);
}

// semibold text style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextstyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.semiBold, color);
}

// medium style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextstyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.medium, color);
}