import 'package:chekikeja/locator/locator.dart';
import 'package:chekikeja/screens/login_screen.dart';
import 'package:chekikeja/screens/notifications_screen.dart';
import 'package:chekikeja/screens/onboarding.dart';
import 'package:chekikeja/screens/password_reset_screen.dart';
import 'package:chekikeja/screens/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/route_manager.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();
  setupLocator();
  if (kDebugMode) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  }
  runApp(
    GetMaterialApp(
      home: const MyApp(),
      getPages: [
        GetPage(name: "/notifications", page: () => const Notifications()),
        GetPage(name: "/login", page: () => LoginScreen()),
        GetPage(name: "/signup", page: () => SignupScreen()),
        GetPage(name: "/onboarding", page: () => const OnboardingScreen()),
        GetPage(name: "/password", page: () => PasswordReset()),
      ],
    ),
  );
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cheki Keja',
        theme: ThemeData(
            primarySwatch: Colors.blue, backgroundColor: Colors.white),
        home: const OnboardingScreen());
  }
}
