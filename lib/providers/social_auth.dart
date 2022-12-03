import 'package:chekikeja/locator/locator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:twitter_login/twitter_login.dart';

class SocialAuth {
  bool isLoading = false;
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final twitterLogin = TwitterLogin(
    apiKey: dotenv.env['TWITTER_CLIENT_API_KEY']!,
    apiSecretKey: dotenv.env['TWITTER_CLIENT_SECRET']!,
    redirectURI: dotenv.env['TWITTER_CLIENT_CALLBACK']!,
  );
  Future<User?> signupWithGoogle() async {
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication authentication =
          await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: authentication.accessToken,
          idToken: authentication.idToken);
      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);
        return userCredential.user;
      } catch (e) {
        logger.w(e);
        return null;
      }
    }
    return null;
  }

  Future<User?> signupUserWithTwitter() async {
    final authResult = await twitterLogin.login();
    switch (authResult.status) {
      case TwitterLoginStatus.loggedIn:
        final AuthCredential twitter = TwitterAuthProvider.credential(
            accessToken: authResult.authToken!,
            secret: authResult.authTokenSecret!);
        final userCredential = await auth.signInWithCredential(twitter);
        return userCredential.user;
      case TwitterLoginStatus.error:
        return null;
      case TwitterLoginStatus.cancelledByUser:
        return null;
      default:
        return null;
    }
  }
}
