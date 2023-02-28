import 'package:flutter/material.dart';
import '../values/colors.dart';

abstract class TextStyles {
  static const mbTitle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: CustomColor.blackColor,
  );

  static const mbTitleGrey = TextStyle(
    fontSize: 28,
    color: Color.fromARGB(65, 0, 0, 0),
  );

  static const mbTitleBlack = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const mbTitleWhite = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const mbSubTitle = TextStyle(
    color: CustomColor.greyColor,
    fontSize: 17,
  );

  static const mbSubTitleColored = TextStyle(
    color: CustomColor.primaryColor,
    fontSize: 17,
  );
  static const mbSubTitleBoldBlack = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 17,
  );

  static const mbSubTitleWhite = TextStyle(
    color: Colors.white,
    fontSize: 17,
  );

  static const mbSubTitleBold = TextStyle(
    color: CustomColor.greyColor,
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );

  static const mbText = TextStyle(
    fontSize: 13,
    color: CustomColor.textColor,
  );

  static const mbTextWhiteSmall = TextStyle(
    fontSize: 10,
    color: Colors.white,
  );
  static const mbTextWhite = TextStyle(
    fontSize: 13,
    color: Colors.white,
  );
  static const mbTextblack = TextStyle(
    fontSize: 13,
    color: Colors.black,
  );
  static const mbTextBoldBlack = TextStyle(
    fontSize: 13,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static const mbTextBold = TextStyle(
    fontSize: 13,
    color: CustomColor.textColor,
    fontWeight: FontWeight.bold,
  );

  static const mbTextColored = TextStyle(
    fontSize: 13,
    color: CustomColor.primaryColor,
  );

  static const mbTextSecondaryColored = TextStyle(
    fontSize: 13,
    color: Color.fromARGB(223, 165, 29, 29),
  );
}
