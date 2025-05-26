import 'package:flutter/material.dart';
import 'package:mylifeapp/ui/page/auth/layout_base.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBaseLogin(
      body: Form(child: Column(children: [TextFormField(), TextFormField()])),
    );
  }
}
