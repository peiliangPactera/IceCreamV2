import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_waff/flutter_waff.dart';
import 'package:get/get.dart';

import 'configs/denpendencies.dart';
import 'configs/env.dart';
import 'configs/locales/locales.dart';
import 'configs/locales/localizations_delegates.dart';
import 'configs/routes.dart';
import 'configs/themes/themes.dart';
import 'pages/components/error_page.dart';
import 'pages/components/not_found_page.dart';
import 'utils/error_handler.dart';

Future<void> startApp(Runtime runtime) async {
  runZonedGuarded(() async {
    // Widgets flutter binding
    AppLifecycleListener.startup(WidgetsFlutterBinding.ensureInitialized());

    // Application init
    try {
      // Event init
      await Env.init(runtime);
      Log.d('Application starting ...');

      // Denpendency init
      await Denpendencies.init();

      // Run app
      _runApp();
    } catch (e, s) {
      Log.e(e, s);
      _showStartError(e, s);
      // exit(1); // Fatal error, exit app
    }
  }, (Object error, StackTrace stack) {
    Log.e(error, stack);
    errorHandler(error, stack);
  });
}

void _runApp() {
  Locales localesCtrl = Get.find();
  Themes themesCtrl = Get.find();
  runApp(
    Obx(
      () {
        return GetMaterialApp(
          // Title
          title: Env.title,

          // Debug
          enableLog: Get.isLogEnable,
          debugShowCheckedModeBanner: Env.debugShowCheckedModeBanner,

          // Locale
          translations: localesCtrl,
          locale: localesCtrl.current,
          fallbackLocale: localesCtrl.fallbackLocale,
          supportedLocales: localesCtrl.supportedLocales.values,
          localizationsDelegates: localizationsDelegates,

          // Theme
          theme: themesCtrl.light,
          darkTheme: themesCtrl.dark,
          themeMode: themesCtrl.mode.value,
          defaultTransition: Transition.cupertino,

          // Route
          getPages: Routes.pages,
          initialRoute: Routes.MAIN,
          unknownRoute: GetPage(name: '/not_found', page: () => NotFoundPage()),

          // Builder
          builder: (context, child) {
            ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
              Log.e(errorDetails.exception, errorDetails.stack);
              return ErrorPage(errorDetails.exception, errorDetails.stack);
            };

            return GestureDetector(
              child: child,
              onTap: () {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus &&
                    currentFocus.focusedChild != null) {
                  FocusManager.instance.primaryFocus?.unfocus();
                }
              },
            );
          },
        );
      },
    ),
  );
}

void _showStartError(Object e, Object s) {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: Env.debugShowCheckedModeBanner,
      home: ErrorPage(e, s),
    ),
  );
}
