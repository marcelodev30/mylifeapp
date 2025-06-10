import 'package:flutter/material.dart';

class TextFormSenha extends StatefulWidget {
  final void Function(String?)? onSaved;
  const TextFormSenha({super.key, required this.onSaved});

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
      style: TextStyle(color: Colors.red, fontSize: 16),
      decoration: InputDecoration(
        label: Text('Senha'),
        prefixIcon: Icon(Icons.password_outlined),
        suffixIcon: IconButton(
          onPressed: () => setState(() => obscureText = !obscureText),
          icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Senha é obrigatória';
        }
        if (value.length < 8) {
          return 'Use ao menos 8 caracteres';
        }
        if (!RegExp(
          r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#\$%&\*]).+$',
        ).hasMatch(value)) {
          return 'Precisa ter maiúscula, minúscula, número e caractere especial';
        }
        return null;
      },
    );
  }
}
