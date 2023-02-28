import 'package:flutter/material.dart';

import '../values/colors.dart';

class FullWidthButton extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback onclick;

  const FullWidthButton(
      {Key? key, required this.buttonLabel, required this.onclick})
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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
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

class FullWidthButtonBlack extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback onclick;
  const FullWidthButtonBlack(
      {Key? key, required this.buttonLabel, required this.onclick})
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
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
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
