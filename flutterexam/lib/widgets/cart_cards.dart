import 'package:flutter/material.dart';

import '../constants/textstyles.dart';

class CartCard extends StatefulWidget {
  final String label;
  final VoidCallback onClick;
  const CartCard({Key? key, required this.label, required this.onClick})
      : super(key: key);

  @override
  State<CartCard> createState() => _CartCard();
}

class _CartCard extends State<CartCard> {
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
    return InkWell(
      onTap: widget.onClick,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            height: 100,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 20, bottom: 10),
              child: Row(children: [
                Image.asset(
                  'assets/image/$productPic.jpg',
                  width: 100,
                  height: 100,
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      productName,
                      style: TextStyles.mbTextBoldBlack,
                    ),
                    SizedBox(height: 10),
                    Text(productPrice, style: TextStyles.mbTextBoldBlack),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
