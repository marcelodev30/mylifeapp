import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/colors_config.dart';
import 'package:mylifeapp/ui/page/auth/components/appbutton.dart'
    show AppButtonAuth;
import 'package:mylifeapp/ui/page/auth/layout_base.dart';

import '../../../core/config/textstyles_config.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBaseLogin(
      body: Form(
        child: Column(
          spacing: 23,
          children: [
            Text(
              'Login',
              style: AppTextStyles.appTitle32.copyWith(color: Colors.black),
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Email"),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Senha'),
                    prefixIcon: Icon(Icons.password_outlined),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Redefir Senha",
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
                  title: 'Entra',
                  onPressed: () {},
                  color: AppColors.blue,
                ),
                AppButtonAuth(
                  title: 'Cadastrar',
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
