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
  String get loginSubtitle => 'Bem-vindo de volta!';

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
  String get genericErrorTitle => 'Ocorreu um Erro';

  @override
  String get genericSuccessTitle => 'Sucesso!';

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

  @override
  String hellouser(String userName) {
    return 'E aí, $userName';
  }

  @override
  String get settingsScreenTitle => 'Configurações';

  @override
  String get profileScreenTitle => 'Meu Perfil';

  @override
  String get workoutsScreenTitle => 'Meus Treinos';

  @override
  String get homeScreenTitle => 'Início';

  @override
  String get dataStateLoading => 'Carregando...';

  @override
  String get save => 'Salvar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get edit => 'Editar';

  @override
  String get delete => 'Excluir';

  @override
  String get add => 'Adicionar';

  @override
  String get next => 'Próximo';

  @override
  String get back => 'Voltar';

  @override
  String get continueAction => 'Continuar';

  @override
  String get close => 'Fechar';

  @override
  String get search => 'Buscar';

  @override
  String get filter => 'Filtrar';

  @override
  String get apply => 'Aplicar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get yes => 'Sim';

  @override
  String get no => 'Não';

  @override
  String get ok => 'OK';

  @override
  String get dataStateNoData => 'Nenhum dado encontrado.';

  @override
  String get dataStateError =>
      'Não foi possível carregar os dados. Tente novamente.';

  @override
  String phraseAppBar(String phrase) {
    return 'Bora conferir o $phrase de hoje?';
  }

  @override
  String get status_pendente => 'Pendente';

  @override
  String get status_processando => 'Processando';

  @override
  String get status_concluido => 'Concluído';

  @override
  String get status_falhou => 'Falhou';

  @override
  String get user_type_aluno => 'Aluno';

  @override
  String get user_type_trainer => 'Personal Trainer';

  @override
  String get user_type_nutricionista => 'Nutricionista';

  @override
  String get series_type_aquecimento => 'Aquecimento';

  @override
  String get series_type_preparacao => 'Série de Preparação';

  @override
  String get series_type_reconhecimento => 'Reconhecimento de Carga';

  @override
  String get series_type_trabalho => 'Série de Trabalho';

  @override
  String get week_day_segunda_long => 'Segunda-feira';

  @override
  String get week_day_terca_long => 'Terça-feira';

  @override
  String get week_day_quarta_long => 'Quarta-feira';

  @override
  String get week_day_quinta_long => 'Quinta-feira';

  @override
  String get week_day_sexta_long => 'Sexta-feira';

  @override
  String get week_day_sabado_long => 'Sábado';

  @override
  String get week_day_domingo_long => 'Domingo';

  @override
  String get week_day_segunda_short => 'SEG';

  @override
  String get week_day_terca_short => 'TER';

  @override
  String get week_day_quarta_short => 'QUA';

  @override
  String get week_day_quinta_short => 'QUI';

  @override
  String get week_day_sexta_short => 'SEX';

  @override
  String get week_day_sabado_short => 'SÁB';

  @override
  String get week_day_domingo_short => 'DOM';

  @override
  String get effort_level_muito_leve => 'Muito Leve';

  @override
  String get effort_level_leve => 'Leve';

  @override
  String get effort_level_moderado => 'Moderado';

  @override
  String get effort_level_dificil => 'Difícil';

  @override
  String get effort_level_maximo => 'Máximo Esforço';

  @override
  String get meal_type_cafe_da_manha => 'Café da Manhã';

  @override
  String get meal_type_lanche_da_manha => 'Lanche da Manhã';

  @override
  String get meal_type_almoco => 'Almoço';

  @override
  String get meal_type_lanche_da_tarde => 'Lanche da Tarde';

  @override
  String get meal_type_pre_treino => 'Pré-Treino';

  @override
  String get meal_type_pos_treino => 'Pós-Treino';

  @override
  String get meal_type_jantar => 'Jantar';

  @override
  String get meal_type_ceia => 'Ceia';
}
