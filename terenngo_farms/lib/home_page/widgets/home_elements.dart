import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeElements extends StatefulWidget {
  const HomeElements({Key? key}) : super(key: key);

  @override
  State<HomeElements> createState() => _HomeElementsState();
}

class _HomeElementsState extends State<HomeElements> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.35,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
              padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
              child: const Text(
                'Check out our Products',
                style: TextStyle(
                    color: Color.fromARGB(255, 15, 87, 16),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.1),
              )),
          Center(
            child: Container(
                margin: const EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(120),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        offset: Offset(0, 0))
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: ImageSlideshow(
                    initialPage: 0,
                    indicatorColor: Colors.blue,
                    indicatorBackgroundColor: Colors.white,
                    children: [
                      Image.asset(
                        'assets/i1.JPG',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/i2.JPG',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/i3.JPG',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/i4.JPG',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/i5.JPG',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/i6.JPG',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/i7.JPG',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/i8.JPG',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/i9.JPG',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/i10.JPG',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/i11.JPG',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/i12.JPG',
                        fit: BoxFit.cover,
                      ),
                    ],
                    autoPlayInterval: 6000,
                    isLoop: true,
                  ),
                )),
          ),
          Container(
              margin: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
              child: const Text(
                'How to purchase our products',
                style: TextStyle(
                    color: Color.fromARGB(255, 22, 109, 24),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.1),
              )),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.21,
              child: const Text(
                  "You can  purchase our products by navigating to the Market Place from the buttom of your screen and then selecting the desired product. After selecting the product, you then add it to Cart and Place your Orders from the Cart.",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 11, 36, 11),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5)),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
              child: const Text(
                'About Us',
                style: TextStyle(
                    color: Color.fromARGB(255, 22, 109, 24),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.1),
              )),
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width * 0.85,
              child: const Text(
                  "Terenngo Farms is a Nigerian based Agricultural  institute which deals in all varieties of Agricultural products and Livestocks\n\n\nYou can contact us via the following channels:\n\naddress: \nemail: terrangofarms@gmail.com\nphone number: +234882439097",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 11, 36, 11),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5)),
            ),
          ),
        ],
      ),
    );
  }
}
