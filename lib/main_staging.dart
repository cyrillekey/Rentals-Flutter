import 'package:chekikeja/screens/login_screen.dart';
import 'package:chekikeja/screens/notifications_screen.dart';
import 'package:chekikeja/screens/onboarding.dart';
import 'package:chekikeja/screens/password_reset_screen.dart';
import 'package:chekikeja/screens/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'flavors.dart';
import 'locator/locator.dart';

void main() async {
  F.appFlavor = Flavor.STAGING;
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();
  await dotenv.load(fileName: '.env.staging');
  setupLocator();
  if (kDebugMode) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  }
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: _flavorBanner(child: const MyApp()),
      getPages: [
        GetPage(name: '/notifications', page: () => const Notifications()),
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/signup', page: () => SignupScreen()),
        GetPage(name: '/onboarding', page: () => const OnboardingScreen()),
        GetPage(name: '/password', page: () => PasswordReset()),
      ],
    ),
  );
  FlutterNativeSplash.remove();
}

Widget _flavorBanner({
  required Widget child,
  bool show = true,
}) =>
    show
        ? Banner(
            location: BannerLocation.topStart,
            message: F.name,
            color: Colors.green.withOpacity(0.6),
            textStyle: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12.0,
                letterSpacing: 1.0),
            textDirection: TextDirection.ltr,
            child: child,
          )
        : Container(
            child: child,
          );

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
