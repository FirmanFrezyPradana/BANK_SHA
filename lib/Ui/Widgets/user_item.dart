import 'package:bank_sha/Shared/theme.dart';
import 'package:flutter/material.dart';

class TransferRecentUserItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String nameTag;
  final bool isVerify;
  const TransferRecentUserItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.nameTag,
    required this.isVerify,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            margin: EdgeInsets.only(
              right: 14,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: blackTetxtStyle.copyWith(fontSize: 16),
              ),
              Text(
                nameTag,
                style: grayTetxtStyle.copyWith(fontSize: 12),
              )
            ],
          ),
          Spacer(),
          if (isVerify)
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 14,
                ),
                Text(
                  'Verified',
                  style: greenTetxtStyle.copyWith(fontSize: 11),
                )
              ],
            )
        ],
      ),
    );
  }
}
