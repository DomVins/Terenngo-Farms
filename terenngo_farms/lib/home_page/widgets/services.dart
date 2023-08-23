import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
            child: const Text(
              'Services',
              style: TextStyle(
                  color: Color.fromARGB(255, 15, 87, 16),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.65,
          child: ListView(scrollDirection: Axis.vertical, children:const []),
        ),
      ],
    );
  }
}
