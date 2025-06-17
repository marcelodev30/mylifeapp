import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt'),
  ];

  /// No description provided for @loginTitle.
  ///
  /// In pt, this message translates to:
  /// **'Entrar'**
  String get loginTitle;

  /// No description provided for @loginSubtitle.
  ///
  /// In pt, this message translates to:
  /// **'Bem-vindo de volta! Sentimos sua falta.'**
  String get loginSubtitle;

  /// No description provided for @loginEmailLabel.
  ///
  /// In pt, this message translates to:
  /// **'E-mail'**
  String get loginEmailLabel;

  /// No description provided for @loginEmailHint.
  ///
  /// In pt, this message translates to:
  /// **'seuemail@exemplo.com'**
  String get loginEmailHint;

  /// No description provided for @loginPasswordLabel.
  ///
  /// In pt, this message translates to:
  /// **'Senha'**
  String get loginPasswordLabel;

  /// No description provided for @loginPasswordHint.
  ///
  /// In pt, this message translates to:
  /// **'Digite sua senha'**
  String get loginPasswordHint;

  /// No description provided for @loginForgotPasswordButton.
  ///
  /// In pt, this message translates to:
  /// **'Esqueceu a senha?'**
  String get loginForgotPasswordButton;

  /// No description provided for @loginButton.
  ///
  /// In pt, this message translates to:
  /// **'Entrar'**
  String get loginButton;

  /// No description provided for @loginOrConnectWith.
  ///
  /// In pt, this message translates to:
  /// **'Ou conecte-se com'**
  String get loginOrConnectWith;

  /// No description provided for @loginNoAccountPrompt.
  ///
  /// In pt, this message translates to:
  /// **'Não tem uma conta?'**
  String get loginNoAccountPrompt;

  /// No description provided for @loginCreateAccountButton.
  ///
  /// In pt, this message translates to:
  /// **'Cadastre-se'**
  String get loginCreateAccountButton;

  /// No description provided for @signUpTitle.
  ///
  /// In pt, this message translates to:
  /// **'Criar Conta'**
  String get signUpTitle;

  /// No description provided for @signUpSubtitle.
  ///
  /// In pt, this message translates to:
  /// **'É rápido, fácil e gratuito.'**
  String get signUpSubtitle;

  /// No description provided for @signUpFullNameLabel.
  ///
  /// In pt, this message translates to:
  /// **'Nome Completo'**
  String get signUpFullNameLabel;

  /// No description provided for @signUpFullNameHint.
  ///
  /// In pt, this message translates to:
  /// **'Digite seu nome e sobrenome'**
  String get signUpFullNameHint;

  /// No description provided for @signUpEmailLabel.
  ///
  /// In pt, this message translates to:
  /// **'E-mail'**
  String get signUpEmailLabel;

  /// No description provided for @signUpEmailHint.
  ///
  /// In pt, this message translates to:
  /// **'Será seu e-mail de acesso'**
  String get signUpEmailHint;

  /// No description provided for @signUpPasswordLabel.
  ///
  /// In pt, this message translates to:
  /// **'Crie uma Senha'**
  String get signUpPasswordLabel;

  /// No description provided for @signUpPasswordHint.
  ///
  /// In pt, this message translates to:
  /// **'Pelo menos 8 caracteres'**
  String get signUpPasswordHint;

  /// No description provided for @signUpConfirmPasswordLabel.
  ///
  /// In pt, this message translates to:
  /// **'Confirmar Senha'**
  String get signUpConfirmPasswordLabel;

  /// No description provided for @signUpConfirmPasswordHint.
  ///
  /// In pt, this message translates to:
  /// **'Digite a senha novamente'**
  String get signUpConfirmPasswordHint;

  /// No description provided for @signUpTermsAndConditionsPrompt.
  ///
  /// In pt, this message translates to:
  /// **'Ao se cadastrar, você concorda com nossos'**
  String get signUpTermsAndConditionsPrompt;

  /// No description provided for @signUpTermsAndConditionsLink.
  ///
  /// In pt, this message translates to:
  /// **'Termos de Uso e Política de Privacidade.'**
  String get signUpTermsAndConditionsLink;

  /// No description provided for @signUpButton.
  ///
  /// In pt, this message translates to:
  /// **'Criar minha conta'**
  String get signUpButton;

  /// No description provided for @signUpAlreadyHaveAccountPrompt.
  ///
  /// In pt, this message translates to:
  /// **'Já tem uma conta?'**
  String get signUpAlreadyHaveAccountPrompt;

  /// No description provided for @signUpLoginButton.
  ///
  /// In pt, this message translates to:
  /// **'Faça o login'**
  String get signUpLoginButton;

  /// No description provided for @forgotPasswordTitle.
  ///
  /// In pt, this message translates to:
  /// **'Recuperar Senha'**
  String get forgotPasswordTitle;

  /// No description provided for @forgotPasswordSubtitle.
  ///
  /// In pt, this message translates to:
  /// **'Insira seu e-mail e enviaremos um link para redefinir sua senha.'**
  String get forgotPasswordSubtitle;

  /// No description provided for @forgotPasswordSendButton.
  ///
  /// In pt, this message translates to:
  /// **'Enviar Link de Recuperação'**
  String get forgotPasswordSendButton;

  /// No description provided for @genericLoading.
  ///
  /// In pt, this message translates to:
  /// **'Carregando...'**
  String get genericLoading;

  /// No description provided for @genericErrorTitle.
  ///
  /// In pt, this message translates to:
  /// **'Ocorreu um Erro'**
  String get genericErrorTitle;

  /// No description provided for @genericSuccessTitle.
  ///
  /// In pt, this message translates to:
  /// **'Sucesso!'**
  String get genericSuccessTitle;

  /// No description provided for @genericOk.
  ///
  /// In pt, this message translates to:
  /// **'OK'**
  String get genericOk;

  /// No description provided for @genericCancel.
  ///
  /// In pt, this message translates to:
  /// **'Cancelar'**
  String get genericCancel;

  /// No description provided for @genericContinue.
  ///
  /// In pt, this message translates to:
  /// **'Continuar'**
  String get genericContinue;

  /// No description provided for @genericSave.
  ///
  /// In pt, this message translates to:
  /// **'Salvar'**
  String get genericSave;

  /// No description provided for @genericNext.
  ///
  /// In pt, this message translates to:
  /// **'Próximo'**
  String get genericNext;

  /// No description provided for @genericBack.
  ///
  /// In pt, this message translates to:
  /// **'Voltar'**
  String get genericBack;

  /// No description provided for @validationEmailInvalid.
  ///
  /// In pt, this message translates to:
  /// **'Por favor, insira um e-mail válido.'**
  String get validationEmailInvalid;

  /// No description provided for @validationPasswordShort.
  ///
  /// In pt, this message translates to:
  /// **'A senha deve ter pelo menos 8 caracteres.'**
  String get validationPasswordShort;

  /// No description provided for @validationPasswordsDoNotMatch.
  ///
  /// In pt, this message translates to:
  /// **'As senhas não coincidem.'**
  String get validationPasswordsDoNotMatch;

  /// No description provided for @validationFieldRequired.
  ///
  /// In pt, this message translates to:
  /// **'Este campo é obrigatório.'**
  String get validationFieldRequired;

  /// No description provided for @authErrorUserNotFound.
  ///
  /// In pt, this message translates to:
  /// **'Nenhum usuário foi encontrado com este e-mail.'**
  String get authErrorUserNotFound;

  /// No description provided for @authErrorWrongPassword.
  ///
  /// In pt, this message translates to:
  /// **'Senha incorreta. Por favor, tente novamente.'**
  String get authErrorWrongPassword;

  /// No description provided for @authErrorInvalidCredential.
  ///
  /// In pt, this message translates to:
  /// **'Credenciais inválidas. Verifique seu e-mail e senha.'**
  String get authErrorInvalidCredential;

  /// No description provided for @authErrorEmailAlreadyInUse.
  ///
  /// In pt, this message translates to:
  /// **'Este endereço de e-mail já está em uso por outra conta.'**
  String get authErrorEmailAlreadyInUse;

  /// No description provided for @authErrorWeakPassword.
  ///
  /// In pt, this message translates to:
  /// **'A senha é muito fraca. Tente uma combinação mais forte.'**
  String get authErrorWeakPassword;

  /// No description provided for @authErrorGeneric.
  ///
  /// In pt, this message translates to:
  /// **'Falha na autenticação. Por favor, verifique sua conexão e tente novamente.'**
  String get authErrorGeneric;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
