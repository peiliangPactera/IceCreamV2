import 'package:flutter/widgets.dart';
import 'package:flutter_waff/flutter_waff.dart';

/// Colors that cannot be defined by ThemeData
class ThemeColors extends ThemeManageColors {
  final Color widgetTextColor;

  ThemeColors({
    required this.widgetTextColor,
  });
}
