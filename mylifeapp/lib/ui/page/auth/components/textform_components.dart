import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/validators_config.dart';

class TextFormSenha extends StatefulWidget {
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  const TextFormSenha({super.key, required this.onSaved, this.validator});

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
      style: TextStyle(color: Colors.black87, fontSize: 16),
      decoration: InputDecoration(
        label: Text('Senha'),
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
