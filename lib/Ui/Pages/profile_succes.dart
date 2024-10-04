import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:flutter/material.dart';

class ProfileSucces extends StatelessWidget {
  const ProfileSucces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Update!',
              style: blackTetxtStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              'Your data is safe with\nour system',
              style: grayTetxtStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            CostomComponenButton(
              title: 'My Profile',
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
