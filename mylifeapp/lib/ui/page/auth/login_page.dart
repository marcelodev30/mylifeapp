import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mylifeapp/core/config/constants/image_config.dart';
import 'package:mylifeapp/core/config/injector_config.dart';
import 'package:mylifeapp/core/l10n/app_localizations.dart';
import 'package:mylifeapp/ui/controllers/auth_controller.dart';
import 'package:mylifeapp/ui/page/auth/components/appbutton_google.dart';
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
  final _email = TextEditingController();
  final _senha = TextEditingController();
  final _authControlle = getIt<AuthController>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _authControlle.addListener(() {
      if (_authControlle.erro != null) {
        debugPrint(_authControlle.erro);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _senha.dispose();
  }

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
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.loginEmailHint,
                label: Text(AppLocalizations.of(context)!.signUpEmailLabel),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            Column(
              children: [
                TextFormSenha(controller: _senha),
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
              spacing: 16,
              children: [
                AppButtonAuth(
                  title: AppLocalizations.of(context)!.loginButton,
                  onPressed: () {
                    _authControlle.login(_email.text, _senha.text);
                    if (_fromKey.currentState!.validate()) {
                      _fromKey.currentState!.save();
                    }
                  },
                  color: AppColors.blue,
                ),
                AppButtonAuth(
                  title: AppLocalizations.of(context)!.loginCreateAccountButton,
                  onPressed: () {},
                  color: AppColors.transparent,
                ),
              ],
            ),
            AppbuttonGoogle(
              text: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 8,
                children: [
                  SizedBox(width: 0),
                  SvgPicture.asset(AppImages.googleIcon, width: 24),
                  Text(
                    'Sign Up with Google',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              color: AppColors.white,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
