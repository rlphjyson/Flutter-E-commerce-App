import 'package:flutter/material.dart';
import 'package:flutterexam/pages/home_page.dart';
import 'package:flutterexam/pages/login_page.dart';
import 'package:flutterexam/pages/register_page.dart';
import 'package:flutterexam/values/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'DMSans',
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(primary: CustomColor.primaryColor)),
      home: const LoginPage(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
