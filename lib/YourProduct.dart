import 'dart:ui';

import 'package:flutter/material.dart';

class YourProduct extends StatelessWidget {
  const YourProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Your Product',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.category , color: Colors.white,), onPressed: () {})
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Homepage.png"),
                    fit: BoxFit.cover)),
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 8 , left: 5),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Product Information',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                          textAlign: TextAlign.left,
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0))),
                              hintText: 'Category',
                              iconColor: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0))),
                              hintText: 'Products Name',
                              iconColor: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0))),
                              hintText: 'Seller Name',
                              iconColor: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0))),
                              hintText: 'Price',
                              iconColor: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0))),
                              hintText: 'Quantity',
                              iconColor: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0))),
                              hintText: 'Color',
                              iconColor: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0))),
                              hintText: 'Size',
                              iconColor: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: 100,
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              hintText: 'More Info',
                              iconColor: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
