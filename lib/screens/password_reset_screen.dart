import 'package:chekikeja/screens/login_screen.dart';
import 'package:chekikeja/widgets/icon_button.dart';
import 'package:chekikeja/widgets/label_textinput.dart';
import 'package:flutter/material.dart';

class PasswordReset extends StatelessWidget {
  PasswordReset({super.key});
  final TextEditingController emailConroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Container(
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                "Create Account",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                textAlign: TextAlign.left,
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: const Text("Join And Find Your Dream House"),
          ),
          const SizedBox(
            height: 30,
          ),
          labelTextInput("Email", emailConroller,
              textInputType: TextInputType.emailAddress,
              width: MediaQuery.of(context).size.width * .95),
          const SizedBox(
            height: 5,
          ),
          labelTextInput("Phone Number", emailConroller,
              textInputType: TextInputType.phone,
              width: MediaQuery.of(context).size.width * .95),
          const SizedBox(
            height: 5,
          ),
          labelTextInput("Password", passwordController,
              width: MediaQuery.of(context).size.width * .95,
              obscureTexxt: true,
              textInputType: TextInputType.visiblePassword,
              suffix: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.remove_red_eye))),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 5, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    value: false,
                    onChanged: (value) {},
                  ),
                  const Text("I agree to terms and conditions.")
                ]),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          UnconstrainedBox(
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  fixedSize: MaterialStateProperty.all<Size>(
                      Size(MediaQuery.of(context).size.width * .9, 60)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromRGBO(0, 114, 109, 1))),
              child: const Text(
                "Signup",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.only(left: 20, right: 10),
                      child: const Divider())),
              const Text("Or Signup with"),
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.only(left: 10, right: 20),
                      child: const Divider()))
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              iconButton(() {}, Icons.facebook, "Facebook"),
              iconButton(() {}, Icons.g_mobiledata, "Google")
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          UnconstrainedBox(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
