import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_waff/flutter_waff.dart';

Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates = {
  GlobalMaterialLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  WaffLocalizations.delegate,
};
