import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'locales/locales.dart';
import 'themes/themes.dart';

abstract class Denpendencies {
  static Future<void> init() async {
    // KeyValue Service
    await Get.putAsync(() async {
      return await SharedPreferences.getInstance();
    }, permanent: true);

    // Locale&Theme
    Get.put(Themes(), permanent: true);
    Get.put(Locales(), permanent: true);
  }
}
