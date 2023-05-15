import 'package:get/get.dart';

import '../pages/main/main_page.dart';

abstract class Routes {
  static const String MAIN = '/';

  static final List<GetPage> pages = [
    GetPage(
      name: MAIN,
      page: () => MainPage(),
    ),

  ];
}
