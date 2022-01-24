import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mb_list_flutter/constants.dart';
import 'package:mb_list_flutter/screens/nav_screen/nav_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mb List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kAccentColor,
          secondary: kSecondaryColor,
          background: kBackgroundColor,
        ),
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: const NavScreen(),
    );
  }
}
