import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/colors_config.dart';
import 'package:mylifeapp/ui/page/auth/components/apptitletext_component.dart';
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
                TitleApp(),
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
