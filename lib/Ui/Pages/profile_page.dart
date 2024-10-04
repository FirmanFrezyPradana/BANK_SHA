import 'package:bank_sha/Shared/theme.dart';
import 'package:bank_sha/Ui/Widgets/Buttons.dart';
import 'package:bank_sha/Ui/Widgets/Profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My profile',
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
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img_profile.png'),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Salsa Azzahra Shania',
                  style: blackTetxtStyle.copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_edit_profile.png',
                    title: 'Edit Profile',
                    onTab: () async {
                      if (await Navigator.pushNamed(context, '/PinPage') ==
                          true) {
                        Navigator.pushNamed(context, '/ProfileEdit');
                      }
                      ;
                    }),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_pin.png',
                    title: 'My PIN',
                    onTab: () async {
                      if (await Navigator.pushNamed(context, '/PinPage') ==
                          true) {
                        Navigator.pushNamed(context, '/ProfileEditPin');
                      }
                      ;
                    }),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_wallet.png',
                    title: 'Wallet Settings',
                    onTab: () {}),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_reward.png',
                    title: 'My Rewards',
                    onTab: () {}),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_help.png',
                    title: 'Help Center',
                    onTab: () {}),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_logout.png',
                    title: 'Log Out',
                    onTab: () {}),
              ],
            ),
          ),
          const SizedBox(
            height: 87,
          ),
          const CostomComponenText(title: 'Report a Problem')
        ],
      ),
    );
  }
}
