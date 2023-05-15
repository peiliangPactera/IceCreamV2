import 'dart:ui';

import 'package:flutter_waff/flutter_waff.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import 'locale_ja.dart';
import 'locale_zh_cn.dart';

class Locales extends LocaleManage {
  Locales()
      : super(
            settings: [
              LocaleManageSetting(Locale('ja'), localeJa),
              LocaleManageSetting(Locale('zh', 'CN'), localeZhCn),
            ],
            setLocaleName: (String localeName) => Get.find<SharedPreferences>()
                .setString(StorageKeys.localeName, localeName),
            getLocaleName: () => Get.find<SharedPreferences>()
                .getString(StorageKeys.localeName));
}
