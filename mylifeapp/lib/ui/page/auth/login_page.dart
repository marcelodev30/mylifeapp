import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mylifeapp/core/config/constants/icons_config.dart';
import 'package:mylifeapp/core/config/constants/image_config.dart';
import 'package:mylifeapp/core/config/injector_config.dart';
import 'package:mylifeapp/core/l10n/app_localizations.dart';
import 'package:mylifeapp/ui/controllers/auth_controller.dart';
import 'package:mylifeapp/ui/page/auth/components/appbutton_compnent.dart';
import 'package:mylifeapp/ui/page/auth/components/apptitletext_component.dart';
import 'package:mylifeapp/ui/page/auth/components/texttitle_components.dart';
import '../../../core/config/constants/colors_config.dart';
import '../../../core/theme/textstyles_config.dart';
import 'components/textform_components.dart';

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 8 * 12),
              Image.asset(AppImages.imgLogoV1, height: 8 * 17),
              TitleApp(),
              SizedBox(height: 8),
              Form(
                key: _fromKey,
                child: Column(
                  spacing: 8,
                  children: [
                    //TextTitleAuth(title: AppLocalizations.of(context)!.loginTitle),
                    Text(
                      AppLocalizations.of(context)!.loginSubtitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white.withValues(alpha: 0.7),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context)!.loginEmailHint,
                        label: Text(
                          AppLocalizations.of(context)!.signUpEmailLabel,
                        ),
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    SizedBox(height: 8),
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
                    AppButtonAuth(
                      text: Text(
                        AppLocalizations.of(context)!.loginButton,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                      ),
                      color: AppColors.white,
                      onPressed: () {
                        _authControlle.login(_email.text, _senha.text);
                        if (_fromKey.currentState!.validate()) {
                          _fromKey.currentState!.save();
                        }
                      },
                    ),
                    SizedBox(height: 4),
                    //Divider(color: Colors.white, height: 24),
                    Text(
                      AppLocalizations.of(context)!.loginOrConnectWith,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(height: 4),
                    AppButtonAuth(
                      text: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppIcons.googleIcon, width: 24),
                          SizedBox(width: 8),
                          Text(
                            'Google',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                      color: AppColors.white,
                      onPressed: () => _authControlle.signInGoogle(),
                    ),
                    //SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.loginNoAccountPrompt,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                        ),
                        TextButton(
                          child: Text(
                            AppLocalizations.of(
                              context,
                            )!.loginCreateAccountButton,
                            style: AppTextStyles.text16W700Subindo,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
