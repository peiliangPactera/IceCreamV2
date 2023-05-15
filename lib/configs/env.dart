import 'package:flutter_waff/flutter_waff.dart';
import 'package:get/get.dart';

abstract class Env {
  /// Get app title
  static String get title => _title;
  static String _title = 'Flutter-Waff-Example';

  /// Get app runtime
  static Runtime get runtime => _runtime;
  static Runtime _runtime = Runtime.PROD;

  /// Whether "debug-banner" is enabled
  static bool get debugShowCheckedModeBanner => _debugShowCheckedModeBanner;
  static bool _debugShowCheckedModeBanner = false;

  /// Get sqlite database filename
  static String get dbFilename => _dbFilename;
  static String _dbFilename = 'database.db';

  /// Get RESTful-API settings
  static Map<ApiName, HttpBaseOptions> _apiOptions = {};

  /// Initiate env through [runtime] param.
  static init(Runtime runtime) async {
    _runtime = runtime;

    switch (runtime) {
      case Runtime.DEV: // DEV
        Get.isLogEnable = true;
        Waff.isHttpLogEnable = true;
        Waff.isHttpFullLogEnable = true;
        _debugShowCheckedModeBanner = true;
        _apiOptions[ApiName.DEFAULT] = HttpBaseOptions(
          name: enumToString(ApiName.DEFAULT),
          baseUrl: 'https://gitee.com/api/v5',
          transformer: HttpStandardTransformer(),
        );
        Log.enableConsole = true;
        Log.logLevel = LogLevel.verbose;
        _apiOptions[ApiName.DOUBAN] = HttpBaseOptions(name: enumToString(ApiName.DOUBAN));
        break;

      case Runtime.TEST: // TEST
        Get.isLogEnable = false;
        Waff.isHttpLogEnable = true;
        _debugShowCheckedModeBanner = true;
        _apiOptions[ApiName.DEFAULT] = HttpBaseOptions(
          name: enumToString(ApiName.DEFAULT),
          baseUrl: 'https://gitee.com/api/v5',
          transformer: HttpStandardTransformer(),
        );
        Log.logLevel = LogLevel.debug;
        Log.onCollect = (LogLevel level, List<String> lines) {
          // TODO: send to remote log collect
        };
        break;

      default: // PROD
        Get.isLogEnable = false;
        _apiOptions[ApiName.DEFAULT] = HttpBaseOptions(
          name: enumToString(ApiName.DEFAULT),
          baseUrl: 'https://gitee.com/api/v5',
          transformer: HttpStandardTransformer(),
        );
        Log.onCollect = (LogLevel level, List<String> lines) {
          // TODO: send to remote log collect
        };
    }
  }

  static HttpBaseOptions getApiOptions(ApiName name) {
    if (!_apiOptions.containsKey(name)) {
      throw 'Undefined API options: $name';
    }
    return _apiOptions[name]!;
  }
}

/// App runtime
enum Runtime { PROD, TEST, DEV }

/// Api names defined
enum ApiName { DEFAULT, DOUBAN }
