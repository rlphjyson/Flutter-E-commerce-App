import 'package:flutter/material.dart';

import '../constants/textstyles.dart';

class ProductsCard extends StatefulWidget {
  final String label;

  const ProductsCard({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  State<ProductsCard> createState() => _ProductsCard();
}

class _ProductsCard extends State<ProductsCard> {
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          height: 150,
          width: 150,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Image.asset(
                'assets/image/$productPic.jpg',
                width: 130,
                height: 80,
              ),
              Spacer(),
              Text(
                productName,
                style: TextStyles.mbTextBoldBlack,
              ),
              SizedBox(height: 10),
              Text(productPrice, style: TextStyles.mbTextBoldBlack),
            ]),
          ),
        ),
      ),
    );
  }
}
