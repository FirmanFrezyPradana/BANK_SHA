import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:flutter/material.dart';

class SignUpUpSetKtpPage extends StatelessWidget {
  const SignUpUpSetKtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/img_logo_light.png'),
            )),
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            'Verify Your\nAccount',
            style: blackTetxtStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: whiteColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: lightBackgroundColor),
                  child: Center(
                    child: Image.asset(
                      'assets/ic_upload.png',
                      width: 32,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Passport/ID Card',
                  style: blackTetxtStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                CostomComponenButton(
                  title: 'Continue',
                  onPressed: () {},
                )
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          CostomComponenText(
            title: 'Skip for Now',
            onPressed: () {
              Navigator.pushNamed(context, '/signUpSuccesPage');
            },
          )
        ],
      ),
    );
  }
}
