import 'package:flutter/material.dart';
import 'package:mylifeapp/core/interfaces/auth_repository_interface.dart';
import 'package:mylifeapp/data/models/user_auth_models.dart';
import '../../core/exceptions/auth_exeption.dart';

class AuthController extends ChangeNotifier {
  final AuthRepository _authRepository;

  AuthModels? _user;
  AuthModels? get user => _user;
  bool get isLoggedIn => _user != null;

  bool _isLoading = false;
  String? _error;
  bool get isLoading => _isLoading;
  String? get error => _error;

  AuthController(this._authRepository) {
    _authRepository.authStateChanges.listen((user) {
      _user = user;
      notifyListeners();
    });
  }
  Future<void> signInGoogle() async {
    await _runAuthAction(() => _authRepository.signInGoogle());
  }

  Future<void> login(String email, String password) async {
    await _runAuthAction(() => _authRepository.signIn(email, password));
  }

  Future<void> register(String email, String password) async {
    await _runAuthAction(() => _authRepository.create(email, password));
  }

  Future<void> logout() async {
    await _authRepository.logout();
    _error = null;
  }

  Future<void> _runAuthAction(Future<void> Function() authAction) async {
    _isLoading = true;
    _error = null;
    notifyListeners();
    try {
      await authAction();
    } on AuthException catch (e) {
      _error = e.message;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
