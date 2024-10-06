import 'package:bank_sha/Shared/theme.dart';
import 'package:flutter/material.dart';

class UserResult extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String nameTag;
  final bool isVerified;
  final bool isSelected;
  const UserResult({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.nameTag,
    this.isVerified = false,
    this.isSelected = false,
  });

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
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
            child: isVerified
                ? Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 18,
                        ),
                      ),
                    ),
                  )
                : null,
          ),
          const SizedBox(
            height: 13,
          ),
          Text(
            name,
            style: blackTetxtStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          Text(
            nameTag,
            style: grayTetxtStyle.copyWith(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
