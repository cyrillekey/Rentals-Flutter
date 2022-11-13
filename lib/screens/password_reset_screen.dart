import 'package:chekikeja/constants/sizes.dart';
import 'package:chekikeja/layouts/auth_layout.dart';
import 'package:chekikeja/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class PasswordReset extends StatelessWidget {
  PasswordReset({super.key});
  final TextEditingController emailConroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthenticationLayout(
          onBackPressed: () {},
          title: "Reset Password",
          subtitle: "Enter Email To reset password",
          mainButtonTitle: "Reset Password",
          form: Form(
              child: Column(
            children: [
              verticalSpaceLarge,
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
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
                        borderSide:
                            const BorderSide(color: Color(0xffe5e5e5)))),
                controller: emailConroller,
              ),
            ],
          )),
          onMainButtonTapped: () {},
          onCreateAccountTapped: () {
            Get.toNamed("/login");
          },
          sublinktext: "Login instead ?",
          sublinktext2: "Login"),
    );
  }
}
