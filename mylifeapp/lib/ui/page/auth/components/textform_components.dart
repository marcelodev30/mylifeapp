import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/validators_config.dart';
import 'package:mylifeapp/core/locale/app_localizations.dart';

class TextFormSenha extends StatefulWidget {
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? labelText;
  final String? hintText;
  const TextFormSenha({
    super.key,
    this.onSaved,
    this.validator,
    this.labelText,
    this.hintText,
    this.controller,
  });

  @override
  State<TextFormSenha> createState() => _TextFormSenhaState();
}

class _TextFormSenhaState extends State<TextFormSenha> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      controller: widget.controller,
      style: TextStyle(fontSize: 16),
      decoration: InputDecoration(
        labelText:
            widget.labelText ??
            AppLocalizations.of(context)!.loginPasswordLabel,
        hintText:
            widget.hintText ?? AppLocalizations.of(context)!.loginPasswordHint,
        prefixIcon: Icon(Icons.password_outlined),
        suffixIcon: IconButton(
          onPressed: () => setState(() => obscureText = !obscureText),
          icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ),
      validator: widget.validator ?? ValidatorsApp.validatePasswordDefault,
    );
  }
}
