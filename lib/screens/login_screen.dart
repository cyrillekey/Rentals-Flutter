import 'package:chekikeja/constants/sizes.dart';
import 'package:chekikeja/layouts/auth_layout.dart';
import 'package:chekikeja/layouts/mainscreen.dart';
import 'package:chekikeja/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailConroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthenticationLayout(
        title: "Welcome",
        subtitle: "Enter Your Email Address to sign in.",
        mainButtonTitle: "Login",
        form: Form(
            child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  hintText: "Email",
                  filled: true,
                  fillColor: const Color(0xfff2f2f2),
                  border: circularBorder.copyWith(
                      borderSide: const BorderSide(color: Color(0xffe5e5e5))),
                  errorBorder: circularBorder.copyWith(
                      borderSide: const BorderSide(color: Colors.red)),
                  focusedBorder: circularBorder.copyWith(
                      borderSide: const BorderSide(color: kcPrimaryColor)),
                  enabledBorder: circularBorder.copyWith(
                      borderSide: const BorderSide(color: Color(0xffe5e5e5)))),
              controller: emailConroller,
            ),
            verticalSpaceRegular,
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Password",
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  filled: true,
                  fillColor: const Color(0xfff2f2f2),
                  // suffix: InkWell(
                  //   onTap: () {},
                  //   child: const Icon(
                  //     Icons.remove_red_eye,
                  //     size: 20,
                  //   ),
                  // ),
                  border: circularBorder.copyWith(
                      borderSide: const BorderSide(color: Color(0xffe5e5e5))),
                  errorBorder: circularBorder.copyWith(
                      borderSide: const BorderSide(color: Colors.red)),
                  focusedBorder: circularBorder.copyWith(
                      borderSide: const BorderSide(color: kcPrimaryColor)),
                  enabledBorder: circularBorder.copyWith(
                      borderSide: const BorderSide(color: Color(0xffe5e5e5)))),
              obscureText: true,
              controller: passwordController,
            )
          ],
        )),
        sublinktext: "Don't have an account?",
        sublinktext2: "Create an account",
        onForgotPassword: true,
        busy: false,
        onBackPressed: () {},
        onMainButtonTapped: () {
          Get.offAll(MainScreen(index: 0));
        },
        onCreateAccountTapped: () {
          Get.to(SignupScreen());
        },
      ),
    );
  }
}
