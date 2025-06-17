import 'package:flutter/material.dart';
import 'package:mylifeapp/core/l10n/app_localizations.dart';
import 'package:mylifeapp/ui/page/auth/layout_base.dart';
import '../../../core/config/constants/colors_config.dart';
import '../../../core/config/constants/constants_config.dart';
import '../../../core/theme/textstyles_config.dart';
import 'components/appbutton.dart';
import 'components/textform_components.dart';
import 'components/texttitle_components.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBaseLogin(
      body: Form(
        key: _fromKey,
        child: Column(
          spacing: AppConstants.spacingColumnAuth,
          children: [
            TextTitleAuth(title: AppLocalizations.of(context)!.loginTitle),
            TextFormField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.loginEmailHint,
                label: Text(AppLocalizations.of(context)!.signUpEmailLabel),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            Column(
              children: [
                TextFormSenha(onSaved: (value) {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        AppLocalizations.of(context)!.forgotPasswordTitle,
                        style: AppTextStyles.text16W700Subindo,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              spacing: 5,
              children: [
                AppButtonAuth(
                  title: AppLocalizations.of(context)!.loginButton,
                  onPressed: () {
                    if (_fromKey.currentState!.validate()) {
                      _fromKey.currentState!.save();
                    }
                  },
                  color: AppColors.blue,
                ),
                AppButtonAuth(
                  title: AppLocalizations.of(context)!.loginCreateAccountButton,
                  onPressed: () {},
                  color: AppColors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
