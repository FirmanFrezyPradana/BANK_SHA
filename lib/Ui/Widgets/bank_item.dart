import 'package:bank_sha/Shared/theme.dart';
import 'package:flutter/material.dart';

class BankItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String time;
  final bool isSelected;

  const BankItem({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.time,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          border: Border.all(
            width: 2,
            color: isSelected ? blueColor : whiteColor,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            width: 96,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: blackTetxtStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              Text(
                time,
                style: grayTetxtStyle.copyWith(
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
