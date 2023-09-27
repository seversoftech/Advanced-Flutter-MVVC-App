
import 'package:flutter/material.dart';

import 'resources/color_manager.dart';
import 'resources/font_manager.dart';
import 'resources/styles_manager.dart';
import 'resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
//main colors of the app
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryOpacity70,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),
      splashColor: ColorManager.primaryOpacity70,

// card view theme
      cardTheme: CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.grey,
          elevation: AppSize.s4),
// appbar theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.primaryOpacity70,
        titleTextStyle:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
      )
//button theme

//text theme

//input
      );
}
