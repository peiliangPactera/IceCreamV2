import 'package:flutter/material.dart';
import 'package:flutter_waff/flutter_waff.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import 'theme_colors.dart';
import 'theme_dark.dart';
import 'theme_light.dart';

class Themes extends ThemeManage<ThemeColors> {
  static late final Themes instance;

  Themes()
      : super(
          light: themeLight,
          lightColors: themeLightColors,
          dark: themeDark,
          darkColors: themeDarkColors,
          allowChangeThemeMode: true,
          setThemeMode: (int themeMode) => Get.find<SharedPreferences>()
              .setInt(StorageKeys.themeMode, themeMode),
          getThemeMode: () =>
              Get.find<SharedPreferences>().getInt(StorageKeys.themeMode),
        ) {
    instance = this;
  }

  /// Current theme
  static ThemeData get current => instance.getCurrentTheme();

  /// Current colors
  static ThemeColors get currentColors => instance.getCurrentColors();

  /// Current brightness
  static Brightness get currentBrightness => instance.getCurrentBrightness();
}
