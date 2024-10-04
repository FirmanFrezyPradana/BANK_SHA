import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class TopUpAmount extends StatefulWidget {
  const TopUpAmount({super.key});

  @override
  State<TopUpAmount> createState() => _InputAmountState();
}

class _InputAmountState extends State<TopUpAmount> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();

    amountController.addListener(() {
      final text =
          amountController.text.replaceAll('.', ''); // Hapus titik dulu

      // Cek apakah teks valid untuk diparsing menjadi integer
      if (text.isNotEmpty && int.tryParse(text) != null) {
        // Format teks sebagai mata uang, tanpa simbol mata uang
        amountController.value = amountController.value.copyWith(
          text: NumberFormat.currency(
            locale: 'id',
            symbol: '', // Tidak ada simbol mata uang
            decimalDigits: 0, // Tanpa desimal
          ).format(int.parse(text)),
        );
      }
    });
  }

  addAmont(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(
        () {
          amountController.text = amountController.text
              .substring(0, amountController.text.length - 1);
        },
      );
      if (amountController.text == '') {
        amountController.text = '0';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'Total Amount',
              style: whiteTetxtStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ),
          const SizedBox(
            height: 72,
          ),
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                controller: amountController,
                cursorColor: greyColor,
                enabled: false,
                style: whiteTetxtStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                ),
                decoration: InputDecoration(
                    prefix: Text(
                      'Rp.',
                      style: whiteTetxtStyle.copyWith(
                          fontSize: 36, fontWeight: medium),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor))),
              ),
            ),
          ),
          const SizedBox(
            height: 66,
          ),
          Center(
            child: Wrap(
              spacing: 40,
              runSpacing: 40,
              children: [
                CostomInputButton(
                    number: '1',
                    onTab: () {
                      addAmont('1');
                    }),
                CostomInputButton(
                    number: '2',
                    onTab: () {
                      addAmont('2');
                    }),
                CostomInputButton(
                    number: '3',
                    onTab: () {
                      addAmont('3');
                    }),
                CostomInputButton(
                    number: '4',
                    onTab: () {
                      addAmont('4');
                      ;
                    }),
                CostomInputButton(
                    number: '5',
                    onTab: () {
                      addAmont('5');
                    }),
                CostomInputButton(
                    number: '6',
                    onTab: () {
                      addAmont('6');
                    }),
                CostomInputButton(
                    number: '7',
                    onTab: () {
                      addAmont('7');
                    }),
                CostomInputButton(
                    number: '8',
                    onTab: () {
                      addAmont('8');
                    }),
                CostomInputButton(
                    number: '9',
                    onTab: () {
                      addAmont('9');
                    }),
                const SizedBox(
                  width: 60,
                  height: 60,
                ),
                CostomInputButton(
                    number: '0',
                    onTab: () {
                      addAmont('0');
                    }),
                GestureDetector(
                  onTap: () {
                    deleteAmount();
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
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CostomComponenButton(
            title: 'Checkout Now',
            onPressed: () async {
              if ((await Navigator.pushNamed(context, '/PinPage')) == true) {
                await launch("https://docs.midtrans.com/");
                Navigator.pushNamedAndRemoveUntil(
                    context, '/TopUpSucces', (route) => false);
              }
            },
          ),
          const SizedBox(
            height: 25,
          ),
          CostomComponenText(
            title: 'Terms & Conditions',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
