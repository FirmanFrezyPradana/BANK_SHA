import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:bank_sha/Ui/Widgets/forms.dart';
import 'package:bank_sha/Ui/Widgets/package_item.dart';
import 'package:flutter/material.dart';

class ProviderPaketPage extends StatelessWidget {
  const ProviderPaketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Phone Number',
            style: blackTetxtStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CostumComponenForms(
            title: '+628',
            isShowPlaceholder: false,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Package',
            style: blackTetxtStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            spacing: 60,
            runSpacing: 18,
            children: [
              PackageItem(
                amount: 10,
                price: 218000,
                isSelected: true,
              ),
              PackageItem(amount: 25, price: 420000),
              PackageItem(amount: 40, price: 2500000),
              PackageItem(amount: 99, price: 5000000),
            ],
          ),
          const SizedBox(
            height: 98,
          ),
          CostomComponenButton(
            title: 'Continue',
            onPressed: () async {
              if ((await Navigator.pushNamed(context, '/PinPage')) == true) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/ProviderSuccesPage', (route) => false);
              }
            },
          )
        ],
      ),
    );
  }
}
