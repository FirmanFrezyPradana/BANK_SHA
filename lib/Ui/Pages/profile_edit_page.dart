import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:bank_sha/Ui/Widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 22),
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CostumComponenForms(title: 'Username'),
                const SizedBox(
                  height: 16,
                ),
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
                  title: 'Update Now',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/ProfileSucces', (route) => false);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
