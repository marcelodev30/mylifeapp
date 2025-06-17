import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/constants_config.dart';
import 'package:mylifeapp/core/l10n/app_localizations.dart';
import 'package:mylifeapp/ui/page/auth/layout_base.dart';

import 'components/texttitle_components.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBaseLogin(
      body: Form(
        child: Column(
          spacing: AppConstants.spacingColumnAuth,
          children: [
            TextTitleAuth(title: AppLocalizations.of(context)!.signUpTitle),
            TextFormField(decoration: InputDecoration(label: Text('Nome'))),
            TextFormField(),
          ],
        ),
      ),
    );
  }
}
