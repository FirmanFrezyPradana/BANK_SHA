import 'package:bank_sha/Ui/Pages/home_page.dart';
import 'package:bank_sha/Ui/Pages/onboarding_page.dart';
import 'package:bank_sha/Ui/Pages/signUpSetKtpPage.dart';
import 'package:bank_sha/Ui/Pages/signUpSetProflePage.dart';
import 'package:bank_sha/Ui/Pages/signUpSuccesPage.dart';
import 'package:bank_sha/Ui/Pages/sign_in_page.dart';
import 'package:bank_sha/Ui/Pages/sign_up_page.dart';
import 'package:bank_sha/Ui/Pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //digunakan untuk menghilangkan baner di kiri pojok
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const onboardingPage(),
        '/sign_in': (context) => const SignInPage(),
        '/sign_up': (context) => const SignUpPage(),
        '/signUpUploadProfile': (context) => const SignUpUpSetProfilePage(),
        '/SignUpUpSetKtpPage': (context) => const SignUpUpSetKtpPage(),
        '/signUpSuccesPage': (context) => const signUpSuccesPage(),
        '/homePage': (context) => const homePage(),
      },
    );
  }
}
