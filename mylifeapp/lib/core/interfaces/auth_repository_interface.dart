import 'package:mylifeapp/data/models/user_auth_models.dart';

abstract class AuthRepository {
  Future<AuthModels> signIn(String email, String senha);
  Future<AuthModels> create(String email, String senha);
  Future<void> logout();
  Stream<AuthModels?> get authStateChanges;
  Future<AuthModels> signInGoogle();
}
