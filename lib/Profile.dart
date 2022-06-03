import 'dart:ui';

import 'package:flutter/material.dart';

import 'homePage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              'MyAccount',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                },
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height + 150,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/homepage.png"),
                      fit: BoxFit.cover)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: CircleAvatar(
                              //radius: 20,
                              backgroundImage: const AssetImage(
                                  'assets/images/circleavatar.png'),
                              child: InkWell(
                                onTap: () {},
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Center(
                      child: Text(
                        'username',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Center(
                      child: Text(
                        'Phonenumber',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Center(
                      child: Text(
                        'Email',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Center(
                      child: Text(
                        'Username',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 350),
                      child: Text(
                        'Confirmed Orders',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/iphone13.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.black),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const Text(
                                    'mobile\n+1000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 48),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/laptopLegion5.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.black),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 48),
                                    child: Text(
                                      'laptop\n+500',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 48),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/ipad.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.black),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 48),
                                    child: Text(
                                      'ipad & tablet\n+2000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 48),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/appleWatch.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.black),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 48),
                                    child: Text(
                                      'watch\n+500',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 390),
                      child: Text(
                        'My Product',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/iphone13.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.black),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const Text(
                                    'mobile\n+1000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 48),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/laptopLegion5.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.black),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 48),
                                    child: Text(
                                      'laptop\n+500',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 48),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/ipad.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.black),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 48),
                                    child: Text(
                                      'ipad & tablet\n+2000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 48),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/appleWatch.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.black),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 48),
                                    child: Text(
                                      'watch\n+500',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 360),
                      child: Text(
                        'Favorite Product',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/iphone13.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.black),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const Text(
                                    'mobile\n+1000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 48),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/laptopLegion5.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.black),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 48),
                                    child: Text(
                                      'laptop\n+500',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 48),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/ipad.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.black),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 48),
                                    child: Text(
                                      'ipad & tablet\n+2000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 48),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/appleWatch.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.black),
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 48),
                                    child: Text(
                                      'watch\n+500',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
