import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/colors_config.dart';
import 'package:mylifeapp/ui/components/profile_avatar_components.dart';
import 'package:mylifeapp/ui/page/auth/layout_base_page.dart';

class ScreenLockPage extends StatefulWidget {
  const ScreenLockPage({super.key});

  @override
  State<ScreenLockPage> createState() => _ScreenLockPageState();
}

class _ScreenLockPageState extends State<ScreenLockPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBaseLogin(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8 * 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleImgProfile(),
            const SizedBox(height: 16),
            Text(
              "Marcelo Alves",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Bem-vindo de volta!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: AppColors.white.withValues(alpha: 0.7),
              ),
            ),
            const SizedBox(height: 8 * 6),

            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.fingerprint_rounded,
                      color: AppColors.neonRed.withValues(alpha: 0.8),
                      size: 72,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Toque para entrar",
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.white.withValues(alpha: 0.8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
