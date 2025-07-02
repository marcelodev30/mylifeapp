import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/colors_config.dart';
import 'package:mylifeapp/ui/components/profile_avatar_components.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  static const double _cardHeight = 170.0;
  static const double _avatarRadius = 48.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _cardHeight + _avatarRadius,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: _avatarRadius,
            left: 16.0,
            right: 16.0,
            height: _cardHeight,
            child: Container(
              decoration: BoxDecoration(
                gradient: AppColors.neonGradient,
                //color: AppColors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                const CircleImgProfile(radius: _avatarRadius),
                const SizedBox(height: 8),
                Text(
                  "Marcelo Alves",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Outros Dados ??",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
