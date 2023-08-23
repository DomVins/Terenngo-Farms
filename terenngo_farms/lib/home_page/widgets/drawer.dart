import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: const Color.fromARGB(230, 48, 145, 55).withBlue(20),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 4,
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0, 0))
                      ],
                    ),
                    child: const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Image(image: AssetImage("assets/logo.jpg")))
                    ),
                  ),
                  const Text(
                    'Terenngo',
                    style: TextStyle(
                      //color: Colors.green.shade900.withBlue(10),
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1.5,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.green.shade600.withBlue(10),
                  borderRadius: BorderRadius.circular(2)),
            ),
            ListTile(
              title: const Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Saved Products',
                  style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Purchase History',
                  style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              title: const Text('About Company',
                  style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
