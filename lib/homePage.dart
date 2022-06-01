// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List<Container> digitalProducts = [
    // ignore: avoid_unnecessary_containers
    Container(
      child: Column(
        children: const [
          Image(image: AssetImage("assets/images/iphone13.png")),
          Image(image: AssetImage("assets/images/laptopLegion5.png")),
          Image(image: AssetImage("assets/images/iphone13.png")),
        ],
      ),
    ),
    Container(),
    Container(),
  ];
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Search',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.search), onPressed: () {})
          ],
        ),
        drawer: Drawer(
          child: SafeArea(
            child: Column(
              children: const [
                //TextButton(onPressed: , child: child),
              ],
            ),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // decoration: const BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage("assets/images/homepage.png"),
          //         fit: BoxFit.cover)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Digital Products',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        child: const Text('All')),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  // This next line does the trick.
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    color: Colors.black),
                                height: 120,
                                width: 120,
                              ),
                            ),
                              const Text('iphone 13\n+1000' , style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),)
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    color: Colors.black),
                               height: 120,
                                width: 120,
                              ),
                            ),
                             const Padding(
                                padding: EdgeInsets.only(left: 48),
                                child:  Text('legion 5\n+500' , style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    color: Colors.black),
                               height: 120,
                                width: 120,
                              ),
                            ),
                             const Padding(
                                padding: EdgeInsets.only(left: 48),
                                child:  Text('ipad pro\n+2000' , style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                              )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     ListView.builder(
              //         itemBuilder: (context, index) {
              //           return Card(
              //               child: Container(
              //                   decoration: const BoxDecoration(
              //                       image: DecorationImage(
              //                           image: AssetImage(
              //                               "assets/images/iphone13.png"),
              //                           fit: BoxFit.cover)),
              //                   child: const Text(
              //                     'iphone 13',
              //                     style: TextStyle(fontWeight: FontWeight.bold),
              //                   )),
              //               shape: const RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.all(
              //                   Radius.circular(8.0),
              //                 ),
              //               ));
              //         },
              //       )
              //   ],
              //  ),
              const Text(
                'Vehicle,Industrial tools',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 10,
              ),
              //SizedBox(height: 20,),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          unselectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps), label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Shopping Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Account'),
          ],
          //selectedItemColor: Colors.white,
        ),
      ),
    );
  }
}
