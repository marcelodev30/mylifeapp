// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get loginTitle => 'Entrar';

  @override
  String get loginSubtitle => 'Bem-vindo de volta! Sentimos sua falta.';

  @override
  String get loginEmailLabel => 'E-mail';

  @override
  String get loginEmailHint => 'seuemail@exemplo.com';

  @override
  String get loginPasswordLabel => 'Senha';

  @override
  String get loginPasswordHint => 'Digite sua senha';

  @override
  String get loginForgotPasswordButton => 'Esqueceu a senha?';

  @override
  String get loginButton => 'Entrar';

  @override
  String get loginOrConnectWith => 'Ou conecte-se com';

  @override
  String get loginNoAccountPrompt => 'Não tem uma conta?';

  @override
  String get loginCreateAccountButton => 'Cadastre-se';

  @override
  String get signUpTitle => 'Criar Conta';

  @override
  String get signUpSubtitle => 'É rápido, fácil e gratuito.';

  @override
  String get signUpFullNameLabel => 'Nome Completo';

  @override
  String get signUpFullNameHint => 'Digite seu nome e sobrenome';

  @override
  String get signUpEmailLabel => 'E-mail';

  @override
  String get signUpEmailHint => 'Será seu e-mail de acesso';

  @override
  String get signUpPasswordLabel => 'Crie uma Senha';

  @override
  String get signUpPasswordHint => 'Pelo menos 8 caracteres';

  @override
  String get signUpConfirmPasswordLabel => 'Confirmar Senha';

  @override
  String get signUpConfirmPasswordHint => 'Digite a senha novamente';

  @override
  String get signUpTermsAndConditionsPrompt =>
      'Ao se cadastrar, você concorda com nossos';

  @override
  String get signUpTermsAndConditionsLink =>
      'Termos de Uso e Política de Privacidade.';

  @override
  String get signUpButton => 'Criar minha conta';

  @override
  String get signUpAlreadyHaveAccountPrompt => 'Já tem uma conta?';

  @override
  String get signUpLoginButton => 'Faça o login';

  @override
  String get forgotPasswordTitle => 'Recuperar Senha';

  @override
  String get forgotPasswordSubtitle =>
      'Insira seu e-mail e enviaremos um link para redefinir sua senha.';

  @override
  String get forgotPasswordSendButton => 'Enviar Link de Recuperação';

  @override
  String get genericLoading => 'Carregando...';

  @override
  String get genericErrorTitle => 'Ocorreu um Erro';

  @override
  String get genericSuccessTitle => 'Sucesso!';

  @override
  String get genericOk => 'OK';

  @override
  String get genericCancel => 'Cancelar';

  @override
  String get genericContinue => 'Continuar';

  @override
  String get genericSave => 'Salvar';

  @override
  String get genericNext => 'Próximo';

  @override
  String get genericBack => 'Voltar';

  @override
  String get validationEmailInvalid => 'Por favor, insira um e-mail válido.';

  @override
  String get validationPasswordShort =>
      'A senha deve ter pelo menos 8 caracteres.';

  @override
  String get validationPasswordsDoNotMatch => 'As senhas não coincidem.';

  @override
  String get validationFieldRequired => 'Este campo é obrigatório.';

  @override
  String get authErrorUserNotFound =>
      'Nenhum usuário foi encontrado com este e-mail.';

  @override
  String get authErrorWrongPassword =>
      'Senha incorreta. Por favor, tente novamente.';

  @override
  String get authErrorInvalidCredential =>
      'Credenciais inválidas. Verifique seu e-mail e senha.';

  @override
  String get authErrorEmailAlreadyInUse =>
      'Este endereço de e-mail já está em uso por outra conta.';

  @override
  String get authErrorWeakPassword =>
      'A senha é muito fraca. Tente uma combinação mais forte.';

  @override
  String get authErrorGeneric =>
      'Falha na autenticação. Por favor, verifique sua conexão e tente novamente.';
}
