import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class MyUser with ChangeNotifier {
  String id;
  String displayName;
  String photoUrl;
  String email;

  MyUser({
    required this.id,
    required this.displayName,
    required this.photoUrl,
    required this.email,
  });

  MyUser.n({
    this.id = "",
    this.displayName = "",
    this.photoUrl = "",
    this.email = "",
  });

  factory MyUser.fromFirestore(DocumentSnapshot userDoc) {
    Map userData = userDoc.data as Map;
    return MyUser(
        id: userDoc.id,
        displayName: userData["displayName"],
        photoUrl: userData["photoURL"],
        email: userData["email"]);
  }
  void setFromFireStore(DocumentSnapshot userDoc) {
    Map userData = userDoc.data as Map;

    id = userDoc.id;
    displayName = userData["displayName"];
    photoUrl = userData["photoURL"];
    email = userData["email"];
    notifyListeners();
  }
}
