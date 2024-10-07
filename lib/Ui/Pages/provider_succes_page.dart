import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:flutter/material.dart';

class ProviderSuccesPage extends StatelessWidget {
  const ProviderSuccesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Paket Data\nBerhasil Terbeli',
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
              'Use the money wisely and\ngrow your finance',
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
              title: 'Back to Home',
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
