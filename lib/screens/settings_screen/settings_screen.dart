import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  void initState() {
    super.initState();
    getUsers();
  }

  void getUsers() async {
    try {
      CollectionReference collectionReference =
          FirebaseFirestore.instance.collection("users");

      QuerySnapshot users = await collectionReference.get();

      if (users.docs.isNotEmpty) {
        for (var doc in users.docs) {
          print(doc.data());
        }
      }
    } on Exception catch (e) {
      print("soy un error $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
