import 'package:flutter/material.dart';
import 'package:flutterexam/common/buttons.dart';

import '../common/text_field.dart';
import '../constants/textstyles.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              'Create Your Account',
              style: TextStyles.mbTitle,
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already Registered?', style: TextStyles.mbText),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/login'),
                  child: const Text('Log In Here',
                      style: TextStyles.mbTextSecondaryColored),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const CustomTextField(label: 'Name'),
            const CustomTextField(label: 'Email'),
            const CustomTextField(
              label: 'Password',
              isPassword: true,
            ),
            const CustomTextField(
              label: 'Confirm Password',
              isPassword: true,
            ),
            const SizedBox(height: 25),
            FullWidthButton(
                buttonLabel: 'Create Account',
                onclick: () => Navigator.pushNamed(context, '/login')),
          ],
        ),
      ),
    );
  }
}
