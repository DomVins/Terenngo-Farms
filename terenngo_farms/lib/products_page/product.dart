import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Product extends StatefulWidget {
  Product({Key? key, required this.product}) : super(key: key);

  String product;

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        titleTextStyle: const TextStyle(
            fontSize: 22.5,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
            color: Color.fromARGB(255, 255, 253, 202)),
        backgroundColor: const Color.fromARGB(230, 48, 145, 55).withBlue(20),
        title: Text(widget.product),
      ),
      body: Container(
        color: const Color.fromARGB(230, 48, 145, 55).withBlue(20),
      ),
    );
  }
}
