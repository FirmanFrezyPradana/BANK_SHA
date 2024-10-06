import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:bank_sha/Ui/Widgets/forms.dart';
import 'package:bank_sha/Ui/Widgets/user_item.dart';
import 'package:bank_sha/Ui/Widgets/user_result_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Search',
            style: blackTetxtStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CostumComponenForms(
            title: 'by username',
            isShowPlaceholder: false,
          ),
          // buildRecentUsers(),
          buildResult(),
          const SizedBox(
            height: 274,
          ),
          CostomComponenButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/TransferAmountPage', (route) => false);
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

Widget buildRecentUsers() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Users',
          style: blackTetxtStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const TransferRecentUserItem(
            imageUrl: 'assets/img_friend1.png',
            name: 'Yonna Jie',
            nameTag: '@yoenna',
            isVerify: true),
        const TransferRecentUserItem(
            imageUrl: 'assets/img_friend3.png',
            name: 'John Hi',
            nameTag: '@jhi',
            isVerify: false),
        const TransferRecentUserItem(
            imageUrl: 'assets/img_friend4.png',
            name: 'Masayoshi',
            nameTag: '@form',
            isVerify: false),
      ],
    ),
  );
}

Widget buildResult() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Result',
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
          runSpacing: 17,
          children: [
            UserResult(
              imageUrl: 'assets/img_friend1.png',
              name: 'Yonna Jie',
              nameTag: '@yoenna',
              isVerified: true,
              isSelected: true,
            ),
            UserResult(
              imageUrl: 'assets/img_friend2.png',
              name: 'Yonna Jie',
              nameTag: '@yoenna',
              isVerified: true,
              isSelected: false,
            ),
          ],
        )
      ],
    ),
  );
}
