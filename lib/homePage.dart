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
            child: Column(),
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
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 345, top: 10),
                      child: Text(
                        'Digital Products',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ListView.builder(
                      itemBuilder: (context, index) {
                        return Card(
                            child: Container(
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/iphone13.png"),
                                        fit: BoxFit.cover)),
                                child: const Text(
                                  'iphone 13',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ));
                      },
                    )
                  ],
                ),
                const Text(
                  'Vehicle,Industrial tools',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 10,
                ),
                //SizedBox(height: 20,),
              ],
            ),
          )),
    );
  }
}
