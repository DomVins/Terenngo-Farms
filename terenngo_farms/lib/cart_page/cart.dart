import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 200, left: 135),
        child: const Icon(
          Icons.shopping_cart_checkout_rounded,
          size: 100,
          color: Color.fromARGB(255, 81, 145, 83),
        ));
  }
}
