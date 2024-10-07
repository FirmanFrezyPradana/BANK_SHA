import 'package:bank_sha/Shared/theme.dart';
import 'package:flutter/material.dart';

class PackageItem extends StatelessWidget {
  final int price;
  final int amount;
  final bool isSelected;
  const PackageItem(
      {super.key,
      required this.amount,
      required this.price,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 171,
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 22,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(
          20,
        ),
        border:
            Border.all(color: isSelected ? blueColor : whiteColor, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 13,
          ),
          Text(
            '${amount} GB',
            style: blackTetxtStyle.copyWith(fontSize: 32, fontWeight: semiBold),
          ),
          Text(
            'Rp. ${price}',
            style: grayTetxtStyle.copyWith(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
