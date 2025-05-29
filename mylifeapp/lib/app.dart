import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/themedata_config.dart';
import 'package:mylifeapp/ui/page/home/home_page.dart';
import 'ui/page/auth/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Life App',
      theme: AppThemeData.dark,
      home: LoginPage(),
    );
  }
}
