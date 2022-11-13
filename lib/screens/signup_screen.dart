import 'package:chekikeja/constants/sizes.dart';
import 'package:chekikeja/layouts/auth_layout.dart';
import 'package:chekikeja/screens/login_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final TextEditingController emailConroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthenticationLayout(
        title: "Join Us!",
        subtitle: "Fill In Details To Get Started",
        mainButtonTitle: "Create Account",
        showTermsText: true,
        form: Form(
            child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
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
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  hintText: "Phone Number",
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
            ),
          ],
        )),
        sublinktext: "Already have an account?",
        sublinktext2: "Login.",
        onForgotPassword: false,
        busy: false,
        onBackPressed: () {},
        onMainButtonTapped: () {},
        onCreateAccountTapped: () {
          Get.toNamed("/login");
        },
      ),
    );
  }
}
