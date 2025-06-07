import 'package:flutter/material.dart';
import 'package:mylifewear/ui/page/homepage.dart';

import 'core/config/themedata_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.dark,
      home: HomePage(),
    );
  }
}
