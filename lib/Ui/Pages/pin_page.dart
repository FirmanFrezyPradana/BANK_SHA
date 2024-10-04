import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: '');
  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }
    if (pinController.text == '112233') {
      Navigator.pop(context, true);
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(
        () {
          pinController.text =
              pinController.text.substring(0, pinController.text.length - 1);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sha PIN',
                style: whiteTetxtStyle.copyWith(
                    fontSize: 20, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 72,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: pinController,
                  obscureText: true,
                  cursorColor: greyColor,
                  obscuringCharacter: "*",
                  enabled: false,
                  style: whiteTetxtStyle.copyWith(
                      fontSize: 36, fontWeight: medium, letterSpacing: 16),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: greyColor,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: greyColor))),
                ),
              ),
              const SizedBox(
                height: 66,
              ),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  CostomInputButton(
                      number: '1',
                      onTab: () {
                        addPin('1');
                      }),
                  CostomInputButton(
                      number: '2',
                      onTab: () {
                        addPin('2');
                      }),
                  CostomInputButton(
                      number: '3',
                      onTab: () {
                        addPin('3');
                      }),
                  CostomInputButton(
                      number: '4',
                      onTab: () {
                        addPin('4');
                        ;
                      }),
                  CostomInputButton(
                      number: '5',
                      onTab: () {
                        addPin('5');
                      }),
                  CostomInputButton(
                      number: '6',
                      onTab: () {
                        addPin('6');
                      }),
                  CostomInputButton(
                      number: '7',
                      onTab: () {
                        addPin('7');
                      }),
                  CostomInputButton(
                      number: '8',
                      onTab: () {
                        addPin('8');
                      }),
                  CostomInputButton(
                      number: '9',
                      onTab: () {
                        addPin('9');
                      }),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CostomInputButton(
                      number: '0',
                      onTab: () {
                        addPin('0');
                      }),
                  GestureDetector(
                    onTap: () {
                      deletePin();
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: numberBackgroundColor,
                      ),
                      child: Center(
                        child: Icon(
                          // number,
                          Icons.arrow_back,
                          color: whiteColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
