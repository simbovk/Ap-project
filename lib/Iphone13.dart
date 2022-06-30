import 'dart:ui';

import 'package:digikala/Product.dart';
import 'package:digikala/ShoppingCartPage.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone13 extends StatefulWidget {
  Iphone13({Key? key}) : super(key: key);

  @override
  State<Iphone13> createState() => _Iphone13State();
}

class _Iphone13State extends State<Iphone13> {
  Product? product;
  String? color;
  String dropdownvalue2 = '1';

  var colors = [
    'black',
    'white',
    'red',
    'green',
    'blue',
    'pink',
  ];

  var rate = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ];

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
                padding: const EdgeInsets.only(right: 100, left: 100),
                child: SizedBox(
                  height: 250,
                  width: 400,
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text(
                  'Mobile / iphone13',
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.6), fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  '\u2022 Apple iPhone 13 (256GB)\n 15 cm (6.1-inch) Super Retina XDR display\n\u2022 Advanced dual-camera system with 12MP Wide and Ultra\n Wide cameras; Photographic Styles, Smart HDR 4, Night\n mode, 4K Dolby Vision HDR recording',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 350),
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
                padding: const EdgeInsets.only(right: 290),
                child: Container(
                  height: 25,
                  width: 100,
                  child: DropdownButton(
                    hint: Text('Select' , style: TextStyle(color: Colors.black),),
                    icon: Icon(Icons.arrow_drop_down , color: Color(0),),
                    value: color,
                    items: [
                      DropdownMenuItem(
                        child: Container(
                          height:25,
                          width: 75,
                            color: Colors.black,
                            child: Center(child: const Text("black"))),
                        value: 'black',
                      ),
                      DropdownMenuItem(
                        child: Container(
                          height:25,
                          width: 75,
                            color: Colors.white,
                            child: Center(
                              child: const Text(
                                "white",
                                style: TextStyle(color: Colors.black),
                              ),
                            )),
                        value: 'white',
                      ),
                      DropdownMenuItem(
                        child: Container(
                          height:25,
                          width: 75,
                            color: Color.fromARGB(255, 4, 36, 52),
                            child: Center(child: const Text("blue"))),
                        value: 'blue',
                      ),
                      DropdownMenuItem(
                        child: Container(
                          height:25,
                          width: 75,
                            color: const Color.fromARGB(255, 207, 37, 25),
                            child: Center(child: const Text("red"))),
                        value: 'red',
                      ),
                      DropdownMenuItem(
                        child: Container(
                          height:25,
                          width: 75,
                            color: const Color.fromARGB(255, 255, 122, 166),
                            child: Center(child: const Text("pink"))),
                        value: 'pink',
                      ),
                      DropdownMenuItem(
                        child: Container(
                          height:25,
                          width: 75,
                            color: const Color.fromARGB(255, 1, 46, 18),
                            child: Center(child: const Text("green"))),
                        value: 'green',
                      ),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        color = newValue;
                      });
                    }, //make true to take width of parent widget
                    underline: Container(), //empty line
                    style:
                        const TextStyle(fontSize: 18, color: Colors.white),
                    iconEnabledColor: Colors.white, //Icon color
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 325),
                child: Text(
                  "your rate",
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.6), fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 340),
                child: DropdownButton(
                  value: dropdownvalue2,
                  icon: const Icon(
                    Icons.star_outline_rounded,
                    size: 20,
                  ),
                  items: rate.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue2 = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(right: 350),
                child: Text(
                  'Price',
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.6), fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 340),
                child: Text(
                  r'$999.00',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 350),
                child: Text(
                  'Rate',
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.6), fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 340),
                child: Text("4.9⭐️",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ShoppingCart(),
              ),
            );
          },
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
