import 'package:bank_sha/Blocs/auth/auth_bloc.dart';
import 'package:bank_sha/Services/sign_in_form_model.dart';
import 'package:bank_sha/Shared/shared_methods.dart';
import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:bank_sha/Ui/Widgets/forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  bool validate() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<AuthBloc, AuthState>(
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
        return ListView(
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
                  CostumComponenForms(
                    title: 'Email Addres',
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // input email
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CostumComponenForms(
                        title: 'Password',
                        controller: passwordController,
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
                      CostomComponenButton(
                        title: 'Sign In',
                        onPressed: () {
                          if (validate()) {
                            context.read<AuthBloc>().add(
                                  AuthLogin(
                                    SignInFormModel(
                                      email: emailController.text,
                                      password: passwordController.text,
                                    ),
                                  ),
                                );
                          } else {
                            showCostomSnackBar(
                                context, 'seluruh field harus diisi');
                          }
                          Navigator.pushNamedAndRemoveUntil(
                              context, '/homePage', (route) => false);
                        },
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
        );
      },
    ));
  }
}
