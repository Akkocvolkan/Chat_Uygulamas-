import 'package:firebase_auth/firebase_auth.dart';



class Auth{
  static  final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;
  static  User? get CurrentUser=> _firebaseAuth.currentUser;
  Stream<User?>get  authStateChanges=>_firebaseAuth.authStateChanges();

  Future<void> CreateUser({required String email,required String password})async{
    await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

  }
  Future<void> signIn({required String email,required String password})async{
    await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

  }
  Future<void> signOut()async{
    await _firebaseAuth.signOut();

  }

}