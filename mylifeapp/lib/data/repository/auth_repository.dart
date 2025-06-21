import 'package:mylifeapp/core/exceptions/auth_exeption.dart';
import 'package:mylifeapp/core/interfaces/auth_repository_interface.dart';
//import 'package:mylifeapp/core/l10n/app_localizations.dart';
import 'package:mylifeapp/data/models/user_auth_models.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryFirebase implements AuthRepository {
  final FirebaseAuth _firebaseAuth;

  AuthRepositoryFirebase(this._firebaseAuth);

  @override
  Future<AuthModels> login(String email, String senha) async {
    try {
      final user = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );

      if (user.user == null) {
        throw AuthException('authErrorGeneric');
      }
      return AuthModels(email: email, uid: user.user!.uid);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          throw AuthException('authErrorUserNotFound');
        case 'wrong-password':
          throw AuthException('authErrorWrongPassword');
        case 'invalid-credential':
          throw AuthException('authErrorInvalidCredential');
        default:
          throw AuthException('authErrorGeneric');
      }
    } catch (e) {
      throw AuthException('authErrorGeneric');
    }
  }

  @override
  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<AuthModels> register(String email, String senha) async {
    try {
      var user = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: senha,
      );
      return AuthModels.fromFirebaseUser(user.user!);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          throw AuthException('authErrorWeakPassword');
        case 'email-already-in-use':
          throw AuthException('authErrorEmailAlreadyInUse');
        default:
          throw AuthException('authErrorGeneric');
      }
    } catch (e) {
      throw AuthException('authErrorGeneric');
    }
  }

  @override
  Stream<AuthModels?> get authStateChanges {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      return firebaseUser == null
          ? null
          : AuthModels.fromFirebaseUser(firebaseUser);
    });
  }
}
