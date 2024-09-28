import 'package:bank_sha/Shared/theme.dart';
import 'package:flutter/material.dart';

class CostomComponenButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  const CostomComponenButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: purpleColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
            56,
          )),
        ),
        child: Text(
          title,
          style: whiteTetxtStyle.copyWith(
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}

class CostomComponenText extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  const CostomComponenText({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: grayTetxtStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
