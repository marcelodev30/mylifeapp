import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mylifeapp/core/l10n/app_localizations.dart';

class AppLocale {
  static final List<Locale> supportedLocales = [
    const Locale('en'), // Inglês
    const Locale('pt'), // Português
  ];
  static final localizationsDelegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
}
