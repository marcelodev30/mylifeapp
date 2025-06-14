import 'package:mylifeapp/core/interfaces/userauth_interfaces.dart';
import 'package:mylifeapp/data/models/user_models.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository implements UserAuthInterface {
  final FirebaseAuth _firebaseAuth;

  AuthRepository(FirebaseAuth firebaseAuth) : _firebaseAuth = firebaseAuth;

  @override
  Future<UserModels> login(String email, String senha) async {
    try {
      var user = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );
      return UserModels(email: email, uid: user.user!.uid);
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception('');
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
      throw Exception(e.message);
    } catch (e) {
      throw Exception('');
    }
  }
}
