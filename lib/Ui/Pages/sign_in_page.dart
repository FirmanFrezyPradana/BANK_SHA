import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:bank_sha/Ui/Widgets/forms.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
              'Sign In &\nGrow Your Finance',
              style: blackTetxtStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Column(
                children: [
                  // input email
                  CostumComponenForms(title: 'Email Addres'),
                  const SizedBox(
                    height: 16,
                  ),
                  // input email
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CostumComponenForms(
                        title: 'Password',
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password',
                          style: blueTetxtStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const CostomComponenButton(
                        title: 'Sign In',
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CostomComponenText(
              title: 'Create New Account',
              // onPressed: Navigator.pushNamed,
            ),
          ],
        ));
  }
}
