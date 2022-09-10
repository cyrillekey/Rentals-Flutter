import 'package:chekikeja/widgets/label_textinput.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailConroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Container(
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                "Hi,Welcome Back!👋",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                textAlign: TextAlign.left,
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: const Text("Hello again, you've been missed"),
          ),
          const SizedBox(
            height: 50,
          ),
          labelTextInput("Email", emailConroller,
              textInputType: TextInputType.emailAddress,
              width: MediaQuery.of(context).size.width * .95),
          const SizedBox(
            height: 30,
          ),
          labelTextInput("Password", emailConroller,
              width: MediaQuery.of(context).size.width * .95,
              obscureTexxt: true,
              textInputType: TextInputType.visiblePassword,
              suffix: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.remove_red_eye))),
        ],
      ),
    );
  }
}
