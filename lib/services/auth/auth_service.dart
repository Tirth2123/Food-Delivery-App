import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  //LOGIN
  Future<UserCredential> signInWithEmailPassword(String email, password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //SIGNUP
  Future<UserCredential> signUpWithEmailPassword(String email, password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }
  
  //LOGOUT
  Future<void> signOut() async{
    return await _firebaseAuth.signOut();
  }
}
