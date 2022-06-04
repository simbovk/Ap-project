// ignore_for_file: unnecessary_new

import 'dart:html';

import 'package:digikala/Product.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone13 extends StatelessWidget {
  Product? product;

  Iphone13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = PageController(viewportFraction: 0.8, keepPage: true);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'View Product',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          backgroundColor: Colors.black,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                  icon: const Icon(Icons.favorite_border), onPressed: () {}),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 150, left: 150),
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Expanded(
                    child: PageView(
                        controller: controller,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/iphone130.png"),
                                    fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/iphone131.png"),
                                    fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/iphone132.png"),
                                    fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/iphone133.png"),
                                    fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/iphone134.png"),
                                    fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/iphone135.png"),
                                    fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: 6,
                effect: const WormEffect(
                    activeDotColor: Colors.black, dotHeight: 16, dotWidth: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 350),
                child: Text(
                  'Mobile / iphone13',
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.6), fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 100),
                child: Text(
                  '\u2022 Apple iPhone 13 (256GB)\n 15 cm (6.1-inch) Super Retina XDR display\n\u2022 Advanced dual-camera system with 12MP Wide and Ultra\n Wide cameras; Photographic Styles, Smart HDR 4, Night\n mode, 4K Dolby Vision HDR recording',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 440),
                child: Text(
                  'Color',
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.6), fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 370),
                child: Container(
                  height: 30,
                  width: 100,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Colors.redAccent,
                            Colors.blueAccent,
                            Colors.purpleAccent
                            //add more colors
                          ]),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                                color: Color.fromRGBO(
                                    0, 0, 0, 0.57), //shadow for button
                                blurRadius: 5) //blur radius of shadow
                          ]),
                      child: DropdownButton(
                        items: const [
                          DropdownMenuItem(
                            child: Text("black"),
                            value: Colors.black,
                          ),
                          DropdownMenuItem(
                            child: Text("white"),
                            value: Colors.black,
                          ),
                          DropdownMenuItem(
                            child: Text("blue"),
                            value: Colors.black,
                          ),
                        ],
                        onChanged: (value) {
                          Product(productColor: value , name: 'iphone13');
                        }, //make true to take width of parent widget
                        underline: Container(), //empty line
                        style: const TextStyle(fontSize: 18, color: Colors.white),
                        iconEnabledColor: Colors.white, //Icon color
                      )),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          child: const IconTheme(
            data: IconThemeData(color: Colors.white),
            child: Icon(Icons.shopping_bag),
          ),
        ),
      ),
    );
  }
}
