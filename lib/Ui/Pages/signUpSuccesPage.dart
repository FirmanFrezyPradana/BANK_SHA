import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:flutter/material.dart';

class signUpSuccesPage extends StatelessWidget {
  const signUpSuccesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Akun Berhasil\nTerdaftar',
              style: blackTetxtStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'Grow your finance start\ntogether with us',
              style: grayTetxtStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 26,
            ),
            CostomComponenButton(
              title: 'Get Started',
              width: 182,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/homePage', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
