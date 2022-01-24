import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mb_list_flutter/models/my_user.dart';

enum AuthStatus {
  Uninitialized,
  Authenticated,
  Authenticating,
  Unauthenticated,
}

// class AuthService with ChangeNotifier {
//   final FirebaseAuth _auth;
//   GoogleSignInAccount _googleUser;

//   final FirebaseFirestore _db = FirebaseFirestore.instance;
//   AuthStatus _status = AuthStatus.Uninitialized;

//   final MyUser _user = MyUser.n();

//   final GoogleSignIn _googleSignIn = GoogleSignIn();

//   // AuthService.instance() : _auth = FirebaseAuth.instance {
//   //   _auth.authStateChanges().listen(_onAuthStateChanged);
//   // }

//   Future<void> _onAuthStateChanged(User firebaseUser) async {
//     if (firebaseUser == null) {
//       _status = AuthStatus.Unauthenticated;
//     }
//   }
//}
