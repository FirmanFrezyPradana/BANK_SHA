import 'dart:convert';

import 'package:bank_sha/Blocs/auth/auth_bloc.dart';
import 'package:bank_sha/Models/signUp_Form_Model.dart';
import 'package:bank_sha/Shared/shared_methods.dart';
import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpUpSetKtpPage extends StatefulWidget {
  final SignupFormModel data;
  const SignUpUpSetKtpPage({
    super.key,
    required this.data,
  });

  @override
  State<SignUpUpSetKtpPage> createState() => _SignUpUpSetKtpPageState();
}

class _SignUpUpSetKtpPageState extends State<SignUpUpSetKtpPage> {
  XFile? selectedImage;
  bool validate() {
    if (selectedImage == null) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is AuthFailed) {
          showCostomSnackBar(context, state.e);
        }
        if (state is AuthSucces) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/homePage', (route) => false);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
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
                    GestureDetector(
                      onTap: () async {
                        final image = await selectImage();
                        setState(() {
                          selectedImage = image;
                        });
                      },
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: lightBackgroundColor,
                          image: selectedImage == null
                              ? null
                              : DecorationImage(
                                  fit: BoxFit.cover,
                                  image: FileImage(File(
                                    selectedImage!.path,
                                  )),
                                ),
                        ),
                        child: selectedImage != null
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
                      onPressed: () {
                        if (validate()) {
                          context.read<AuthBloc>().add(
                                AuthRegister(
                                  widget.data.copyWith(
                                    ktp: selectedImage == null
                                        ? null
                                        : 'data:image/png;base64,' +
                                            base64Encode(
                                              File(selectedImage!.path)
                                                  .readAsBytesSync(),
                                            ),
                                  ),
                                ),
                              );
                        } else {
                          context.read<AuthBloc>().add(
                                AuthRegister(
                                  widget.data,
                                ),
                              );
                        }
                      },
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
      },
    );
  }
}
