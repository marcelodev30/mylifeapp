import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/colors_config.dart';
import 'package:mylifeapp/core/theme/textstyles_config.dart';

class TitleApp extends StatelessWidget {
  const TitleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ShaderMask(
          shaderCallback:
              (bounds) => AppColors.neonGradient.createShader(
                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
              ),
          child: Text(
            'MyLife',
            style: AppTextStyles.text40BoldLetterSpacing1.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
        SizedBox(width: 6),
        Text(
          '+App',
          style: AppTextStyles.text40BoldLetterSpacing1.copyWith(
            color: AppColors.neonRed,
          ),
        ),
      ],
    );
  }
}
