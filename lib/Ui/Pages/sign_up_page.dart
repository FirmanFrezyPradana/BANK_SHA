import 'package:bank_sha/Blocs/auth/auth_bloc.dart';
import 'package:bank_sha/Models/signUp_Form_Model.dart';
import 'package:bank_sha/Shared/shared_methods.dart';
import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Pages/signUpSetProflePage.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:bank_sha/Ui/Widgets/forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // @override
  final nameController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  // validate input
  bool validate() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      return false;
    }
    return true;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is AuthFailed) {
            showCostomSnackBar(context, state.e);
          }
          if (state is AuthCheckEmailSucces) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SignUpUpSetProfilePage(
                        data: SignupFormModel(
                            name: nameController.text,
                            email: emailController.text,
                            password: passwordController.text))));
            // Navigator.pushNamed(context, '/signUpUploadProfile');
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
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
                    CostumComponenForms(
                      title: 'Full Name',
                      controller: nameController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CostumComponenForms(
                      title: 'Email Address',
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CostumComponenForms(
                      title: 'Password',
                      obscureText: true,
                      controller: passwordController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CostomComponenButton(
                      title: 'Continue',
                      onPressed: () {
                        if (validate()) {
                          context
                              .read<AuthBloc>()
                              .add(AuthCheckEmail(emailController.text));
                        } else {
                          showCostomSnackBar(
                              context, 'semua field harus diisi');
                        }
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
          );
        },
      ),
    );
  }
}
