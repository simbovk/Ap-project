import 'package:flutter/material.dart';

class Phone extends StatelessWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text('Mobile' , style: TextStyle(color: Colors.black.withOpacity(0.6) , fontSize: 20),textAlign: TextAlign.left,),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text('1 product' , style: TextStyle(color: Colors.black.withOpacity(0.6) , fontSize: 16),textAlign: TextAlign.right,),
            ),
          ],
        ),
      ),
    );
  }
}
