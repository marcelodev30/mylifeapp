import 'package:flutter/material.dart';

import '../../../../core/config/constants/colors_config.dart';

class TextTitleAuth extends StatelessWidget {
  final String title;
  const TextTitleAuth({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
    );
  }
}
