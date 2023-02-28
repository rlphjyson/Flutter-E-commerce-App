import 'package:flutter/material.dart';
import 'package:flutterexam/screens/product_info.dart';
import 'package:flutterexam/widgets/cart_cards.dart';

import '../constants/textstyles.dart';
import '../widgets/products_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 70),
            child: Text('Your Cart', style: TextStyles.mbTitle),
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(50)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 40, bottom: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Here's what's in your cart",
                        style: TextStyles.mbSubTitleBoldBlack,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CartCard(label: 'shoe1', onClick: () {}),
                      const SizedBox(
                        height: 10,
                      ),
                      CartCard(label: 'shoe2', onClick: () {}),
                      const SizedBox(
                        height: 10,
                      ),
                      CartCard(label: 'shoe3', onClick: () {}),
                      const SizedBox(
                        height: 10,
                      ),
                      CartCard(label: 'shoe4', onClick: () {}),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
