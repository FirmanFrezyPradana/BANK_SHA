import 'package:bank_sha/Shared/theme.dart';
import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTab;
  const ProfileMenuItem({
    super.key,
    required this.iconUrl,
    required this.title,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          children: [
            Image.asset(
              iconUrl,
              width: 24,
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0), // Memberikan margin kiri 16
              child: Text(
                title,
                style:
                    blackTetxtStyle.copyWith(fontSize: 17, fontWeight: medium),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
