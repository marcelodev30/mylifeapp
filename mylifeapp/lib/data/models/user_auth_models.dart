import 'package:firebase_auth/firebase_auth.dart' as firebase;

class AuthModels {
  final String uid;
  final String? email;

  const AuthModels({required this.uid, this.email});

  factory AuthModels.fromFirebaseUser(firebase.User firebaseUser) {
    return AuthModels(uid: firebaseUser.uid, email: firebaseUser.email);
  }
}
