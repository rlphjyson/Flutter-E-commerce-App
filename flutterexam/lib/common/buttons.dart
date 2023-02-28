import 'package:flutter/material.dart';

import '../values/colors.dart';

class FullWidthButton extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback onclick;
  bool isGrey;
  FullWidthButton(
      {Key? key,
      this.isGrey = false,
      required this.buttonLabel,
      required this.onclick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onclick,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80.0),
        ),
      ),
      child: Ink(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: isGrey
              ? const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color.fromARGB(255, 104, 104, 104),
                    Color.fromARGB(255, 199, 199, 199),
                  ],
                )
              : const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    CustomColor.primaryColor,
                    Color.fromARGB(255, 36, 4, 4),
                    Color.fromARGB(223, 90, 16, 16),
                    CustomColor.secondaryColor,
                  ],
                ),
          borderRadius: const BorderRadius.all(Radius.circular(80.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(
            minWidth: double.infinity,
          ),
          alignment: Alignment.center,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              buttonLabel,
              style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class FullWidthButton2 extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback onclick;
  const FullWidthButton2(
      {Key? key, required this.buttonLabel, required this.onclick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onclick,
      style: ElevatedButton.styleFrom(
        alignment: Alignment.centerLeft,
        primary: const Color.fromARGB(255, 214, 214, 214),
        minimumSize: const Size.fromHeight(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          buttonLabel,
          style: const TextStyle(
              fontSize: 15, color: Color.fromARGB(255, 99, 99, 99)),
        ),
      ),
    );
  }
}
