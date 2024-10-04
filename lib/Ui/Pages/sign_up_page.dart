import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:bank_sha/Ui/Widgets/forms.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
            'Join Us to Unlock\nYour Growthta',
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
              children: [
                CostumComponenForms(title: 'Full Name'),
                const SizedBox(
                  height: 16,
                ),
                CostumComponenForms(title: 'Email Address'),
                const SizedBox(
                  height: 16,
                ),
                const CostumComponenForms(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                CostomComponenButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/signUpUploadProfile');
                  },
                ),
                const SizedBox(
                  height: 22,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CostomComponenText(
            title: 'Sign In',
            onPressed: () {
              Navigator.pushNamed(context, '/sign_in');
            },
          ),
        ],
      ),
    );
  }
}
