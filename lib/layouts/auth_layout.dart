import 'package:chekikeja/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AuthenticationLayout extends StatelessWidget {
  final String title;
  final String subtitle;
  final String mainButtonTitle;
  final Widget form;
  final bool showTermsText;
  final VoidCallback? onMainButtonTapped;
  final VoidCallback? onCreateAccountTapped;
  final VoidCallback? onForgetPasswordTapped;
  final VoidCallback? onBackPressed;
  final String? validationMessage;
  final bool onForgotPassword;
  final bool busy;
  const AuthenticationLayout(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.mainButtonTitle,
      required this.form,
      this.showTermsText = false,
      required this.onMainButtonTapped,
      required this.onCreateAccountTapped,
      required this.onForgetPasswordTapped,
      this.onBackPressed,
      this.validationMessage,
      this.busy = false,
      this.onForgotPassword = false});

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
                onPressed: onBackPressed,
                icon: const Icon(Icons.arrow_back_ios)),
          Text(
            title,
            style: const TextStyle(fontSize: 34),
          ),
          verticalSpaceSmall,
          SizedBox(
            width: screenWidthPercentage(context, percentage: .7),
            child: Text(
              subtitle,
              style: ktsMediumGreyBodyText,
            ),
          ),
          verticalSpaceRegular,
          form,
          verticalSpaceRegular,
          if (onForgotPassword)
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: onForgetPasswordTapped,
                child: Text(
                  "Forget Password",
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
                    ? LoadingAnimationWidget.newtonCradle(
                        color: Colors.white, size: 72)
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
                children: const [
                  Text("Don't have an account"),
                  horizontalSpaceTiny,
                  Text(
                    "Create Account",
                    style: TextStyle(color: kcPrimaryColor),
                  ),
                ],
              ),
            ),
          if (showTermsText)
            const Text(
              "By signing up you agree to our terms, conditions and privacy Policy.",
              style: ktsMediumGreyBodyText,
              textAlign: TextAlign.center,
            )
        ],
      ),
    );
  }
}
