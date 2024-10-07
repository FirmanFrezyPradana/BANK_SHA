import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Pages/home_page.dart';
import 'package:bank_sha/Ui/Pages/onboarding_page.dart';
import 'package:bank_sha/Ui/Pages/pin_page.dart';
import 'package:bank_sha/Ui/Pages/profile_edit_page.dart';
import 'package:bank_sha/Ui/Pages/profile_edit_pin_page.dart';
import 'package:bank_sha/Ui/Pages/profile_page.dart';
import 'package:bank_sha/Ui/Pages/profile_succes.dart';
import 'package:bank_sha/Ui/Pages/provider_paket_page.dart';
import 'package:bank_sha/Ui/Pages/provider_pulsa_page.dart';
import 'package:bank_sha/Ui/Pages/provider_succes_page.dart';
import 'package:bank_sha/Ui/Pages/signUpSetKtpPage.dart';
import 'package:bank_sha/Ui/Pages/signUpSetProflePage.dart';
import 'package:bank_sha/Ui/Pages/signUpSuccesPage.dart';
import 'package:bank_sha/Ui/Pages/sign_in_page.dart';
import 'package:bank_sha/Ui/Pages/sign_up_page.dart';
import 'package:bank_sha/Ui/Pages/splash_page.dart';
import 'package:bank_sha/Ui/Pages/topUpAmount.dart';
import 'package:bank_sha/Ui/Pages/topUp_page.dart';
import 'package:bank_sha/Ui/Pages/topUp_succes_page.dart';
import 'package:bank_sha/Ui/Pages/transfer_amount_page.dart';
import 'package:bank_sha/Ui/Pages/transfer_page.dart';
import 'package:bank_sha/Ui/Pages/transfer_succes_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //digunakan untuk menghilangkan baner di kiri pojok
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
            backgroundColor: lightBackgroundColor,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: blackColor,
            ),
            titleTextStyle: blackTetxtStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            )),
      ),

      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const onboardingPage(),
        '/sign_in': (context) => const SignInPage(),
        '/sign_up': (context) => const SignUpPage(),
        '/signUpUploadProfile': (context) => const SignUpUpSetProfilePage(),
        '/SignUpUpSetKtpPage': (context) => const SignUpUpSetKtpPage(),
        '/signUpSuccesPage': (context) => const signUpSuccesPage(),
        '/homePage': (context) => const homePage(),
        '/profilePage': (context) => const ProfilePage(),
        '/PinPage': (context) => const PinPage(),
        '/ProfileEdit': (context) => const ProfileEdit(),
        '/ProfileEditPin': (context) => const ProfileEditPin(),
        '/ProfileSucces': (context) => const ProfileSucces(),
        '/TopUpPage': (context) => const TopUpPage(),
        '/TopUpAmount': (context) => const TopUpAmount(),
        '/TopUpSucces': (context) => const TopUpSucces(),
        '/TransferPage': (context) => const TransferPage(),
        '/TransferAmountPage': (context) => const TransferAmountPage(),
        '/TransferSuccesPage': (context) => const TransferSuccesPage(),
        '/ProviderPulsaPage': (context) => const ProviderPulsaPage(),
        '/ProviderPaketPage': (context) => const ProviderPaketPage(),
        '/ProviderSuccesPage': (context) => const ProviderSuccesPage(),
      },
    );
  }
}
