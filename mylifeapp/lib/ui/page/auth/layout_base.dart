import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/colors_config.dart';
import 'package:mylifeapp/core/theme/textstyles_config.dart';
import '../../../core/config/constants/image_config.dart';

class LayoutBaseLogin extends StatelessWidget {
  const LayoutBaseLogin({super.key, required this.body});
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 8 * 9),
                Image.asset(AppImages.imgLogoV1, height: 8 * 33),
                Row(
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
                ),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: body,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
