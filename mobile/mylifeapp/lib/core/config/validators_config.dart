class ValidatorsApp {
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Senha é obrigatória';
    }
    if (value.length < 8) {
      return 'Use ao menos 8 caracteres';
    }
    final regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#\$%&\*]).+$');
    if (!regex.hasMatch(value)) {
      return 'Precisa ter maiúscula, minúscula, número e caractere especial';
    }
    return null;
  }

  static String? validatePasswordDefault(String? value) {
    if (value == null || value.isEmpty) {
      return 'Senha é obrigatória';
    }
    if (value.length < 8) {
      return 'Use ao menos 8 caracteres';
    }
    return null;
  }

  static String? validateDefault(String? value, String label) {
    if (value == null || value.isEmpty) {
      return '$label é obrigatória';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'E-mail é obrigatório';
    }
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!regex.hasMatch(value)) {
      return 'Formato de e-mail inválido';
    }
    return null;
  }
}
