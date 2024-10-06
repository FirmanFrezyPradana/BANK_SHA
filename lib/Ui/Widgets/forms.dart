import 'package:bank_sha/Shared/theme.dart';
import 'package:flutter/material.dart';

class CostumComponenForms extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  final bool isShowPlaceholder;
  const CostumComponenForms(
      {super.key,
      required this.title,
      this.obscureText = false,
      this.controller,
      this.isShowPlaceholder = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowPlaceholder)
          Text(
            title,
            style: blackTetxtStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        if (isShowPlaceholder)
          const SizedBox(
            height: 8,
          ),
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
              hintText: !isShowPlaceholder ? title : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              contentPadding: const EdgeInsets.all(12)),
        )
      ],
    );
  }
}
