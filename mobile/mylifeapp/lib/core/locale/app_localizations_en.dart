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
  String get loginSubtitle => 'Welcome back!';

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
  String get loginCreateAccountButton => 'Sign up';

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
  String get signUpTermsAndConditionsLink => 'Terms of Use and Privacy Policy.';

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
      'Enter your email and we\'ll send a link to reset your password.';

  @override
  String get forgotPasswordSendButton => 'Send Reset Link';

  @override
  String get genericErrorTitle => 'An Error Occurred';

  @override
  String get genericSuccessTitle => 'Success!';

  @override
  String get validationEmailInvalid => 'Please enter a valid email.';

  @override
  String get validationPasswordShort =>
      'Password must be at least 8 characters.';

  @override
  String get validationPasswordsDoNotMatch => 'Passwords do not match.';

  @override
  String get validationFieldRequired => 'This field is required.';

  @override
  String get authErrorUserNotFound => 'No user found for this email.';

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

  @override
  String hellouser(String userName) {
    return 'Hey, $userName';
  }

  @override
  String get settingsScreenTitle => 'Settings';

  @override
  String get profileScreenTitle => 'My Profile';

  @override
  String get workoutsScreenTitle => 'My Workouts';

  @override
  String get homeScreenTitle => 'Home';

  @override
  String get dataStateLoading => 'Loading...';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';

  @override
  String get edit => 'Edit';

  @override
  String get delete => 'Delete';

  @override
  String get add => 'Add';

  @override
  String get next => 'Next';

  @override
  String get back => 'Back';

  @override
  String get continueAction => 'Continue';

  @override
  String get close => 'Close';

  @override
  String get search => 'Search';

  @override
  String get filter => 'Filter';

  @override
  String get apply => 'Apply';

  @override
  String get confirm => 'Confirm';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get ok => 'OK';

  @override
  String get dataStateNoData => 'No data found.';

  @override
  String get dataStateError => 'Could not load data. Please try again.';

  @override
  String phraseAppBar(String phrase) {
    return 'Ready to check today\'s $phrase?';
  }

  @override
  String get status_pendente => 'Pending';

  @override
  String get status_processando => 'Processing';

  @override
  String get status_concluido => 'Completed';

  @override
  String get status_falhou => 'Failed';

  @override
  String get user_type_aluno => 'Student';

  @override
  String get user_type_trainer => 'Personal Trainer';

  @override
  String get user_type_nutricionista => 'Nutritionist';

  @override
  String get series_type_aquecimento => 'Warm-up';

  @override
  String get series_type_preparacao => 'Ramp-up Set';

  @override
  String get series_type_reconhecimento => 'Feeler Set';

  @override
  String get series_type_trabalho => 'Working Set';

  @override
  String get week_day_segunda_long => 'Monday';

  @override
  String get week_day_terca_long => 'Tuesday';

  @override
  String get week_day_quarta_long => 'Wednesday';

  @override
  String get week_day_quinta_long => 'Thursday';

  @override
  String get week_day_sexta_long => 'Friday';

  @override
  String get week_day_sabado_long => 'Saturday';

  @override
  String get week_day_domingo_long => 'Sunday';

  @override
  String get week_day_segunda_short => 'MON';

  @override
  String get week_day_terca_short => 'TUE';

  @override
  String get week_day_quarta_short => 'WED';

  @override
  String get week_day_quinta_short => 'THU';

  @override
  String get week_day_sexta_short => 'FRI';

  @override
  String get week_day_sabado_short => 'SAT';

  @override
  String get week_day_domingo_short => 'SUN';

  @override
  String get effort_level_muito_leve => 'Very Light';

  @override
  String get effort_level_leve => 'Light';

  @override
  String get effort_level_moderado => 'Moderate';

  @override
  String get effort_level_dificil => 'Hard';

  @override
  String get effort_level_maximo => 'Maximum Effort';

  @override
  String get meal_type_cafe_da_manha => 'Breakfast';

  @override
  String get meal_type_lanche_da_manha => 'Morning Snack';

  @override
  String get meal_type_almoco => 'Lunch';

  @override
  String get meal_type_lanche_da_tarde => 'Afternoon Snack';

  @override
  String get meal_type_pre_treino => 'Pre-Workout';

  @override
  String get meal_type_pos_treino => 'Post-Workout';

  @override
  String get meal_type_jantar => 'Dinner';

  @override
  String get meal_type_ceia => 'Late-night Snack';
}
