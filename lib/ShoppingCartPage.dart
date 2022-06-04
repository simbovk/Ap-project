import 'package:flutter/material.dart';

class ShoppingCart
 extends StatefulWidget {
   const ShoppingCart
  ({Key? key}) : super(key: key);

  @override
  State <ShoppingCart> createState() =>  ShoppingCartState();
}

class  ShoppingCartState extends State<ShoppingCart>{
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
                      child: TabBar(
                          labelColor: Colors.purple,
                          unselectedLabelColor: Colors.white,
                          tabs: [
                            Tab(child: Text("Posts")),
                            Tab(child: Text("About")),
                          ]),
                    ),
                    SizedBox(
                      height: 400,
                      child: TabBarView(
                        children: <Widget>[
                         
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}