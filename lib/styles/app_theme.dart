import 'package:flutter/material.dart';
import 'package:portafolio/styles/app_colors.dart';

class AppTheme {
  //Oscuros

  static ThemeData get dark => ThemeData(
    colorScheme: ColorScheme.dark(primary: AppColors.red),

    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.darkBackground,
    appBarTheme: AppBarTheme(),
  );

  //Claros
}
