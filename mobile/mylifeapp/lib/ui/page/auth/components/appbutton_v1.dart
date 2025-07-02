import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/colors_config.dart';

class AppButtonAuthV1 extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  final Color color;
  const AppButtonAuthV1({
    super.key,
    required this.title,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 42,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: WidgetStatePropertyAll(4),
          backgroundColor: WidgetStatePropertyAll(color),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
