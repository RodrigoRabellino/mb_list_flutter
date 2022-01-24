import 'package:flutter/material.dart';
import 'package:mb_list_flutter/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      body: Container(
        height: screen.height,
        width: screen.width,
        color: kBackgroundColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 40),
                height: screen.height * 0.2,
                width: screen.width * 0.9,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: kAccentColor.withOpacity(0.7),
                        offset: const Offset(4, 5),
                        blurRadius: 7,
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
