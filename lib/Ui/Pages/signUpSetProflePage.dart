import 'dart:io';

import 'package:bank_sha/Models/signUp_Form_Model.dart';
import 'package:bank_sha/Shared/shared_methods.dart';
import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:bank_sha/Ui/Widgets/forms.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SignUpUpSetProfilePage extends StatefulWidget {
  final SignupFormModel data;

  const SignUpUpSetProfilePage({
    super.key,
    required this.data,
  });

  @override
  State<SignUpUpSetProfilePage> createState() => _SignUpUpSetProfilePageState();
}

class _SignUpUpSetProfilePageState extends State<SignUpUpSetProfilePage> {
  final pinController = TextEditingController(text: '');
  XFile? SelectedImage;
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
              ),
            ),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    final image = await selectImage();
                    setState(() {
                      SelectedImage = image;
                    });
                  },
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: lightBackgroundColor,
                      image: SelectedImage == null
                          ? null
                          : DecorationImage(
                              fit: BoxFit.cover,
                              image: FileImage(File(
                                SelectedImage!.path,
                              )),
                            ),
                    ),
                    child: SelectedImage != null
                        ? null
                        : Center(
                            child: Image.asset(
                              'assets/ic_upload.png',
                              width: 32,
                            ),
                          ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Salsa azzahra shania',
                  style: blackTetxtStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CostumComponenForms(
                  title: 'Set PIN (6 digit number)',
                  obscureText: true,
                  controller: pinController,
                ),
                const SizedBox(
                  height: 30,
                ),
                CostomComponenButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/SignUpUpSetKtpPage');
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
