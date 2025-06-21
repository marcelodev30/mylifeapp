import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/string_config.dart';
import 'package:mylifeapp/core/config/l10n_config.dart';
import 'package:mylifeapp/core/config/gorouter_config.dart';
import 'package:mylifeapp/core/theme/themedata_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppString.titleApp,
      theme: AppThemeData.dark,
      routerConfig: AppRouter.route,
      //locale: Locale('pt'),
      localizationsDelegates: AppLocale.localizationsDelegates,
      supportedLocales: AppLocale.supportedLocales,
    );
  }
}
