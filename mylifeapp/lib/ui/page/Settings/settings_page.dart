import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/injector_config.dart';
import 'package:mylifeapp/ui/controllers/auth_controller.dart';
import 'package:mylifeapp/ui/page/Settings/components/item_card_settings.dart';
import 'package:mylifeapp/ui/page/Settings/components/profile_header_settings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _authControlle = getIt<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileHeader(),
        SizedBox(height: 20),
        ItemCardSettings(title: 'Aparência', icon: Icons.light, onTap: () {}),
        ItemCardSettings(
          title: 'Sai',
          icon: Icons.exit_to_app,
          onTap: () => _authControlle.logout(),
        ),
      ],
    );
  }
}
