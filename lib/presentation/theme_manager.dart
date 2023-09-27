import 'package:advance_flutter_mvvc/presentation/color_manager.dart';
import 'package:advance_flutter_mvvc/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
//main colors of the app
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryOpacity70,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),

// card view theme
      cardTheme: CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.grey,
          elevation: AppSize.s4)
// appbar theme

//button theme

//text theme

//input
      );
}
