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
      home: Scaffold(
         appBar: AppBar(
            title: const Text('Tabbed AppBar'),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                // Text('Shopping Cart'),
                // Text(data)
              ],
            ),
          ),
          
      ),
    );
  }
}