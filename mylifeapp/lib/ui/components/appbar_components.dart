import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/colors_config.dart';
import 'package:mylifeapp/core/config/injector_config.dart';
import 'package:mylifeapp/core/l10n/app_localizations.dart';
import 'package:mylifeapp/ui/controllers/auth_controller.dart';
import '../../core/config/constants/image_config.dart';
import '../../core/theme/textstyles_config.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String name;
  final String phrase;
  const MyAppBar({
    super.key,
    required this.name,
    this.phrase = 'Bora conferir o treino de hoje?',
  });

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(160);
}

class _MyAppBarState extends State<MyAppBar> {
  final _authControlle = getIt<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.preferredSize.height,
      decoration: BoxDecoration(
        color: AppColors.deepNavy.withValues(alpha: 0.6),
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50)),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.white, width: 2),
                ),
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(AppImages.imgPerfil),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.hellouser(widget.name),
                      style: AppTextStyles.appBarTitle18,
                    ),
                    Text(widget.phrase, style: AppTextStyles.appBarSubtitle20),
                  ],
                ),
              ),
              IconButton(
                onPressed: () async {
                  _authControlle.logout();
                },
                icon: Icon(Icons.exit_to_app),
              ),
              //Image.asset(ConstantsApp.iconexplosion),
            ],
          ),
        ),
      ),
    );
  }
}
