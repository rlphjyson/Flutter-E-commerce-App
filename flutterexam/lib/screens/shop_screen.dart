import 'package:flutter/material.dart';
import 'package:flutterexam/screens/product_info.dart';

import '../constants/textstyles.dart';
import '../widgets/products_card.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 70),
            child: Text('Shop Now', style: TextStyles.mbTitle),
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
                    children: [
                      Row(
                        children: [
                          ProductsCard(
                            label: 'shoe1',
                            onClick: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProductInfo(
                                        label: 'shoe1',
                                      )),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ProductsCard(
                            label: 'shoe2',
                            onClick: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProductInfo(
                                        label: 'shoe2',
                                      )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          ProductsCard(
                            label: 'shoe3',
                            onClick: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProductInfo(
                                        label: 'shoe3',
                                      )),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ProductsCard(
                            label: 'shoe4',
                            onClick: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProductInfo(
                                        label: 'shoe4',
                                      )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        'More Products here',
                        style: TextStyles.mbSubTitleBoldBlack,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Row(
                          children: <Widget>[
                            ProductsCard(
                              label: 'shoe1',
                              onClick: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProductInfo(
                                          label: 'shoe1',
                                        )),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            ProductsCard(
                              label: 'shoe2',
                              onClick: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProductInfo(
                                          label: 'shoe2',
                                        )),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            ProductsCard(
                              label: 'shoe3',
                              onClick: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProductInfo(
                                          label: 'shoe3',
                                        )),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            ProductsCard(
                              label: 'shoe4',
                              onClick: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProductInfo(
                                          label: 'shoe4',
                                        )),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            ProductsCard(
                              label: 'shoe1',
                              onClick: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProductInfo(
                                          label: 'shoe1',
                                        )),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            ProductsCard(
                              label: 'shoe2',
                              onClick: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProductInfo(
                                          label: 'shoe2',
                                        )),
                              ),
                            ),
                          ],
                        ),
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
