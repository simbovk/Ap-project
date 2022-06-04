// ignore_for_file: unnecessary_const

import 'dart:ui';

import 'package:flutter/material.dart';

import 'Profile.dart';
import 'homePage.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => ShoppingCartState();
}

class ShoppingCartState extends State<ShoppingCart> {
  static const IconData trash = IconData(0xf4c4);
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Column(
            children: [
              Container(
                child: const TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Text("Your Cart"),
                        icon: Icon(Icons.shopping_bag_outlined),
                      ),
                      Tab(
                        child: Text("Your Product"),
                        icon: Icon(Icons.view_list),
                      ),
                    ]),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  height: 400,
                  child: TabBarView(
                    children: <Widget>[
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/iphone13.png"),
                                        fit: BoxFit.fill),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  height: 250,
                                  width: 150,
                                ),
                              ),
                              Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 10, left: 10, bottom: 55),
                                    child: Text(
                                      'Apple iPhone 13 Pro (256GB)\n [Locked] + Carrier Subscription...',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    side: const BorderSide(
                                                        color: Colors.white))),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              counter++;
                                            });
                                          },
                                          child: const Icon(Icons.add , color: Colors.black, size: 20,)),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '$counter',
                                      style:
                                          const TextStyle(color: Colors.black , fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    side: const BorderSide(
                                                        color: Colors.white))),
                                          ),
                                        onPressed: () {
                                            setState(() {
                                              counter--;
                                            });
                                          },
                                        child: const Icon(
                                            Icons.restore_from_trash , color: Colors.black, size: 20,),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 30),
                                child: Text(
                                  'Blue',
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(32.0)),
                                    color: Colors.blue),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              const Text(
                                r'Price: &999.00',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/iphone13.png"),
                                        fit: BoxFit.fill),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  height: 250,
                                  width: 150,
                                ),
                              ),
                              Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 10, left: 10, bottom: 35),
                                    child: Text(
                                      'Apple iPhone 13 Pro (256GB)\n [Locked] + Carrier Subscription...',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 100, right: 160, left: 10),
                                    child: Text(
                                      r'Price: &999.00',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic),
                                      textAlign: TextAlign.left,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
          ),
          child: Container(
            //color: Colors.black,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white), color: Colors.black),
            child: BottomNavigationBar(
              fixedColor: Colors.white,
              unselectedItemColor: Colors.white,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: IconButton(
                      icon: const Icon(Icons.category_outlined),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                    ),
                    label: 'Categories'),
                BottomNavigationBarItem(
                    icon: IconButton(
                      icon: const Icon(Icons.shopping_cart),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ShoppingCart(),
                          ),
                        );
                      },
                    ),
                    label: 'Shopping Cart'),
                BottomNavigationBarItem(
                    icon: IconButton(
                      icon: const Icon(Icons.account_circle),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfilePage(),
                          ),
                        );
                      },
                    ),
                    label: 'Account'),
              ],
              //selectedItemColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
