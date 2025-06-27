import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/colors_config.dart';

class CircleImgProfile extends StatelessWidget {
  final double radius;
  final String imgUrl;

  const CircleImgProfile({
    super.key,
    this.radius = 48,
    this.imgUrl = 'assets/img/perfil.png',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.green, width: 3),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: CircleAvatar(radius: radius, backgroundImage: AssetImage(imgUrl)),
    );
  }
}
