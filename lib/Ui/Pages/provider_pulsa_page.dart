import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:bank_sha/Ui/Widgets/bank_item.dart';
import 'package:flutter/material.dart';

class ProviderPulsaPage extends StatelessWidget {
  const ProviderPulsaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Beli Data',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'From Wallet',
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
                    'Balance: Rp 180.000.000',
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
          const SizedBox(
            height: 14,
          ),
          const BankItem(
            title: 'Telkomsel',
            imageUrl: 'assets/img_provider_telkomsel.png',
            time: 'Available',
            isSelected: true,
          ),
          const BankItem(
            title: 'Indosat Ooredoo',
            imageUrl: 'assets/img_provider_indosat.png',
            time: 'Available',
          ),
          const BankItem(
            title: 'Singtel ID',
            imageUrl: 'assets/img_provider_singtel.png',
            time: 'Available',
          ),
          const SizedBox(
            height: 135,
          ),
          CostomComponenButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/ProviderPaketPage');
            },
          )
        ],
      ),
    );
  }
}
