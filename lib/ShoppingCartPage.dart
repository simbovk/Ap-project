// ignore_for_file: unnecessary_const

import 'dart:ui';

import 'package:digikala/FinishBuying.dart';
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
  int price = 999;
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
                scrollDirection: Axis.vertical,
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
                                      width: 60,
                                      height: 40,
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
                                                            13.0),
                                                    side: const BorderSide(
                                                        color: Colors.white))),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              counter++;
                                              price += 999;
                                            });
                                          },
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.black,
                                            size: 25,
                                          )),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '$counter',
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    SizedBox(
                                      width: 60,
                                      height: 40,
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
                                                          13.0),
                                                  side: const BorderSide(
                                                      color: Colors.white))),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            counter--;
                                            price -= 999;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.restore_from_trash,
                                          color: Colors.black,
                                          size: 25,
                                        ),
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
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Product Information' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 26),),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(32.0))),
                                  hintText: 'Firstname',
                                  iconColor: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(32.0))),
                                  hintText: 'Lastname',
                                  iconColor: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(32.0))),
                                  hintText: 'Password',
                                  iconColor: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(32.0))),
                                  hintText: 'Phonenumber',
                                  iconColor: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(32.0))),
                                  hintText: 'email',
                                  iconColor: Colors.black),
                            ),
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
        bottomNavigationBar: Container(
          //color: Colors.black,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black), color: Colors.white),
          child: BottomNavigationBar(
            fixedColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FinishBuying(),
                        ),
                      );
                    },
                    child: const Text('Finish Buying Proccess'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.black))),
                    ),
                  ),
                  label: 'Finish'),
              BottomNavigationBarItem(
                  icon: Text(
                    '${price}Dollar',
                    style: const TextStyle(
                        fontSize: 26,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  label: 'Price')
            ],
            //selectedItemColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
