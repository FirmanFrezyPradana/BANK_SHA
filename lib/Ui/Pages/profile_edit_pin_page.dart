import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:bank_sha/Ui/Widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPin extends StatelessWidget {
  const ProfileEditPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Pin'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
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
                CostumComponenForms(title: 'Old Pin'),
                SizedBox(
                  height: 16,
                ),
                CostumComponenForms(title: 'New Pin'),
                SizedBox(
                  height: 30,
                ),
                CostomComponenButton(
                  title: 'Update Now',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/ProfileSucces', (route) => false);
                  },
                ),
                SizedBox(
                  height: 22,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
