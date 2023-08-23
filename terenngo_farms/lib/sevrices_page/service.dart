import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Service extends StatefulWidget {
  Service({Key? key, required this.serviceOption}) : super(key: key);

  String serviceOption;
  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
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
        title: Text(widget.serviceOption),
      ),
      body: Container(
        color: const Color.fromARGB(230, 48, 145, 55).withBlue(20),
      ),
    );
  }
}
