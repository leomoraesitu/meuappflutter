import 'package:flutter/material.dart';
import 'package:meuappflutter/ui/app_colors.dart';

class AppTheme {
  static final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    scaffoldBackgroundColor: AppColors.backGroundColor,
    useMaterial3: true,
  );
}
