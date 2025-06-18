import 'package:flutter/material.dart';
import 'package:mylifeapp/core/interfaces/auth_repository_interface.dart';
import 'package:mylifeapp/data/models/user_models.dart';

import '../../core/exceptions/auth_exeption.dart';

class AuthController extends ChangeNotifier {
  final AuthRepository _authRepository;
  // ignore: unused_field
  UserModels? _userModels;
  bool _isLoading = false;
  String? _erro;

  AuthController(this._authRepository);

  bool get isLoading => _isLoading;
  String? get erro => _erro;

  Future<void> login(String email, String senha) async {
    _isLoading = true;
    notifyListeners();
    try {
      _userModels = await _authRepository.login(email, senha);
    } on AuthException catch (e) {
      _erro = e.message;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> register(String email, String senha) async {
    _isLoading = true;
    notifyListeners();
    try {
      _userModels = await _authRepository.register(email, senha);
    } on AuthException catch (e) {
      _erro = e.message;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> logout() async {
    await _authRepository.logout();
    _userModels = null;
    notifyListeners();
  }
}
