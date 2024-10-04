import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:bank_sha/Ui/Widgets/bank_item.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Up',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Wallet',
            style: blackTetxtStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTetxtStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  Text(
                    'Firman Frezy Pradana',
                    style: grayTetxtStyle.copyWith(fontSize: 16),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Bank',
            style: blackTetxtStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 16),
          const BankItem(
            title: 'BANK BCA',
            imageUrl: 'assets/img_bank_bca.png',
            isSelected: true,
          ),
          const BankItem(
              title: 'Bank BNI', imageUrl: 'assets/img_bank_bni.png'),
          const BankItem(
              title: 'Bank Mandiri', imageUrl: 'assets/img_bank_mandiri.png'),
          const BankItem(
              title: 'Bank OCBC', imageUrl: 'assets/img_bank_ocbc.png'),
          const SizedBox(
            height: 12,
          ),
          CostomComponenButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/TopUpAmount');
            },
          )
        ],
      ),
    );
  }
}
