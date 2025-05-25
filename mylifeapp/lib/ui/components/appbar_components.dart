import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/colors_config.dart';
import 'package:mylifeapp/core/config/constants_config.dart';

import '../../core/config/textstyles_config.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(125);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
       decoration: BoxDecoration(
        color: AppColors.navyBlack,
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50)),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,border: Border.all(color: AppColors.white,width: 2)
              ),
              child: CircleAvatar(radius: 28,backgroundImage: AssetImage(ConstantsApp.imgPerfil))),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('E aí, Marcelo Alves! ',style: AppTextStyles.appBarTitle18),
                  Text('Bora conferir o treino de hoje?',style: AppTextStyles.appBarSubtitle20),
                ],
              ),
            ),
            Image.asset(ConstantsApp.iconexplosion)
          ],),
        ),
      ),
      );
  }
  

}