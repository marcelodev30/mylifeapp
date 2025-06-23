import 'package:flutter/material.dart';
import 'package:mylifeapp/core/interfaces/auth_repository_interface.dart';
import 'package:mylifeapp/data/models/user_auth_models.dart';

class AuthService extends ChangeNotifier {
  final AuthRepository _authRepository;
  AuthModels? _userModelsAuth;

  AuthService(this._authRepository) {
    _authRepository.authStateChanges.listen((user) {
      _userModelsAuth = user;
      notifyListeners();
    });
  }
//mylifeapp/assets/img/perfil.png
  bool get isLoggedIn => _userModelsAuth != null;
  AuthModels? get user => _userModelsAuth;
}
