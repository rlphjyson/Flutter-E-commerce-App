import 'package:flutter/material.dart';
import 'package:flutterexam/common/buttons.dart';

import '../constants/textstyles.dart';

class ProductInfo extends StatefulWidget {
  final String label;
  const ProductInfo({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  State<ProductInfo> createState() => _ProductInfo();
}

class _ProductInfo extends State<ProductInfo> {
  String productPic = '';
  String productPrice = '';
  String productName = '';
  @override
  void initState() {
    super.initState();
    switch (widget.label) {
      case 'shoe1':
        setState(() {
          productName = 'Nike Ultra Boost 1';
          productPic = 'shoe1';
          productPrice = '100.00';
        });
        break;
      case 'shoe2':
        setState(() {
          productName = 'Nike Pro Max 2';
          productPic = 'shoe2';
          productPrice = '100.00';
        });
        break;
      case 'shoe3':
        setState(() {
          productName = 'Nike Mini 3';
          productPic = 'shoe3';
          productPrice = '100.00';
        });
        break;
      case 'shoe4':
        setState(() {
          productName = 'Nike x Addidas 4';
          productPic = 'shoe4';
          productPrice = '100.00';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop Now"),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, top: 100),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            child: Text(
              productName,
              style: TextStyles.mbTitle,
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            child: const Text(
              '\$100.00',
              style: TextStyles.mbSubTitleBoldBlack,
              textAlign: TextAlign.start,
            ),
          ),
          Image.asset(
            'assets/image/$productPic.jpg',
            width: 500,
            height: 300,
          ),
          const Text(
              "Bridge the gap between your weekend training run and race day in a durable design that can be deployed not just at the starting line of your favourite race but in the days and months after your conquest. It offers comfort and reliability but with a propulsive sensation that'll help you feel fast and fresh. That kind of versatility is uncommon in the running arena. But who said you can't have it all?",
              style: TextStyles.mbText),
          const SizedBox(
            height: 50,
          ),
          FullWidthButtonBlack(buttonLabel: 'Add To Cart', onclick: () {}),
          const SizedBox(
            height: 10,
          ),
          FullWidthButtonBlack(buttonLabel: 'Buy Now', onclick: () {}),
        ]),
      ),
    );
  }
}
