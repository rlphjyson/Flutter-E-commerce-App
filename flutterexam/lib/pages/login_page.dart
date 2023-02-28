import 'package:flutter/material.dart';

import '../common/buttons.dart';
import '../common/text_field.dart';
import '../constants/textstyles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Welcome Back!', style: TextStyles.mbTitle),
                  const Text('Sign in to continue',
                      style: TextStyles.mbSubTitle),
                  const SizedBox(height: 36),
                  const CustomTextField(label: "Username"),
                  const CustomTextField(
                    label: 'Password',
                    isPassword: true,
                  ),
                  const SizedBox(height: 11),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/forgotPasswordPage'),
                        child: const Text(
                          'Forgot Password',
                          style: TextStyles.mbTextColored,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 55),
                  FullWidthButton(
                      buttonLabel: 'Login',
                      onclick: () =>
                          Navigator.pushNamed(context, '/confirmIdentity')),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account yet?",
                          style: TextStyles.mbText),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, '/register'),
                        child: const Text('Register',
                            style: TextStyles.mbTextSecondaryColored),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
