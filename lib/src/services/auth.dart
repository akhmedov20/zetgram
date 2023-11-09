// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:zet_gram/src/models/user/user_model.dart';
//
// class AuthService {
//
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   // create user obj based on FirebaseUser
//
//   User _userFromFirebaseUser(User user) {
//     return user != null ? User(uid: user.uid) : null;
//   }
//
//   Future signInAnon() async {
//     try {
//       UserCredential result = await _auth.signInAnonymously();
//       User? user = result.user;
//       return _userFromFirebaseUser(user);
//     } catch(e) {
//       return null;
//     }
//   }
// }