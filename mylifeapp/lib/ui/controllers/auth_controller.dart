import 'package:flutter/material.dart';
import 'package:mylifeapp/core/interfaces/auth_repository_interface.dart';
import '../../core/exceptions/auth_exeption.dart';

class AuthController extends ChangeNotifier {
  final AuthRepository _authRepository;

  bool _isLoading = false;
  String? _erro;

  AuthController(this._authRepository);

  bool get isLoading => _isLoading;
  String? get erro => _erro;

  Future<void> signInGoogle() async {
    _isLoading = true;
    notifyListeners();
    try {
      await _authRepository.signInGoogle();
    } on AuthException catch (e) {
      _erro = e.message;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> login(String email, String senha) async {
    _isLoading = true;
    notifyListeners();
    try {
      await _authRepository.signIn(email, senha);
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
      await _authRepository.register(email, senha);
    } on AuthException catch (e) {
      _erro = e.message;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> logout() async {
    await _authRepository.logout();
    _erro = null;
    notifyListeners();
  }
}
