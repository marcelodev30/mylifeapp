import 'package:mylifeapp/core/exceptions/auth_exeption.dart';
import 'package:mylifeapp/core/interfaces/userauth_interfaces.dart';
import 'package:mylifeapp/data/models/user_models.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository implements UserAuthInterface {
  final FirebaseAuth _firebaseAuth;

  AuthRepository(this._firebaseAuth);

  @override
  Future<UserModels> login(String email, String senha) async {
    try {
      final user = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );

      if (user.user == null) {
        throw ErroInesperadoAuthException(
          message: 'Falha ao obter dados do usuário após o login.',
        );
      }
      return UserModels(email: email, uid: user.user!.uid);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          throw UsuarioNaoEncontradoException();
        case 'wrong-password':
          throw SenhaIncorretaException();
        case 'invalid-credential':
          throw LoginInvalidoException();
        default:
          throw ErroInesperadoAuthException(
            message: 'Erro do Firebase: ${e.code}',
          );
      }
    } catch (e) {
      throw ErroInesperadoAuthException();
    }
  }

  @override
  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<UserModels> register(String email, String senha) async {
    try {
      var user = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: senha,
      );
      return UserModels(email: email, uid: user.user!.uid);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          throw SenhaFracaException();
        case 'email-already-in-use':
          throw EmailJaEmUsoException();
        default:
          throw ErroInesperadoAuthException(
            message: 'Erro do Firebase: ${e.code}',
          );
      }
    } catch (e) {
      throw ErroInesperadoAuthException();
    }
  }
}
