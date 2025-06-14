import 'package:mylifeapp/data/models/user_models.dart';

abstract class UserAuthInterface {
  Future<UserModels> login(String email, String senha);
  Future<UserModels> register(String email, String senha);
  Future<void> logout();
}
