import 'package:flutter/material.dart';
import 'package:mb_list_flutter/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              margin: const EdgeInsets.only(top: 50, bottom: 25),
            ),
            Container(
              height: screenSize.height * 0.5,
              width: screenSize.width * 0.8,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
                boxShadow: [kDefaultShadow],
              ),
              child:
                  _FormLogin(screenSize: screenSize, controller: _controller),
            ),
          ],
        ),
      ),
    );
  }
}

class _FormLogin extends StatelessWidget {
  const _FormLogin({
    Key? key,
    required this.screenSize,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  final Size screenSize;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.w600, color: kTextColor),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                width: screenSize.width * 0.6,
                child: TextField(
                  autofocus: false,
                  controller: _controller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                width: screenSize.width * 0.6,
                child: TextField(
                  autofocus: false,
                  controller: _controller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Password",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(kTextColor),
          ),
          onPressed: () {},
          child: const Text(
            "Login",
            style: TextStyle(color: kSecondaryColor),
          ),
        )
      ],
    );
  }
}
