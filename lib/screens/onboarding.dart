import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width * 0.95,
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/house.jpg"))),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .90,
              child: const Text(
                "Discover Your Dream House From Smartphone",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: const Text(
                "The No. 1 App for searching and finding the most suitable house for you",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  fixedSize: MaterialStateProperty.all(
                      Size(MediaQuery.of(context).size.width * .7, 60)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(46)))),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
