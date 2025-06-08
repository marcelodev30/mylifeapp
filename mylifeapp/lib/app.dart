import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/gorouter_config.dart';
import 'package:mylifeapp/core/config/themedata_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'My Life App',
      theme: AppThemeData.dark,
      routerConfig: AppRouter.route,
    );
  }
}
