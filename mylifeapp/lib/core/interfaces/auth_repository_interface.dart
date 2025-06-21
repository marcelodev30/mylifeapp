import 'package:mylifeapp/data/models/user_auth_models.dart';

abstract class AuthRepository {
  Future<AuthModels> login(String email, String senha);
  Future<AuthModels> register(String email, String senha);
  Future<void> logout();
  Stream<AuthModels?> get authStateChanges;
}
