// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get loginTitle => 'Login';

  @override
  String get loginSubtitle => 'Welcome back! We missed you.';

  @override
  String get loginEmailLabel => 'Email';

  @override
  String get loginEmailHint => 'youremail@example.com';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get loginPasswordHint => 'Enter your password';

  @override
  String get loginForgotPasswordButton => 'Forgot password?';

  @override
  String get loginButton => 'Login';

  @override
  String get loginOrConnectWith => 'Or connect with';

  @override
  String get loginNoAccountPrompt => 'Don\'t have an account?';

  @override
  String get loginCreateAccountButton => 'Sign up here';

  @override
  String get signUpTitle => 'Create Account';

  @override
  String get signUpSubtitle => 'It\'s quick, easy, and free.';

  @override
  String get signUpFullNameLabel => 'Full Name';

  @override
  String get signUpFullNameHint => 'Enter your first and last name';

  @override
  String get signUpEmailLabel => 'Email';

  @override
  String get signUpEmailHint => 'This will be your login email';

  @override
  String get signUpPasswordLabel => 'Create a Password';

  @override
  String get signUpPasswordHint => 'At least 8 characters';

  @override
  String get signUpConfirmPasswordLabel => 'Confirm Password';

  @override
  String get signUpConfirmPasswordHint => 'Enter the password again';

  @override
  String get signUpTermsAndConditionsPrompt =>
      'By signing up, you agree to our';

  @override
  String get signUpTermsAndConditionsLink =>
      'Terms of Service and Privacy Policy.';

  @override
  String get signUpButton => 'Create my account';

  @override
  String get signUpAlreadyHaveAccountPrompt => 'Already have an account?';

  @override
  String get signUpLoginButton => 'Log in';

  @override
  String get forgotPasswordTitle => 'Reset Password';

  @override
  String get forgotPasswordSubtitle =>
      'Enter your email and we\'ll send you a link to reset your password.';

  @override
  String get forgotPasswordSendButton => 'Send Reset Link';

  @override
  String get genericLoading => 'Loading...';

  @override
  String get genericErrorTitle => 'An Error Occurred';

  @override
  String get genericSuccessTitle => 'Success!';

  @override
  String get genericOk => 'OK';

  @override
  String get genericCancel => 'Cancel';

  @override
  String get genericContinue => 'Continue';

  @override
  String get genericSave => 'Save';

  @override
  String get genericNext => 'Next';

  @override
  String get genericBack => 'Back';

  @override
  String get validationEmailInvalid => 'Please enter a valid email address.';

  @override
  String get validationPasswordShort =>
      'Password must be at least 8 characters long.';

  @override
  String get validationPasswordsDoNotMatch => 'The passwords do not match.';

  @override
  String get validationFieldRequired => 'This field is required.';

  @override
  String get authErrorUserNotFound => 'No user was found with this email.';

  @override
  String get authErrorWrongPassword => 'Incorrect password. Please try again.';

  @override
  String get authErrorInvalidCredential =>
      'Invalid credentials. Please check your email and password.';

  @override
  String get authErrorEmailAlreadyInUse =>
      'This email address is already in use by another account.';

  @override
  String get authErrorWeakPassword =>
      'The password is too weak. Please try a stronger combination.';

  @override
  String get authErrorGeneric =>
      'Authentication failed. Please check your connection and try again.';
}
