import 'package:flutter/material.dart';

import '../common/buttons.dart';
import '../values/colors.dart';
import '../widgets/account_option.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned(
            top: 130,
            child: Container(
              height: MediaQuery.of(context).size.height * 5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 90, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/image/ralph.jpg'),
                        radius: 70,
                      ),
                      Positioned(
                        bottom: 5,
                        right: 10,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "Ralph",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                  ),
                  const Text(
                    "Burgos",
                    style: TextStyle(
                      fontSize: 25,
                      height: 1,
                      color: CustomColor.blackColor,
                    ),
                  ),
                  const SizedBox(height: 50),
                  AccountOption(
                    icon: Icons.person_outline_rounded,
                    label: 'Account',
                    onClick: () {},
                  ),
                  AccountOption(
                    icon: Icons.lock_rounded,
                    label: "Change Password",
                    onClick: () {},
                  ),
                  AccountOption(
                    icon: Icons.notifications_rounded,
                    label: 'Notifications',
                    onClick: () {},
                  ),
                  AccountOption(
                    icon: Icons.help_center_rounded,
                    label: 'Help',
                    onClick: () {},
                  ),
                  const SizedBox(height: 100),
                  FullWidthButton(
                    buttonLabel: 'Logout',
                    onclick: () => Navigator.pushNamed(context, '/login'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
