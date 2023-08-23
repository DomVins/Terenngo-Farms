import 'package:flutter/material.dart';
import 'package:green_tech/home_page/widgets/home_elements.dart';
import 'package:green_tech/home_page/widgets/market.dart';
import 'package:green_tech/home_page/widgets/services.dart';

import '../cart_page/cart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _key,
      //drawer: const NavDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      width: 40,
                      height: 42,
                      child: const Image(image: AssetImage("assets/logo.jpg"))),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Terenngo Farms',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 11, 75, 15)
                                  .withBlue(10),
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.7)),
                      Text('Home of Agriculture . . .',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 11, 75, 15)
                                  .withBlue(10),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2.0,
                              fontStyle: FontStyle.italic)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: MediaQuery.of(context).size.width * 0.05,
              ),
              color: Colors.grey,
              width: MediaQuery.of(context).size.width * 0.9,
              height: 1.0,
            ),
            Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: (selectedIndex == 0)
                    ? const HomeElements()
                    : (selectedIndex == 1)
                        ? const Market()
                        : (selectedIndex == 2)
                            ? const Cart()
                            : const Services()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: const Color.fromARGB(255, 100, 97, 97),
          selectedItemColor: const Color.fromARGB(255, 23, 119, 26),
          unselectedLabelStyle: const TextStyle(
            color: Color.fromARGB(255, 23, 119, 26),
          ),
          showUnselectedLabels: true,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              label: 'Market Place',
              icon: Icon(Icons.shopify),
            ),
            BottomNavigationBarItem(
                label: 'Cart', icon: Icon(Icons.shopping_cart_rounded)),
            BottomNavigationBarItem(
                label: 'Services', icon: Icon(Icons.present_to_all)),
          ]),
    );
  }
}
