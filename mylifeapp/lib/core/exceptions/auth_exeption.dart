class AuthException implements Exception {
  final String message;
  AuthException(this.message);

  @override
  String toString() => message;
}

class LoginInvalidoException extends AuthException {
  LoginInvalidoException({String message = 'Email ou senha inválidos.'})
    : super(message);
}

class UsuarioNaoEncontradoException extends AuthException {
  UsuarioNaoEncontradoException({
    String message = 'Nenhum usuário encontrado para este email.',
  }) : super(message);
}

class SenhaIncorretaException extends AuthException {
  SenhaIncorretaException({
    String message = 'A senha fornecida está incorreta.',
  }) : super(message);
}

// Exceções específicas para o Registro
class EmailJaEmUsoException extends AuthException {
  EmailJaEmUsoException({
    String message = 'Este email já está em uso por outra conta.',
  }) : super(message);
}

class SenhaFracaException extends AuthException {
  SenhaFracaException({
    String message = 'A senha é muito fraca. Tente uma mais forte.',
  }) : super(message);
}

// Exceção genérica
class ErroInesperadoAuthException extends AuthException {
  ErroInesperadoAuthException({
    String message = 'Ocorreu um erro inesperado. Tente novamente.',
  }) : super(message);
}
