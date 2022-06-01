// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
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
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/homepage.png"),
                  fit: BoxFit.cover)),
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
                              builder: (context) => const HomePage(),
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
              // Row(
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
