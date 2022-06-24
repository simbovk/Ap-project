import 'dart:ui';
import 'package:flutter/material.dart';
import 'homePage.dart';
import 'package:image_picker/image_picker.dart';
class YourProduct extends StatefulWidget {
  const YourProduct({Key? key}) : super(key: key);

  @override
  State<YourProduct> createState() => YourProductState();
}

class YourProductState extends State<YourProduct> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'My Product',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          actions: <Widget>[
            IconButton(
                icon: const Icon(
                  Icons.category,
                  color: Colors.white,
                ),
                onPressed: () {})
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // decoration: const BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage("assets/images/Homepage.png"),
            //         fit: BoxFit.cover)),
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 5),
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
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Product Image',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                      )),
                  // ElevatedButton(

                  //   onPressed: onPressed,
                  //    child: ,
                  // )
                 
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black), color: Colors.black),
          child: BottomNavigationBar(
            fixedColor: Colors.black,
            unselectedItemColor: Colors.white,
            items: <BottomNavigationBarItem>[
               BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.home , color: Colors.black,),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                ),
                label: 'Home',
                
              ),
              BottomNavigationBarItem(
                  icon: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const YourProduct(),
                      //   ),
                      // );
                    },
                    child: const Text('Submit Product'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.black))),
                    ),
                  ),
                  label: 'Submit'),
            ],
          ),
        ),
      ),
    );
  }
}
