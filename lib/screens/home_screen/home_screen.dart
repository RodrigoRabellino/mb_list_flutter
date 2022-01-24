import 'package:flutter/material.dart';
import 'package:mb_list_flutter/screens/home_screen/challenge_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: kAccentColor,
      //   title: const Text(
      //     "Title",
      //     style: TextStyle(color: kTextColor),
      //   ),
      // ),
      body: SizedBox(
        height: screen.height,
        width: screen.width,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
            top: 35,
            bottom: 35,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ChallengeCard(
                screen: screen,
                title: "Movies",
                count: 20,
                expected: 40,
              ),
              const SizedBox(
                height: 45,
              ),
              ChallengeCard(
                screen: screen,
                title: "Books",
                count: 27,
                expected: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
