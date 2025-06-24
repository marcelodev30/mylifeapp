import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/colors_config.dart';
import 'package:mylifeapp/core/config/constants/image_config.dart';
// O import do 'textstyles_config.dart' não é mais necessário aqui se você não o tiver.
// import 'package:mylifeapp/core/theme/textstyles_config.dart';
import 'package:mylifeapp/ui/page/auth/layout_base.dart';

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
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.green, width: 3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withValues(alpha: 0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 48,
                backgroundImage: AssetImage(AppImages.imgPerfil),
              ),
            ),
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
