import 'package:flutter/material.dart';
import 'package:green_tech/products_page/product.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
            child: const Text(
              'Product Categories',
              style: TextStyle(
                  color: Color.fromARGB(255, 15, 87, 16),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.54,
          child: ListView(scrollDirection: Axis.vertical, children: [
            marketItem(context, "LiveStocks", "i5.JPG"),
            marketItem(context, "Pigs", "i9.JPG"),
            marketItem(context, "Poultry", "i4.JPG"),
            marketItem(context, "Yams", "i17.JPG"),
            marketItem(context, "Cassava", "i14.PNG"),
            marketItem(context, "Snails", "i12.JPG"),
            marketItem(context, "Sugar Cane", "i19.JPG"),
            marketItem(context, "Maize", "i2.JPG"),
            marketItem(context, "Soya Beans", "i1.JPG"),
            marketItem(context, "Melon", "i18.JPG"),
            marketItem(context, "Tomatoes", "t14.jpeg"),
            marketItem(context, "Peper", "t5.jpeg"),
          ]),
        ),
      ],
    );
  }
}

Widget marketItem(BuildContext context, String name, String image) {
  return GestureDetector(
    onTap: (() {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => Product(product: name))));
    }),
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: MediaQuery.of(context).size.width * 0.80,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: Colors.grey.withAlpha(120),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black38, blurRadius: 10, offset: Offset(0, 0))
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Stack(children: [
          Image(
              width: MediaQuery.of(context).size.width * 0.90,
              fit: BoxFit.cover,
              image: AssetImage("assets/$image")),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: const EdgeInsets.only(right: 10, bottom: 10),
                child: Text(
                  name,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 233, 245, 233),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.3,
                      backgroundColor: Color.fromARGB(57, 0, 0, 0)),
                ),
              ))
        ]),
      ),
    ),
  );
}
