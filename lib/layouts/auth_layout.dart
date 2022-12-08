import 'dart:io';

import 'package:auth_buttons/auth_buttons.dart';
import 'package:chekikeja/constants/sizes.dart';
import 'package:chekikeja/screens/password_reset_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AuthenticationLayout extends StatelessWidget {
  final String title;
  final String subtitle;
  final String mainButtonTitle;
  final Widget form;
  final bool showTermsText;
  final VoidCallback? onMainButtonTapped;
  final VoidCallback? onCreateAccountTapped;

  final VoidCallback? onBackPressed;
  final String? validationMessage;
  final bool onForgotPassword;
  final bool busy;
  final String sublinktext;
  final String sublinktext2;
  const AuthenticationLayout(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.mainButtonTitle,
      required this.form,
      this.showTermsText = false,
      required this.onMainButtonTapped,
      required this.onCreateAccountTapped,
      this.onBackPressed,
      this.validationMessage,
      this.busy = false,
      this.onForgotPassword = false,
      required this.sublinktext,
      required this.sublinktext2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ListView(
        children: [
          if (onBackPressed == null) verticalSpaceLarge,
          if (onBackPressed != null) verticalSpaceRegular,
          if (onBackPressed != null)
            IconButton(
                padding: EdgeInsets.zero,
                alignment: Alignment.centerLeft,
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios)),
          verticalSpaceTiny,
          Text(
            title,
            style: const TextStyle(fontSize: 34),
          ),
          verticalSpaceSmall,
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: screenWidthPercentage(context, percentage: .7),
              child: Text(
                subtitle,
                style: ktsMediumGreyBodyText,
              ),
            ),
          ),
          verticalSpaceRegular,
          form,
          verticalSpaceRegular,
          if (onForgotPassword)
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed('/password');
                },
                child: Text(
                  'Forgot Password ?',
                  style: ktsMediumGreyBodyText.copyWith(
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          verticalSpaceRegular,
          if (validationMessage != null)
            Text(
              validationMessage!,
              style: const TextStyle(color: Colors.red, fontSize: 16),
            ),
          if (validationMessage != null) verticalSpaceRegular,
          GestureDetector(
            onTap: onMainButtonTapped,
            child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: kcPrimaryColor,
                    borderRadius: BorderRadius.circular(8)),
                child: busy
                    ? CircularProgressIndicator()
                    : Text(
                        mainButtonTitle,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )),
          ),
          verticalSpaceRegular,
          if (onCreateAccountTapped != null)
            GestureDetector(
              onTap: onCreateAccountTapped,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(sublinktext),
                  horizontalSpaceTiny,
                  Text(
                    sublinktext2,
                    style: TextStyle(color: kcPrimaryColor),
                  ),
                ],
              ),
            ),
          verticalSpaceRegular,
          if (Platform.isIOS)
            AppleAuthButton(
              onPressed: () {},
              text: 'CONTINUE WITH APPLE',
              style: const AuthButtonStyle(
                  iconSize: 24,
                  height: 50,
                  textStyle: TextStyle(color: Colors.white),
                  buttonType: AuthButtonType.secondary),
            ),
          verticalSpaceRegular,
          GoogleAuthButton(
            onPressed: () {},
            text: 'CONTINUE WITH GOOGLE',
            style: const AuthButtonStyle(
                buttonColor: Color(0xff4285f4),
                iconSize: 24,
                iconBackground: Colors.white,
                buttonType: AuthButtonType.secondary,
                height: 50,
                textStyle: TextStyle(color: Colors.white)),
          ),
          verticalSpaceRegular,
          FacebookAuthButton(
            onPressed: () {},
            text: 'CONTINUE WITH GOOGLE',
            style: const AuthButtonStyle(
                iconSize: 24,
                buttonType: AuthButtonType.secondary,
                height: 50,
                textStyle: TextStyle(color: Colors.white)),
          ),
          verticalSpaceRegular,
          TwitterAuthButton(
            onPressed: () {},
            text: 'CONTINUE WITH TWITTER',
            style: AuthButtonStyle(
                iconSize: 24,
                buttonType: AuthButtonType.secondary,
                height: 50,
                textStyle: TextStyle(color: Colors.white)),
          ),
          verticalSpaceMedium,
          if (showTermsText)
            const Text(
              'By signing up you agree to our terms, conditions and privacy Policy.',
              style: ktsMediumGreyBodyText,
              textAlign: TextAlign.center,
            ),
          verticalSpaceRegular
        ],
      ),
    );
  }
}
