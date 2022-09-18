import 'package:chekikeja/layouts/auth_layout.dart';
import 'package:chekikeja/screens/mainscreen.dart';
import 'package:chekikeja/screens/signup_screen.dart';
import 'package:chekikeja/widgets/icon_button.dart';
import 'package:chekikeja/widgets/label_textinput.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailConroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthenticationLayout(
          title: "Welcome",
          subtitle: "Enter Your Email Address to sign in.",
          mainButtonTitle: "mainButtonTitle",
          form: Form(
              child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Email"),
                controller: emailConroller,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Password"),
                controller: passwordController,
              )
            ],
          )),
          onForgotPassword: true,
          busy: true,
          onBackPressed: () {},
          onMainButtonTapped: () {},
          onCreateAccountTapped: () {},
          onForgetPasswordTapped: () {}),
    );
  }
}
