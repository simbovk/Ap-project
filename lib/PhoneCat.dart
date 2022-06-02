import 'package:flutter/material.dart';

class Phone extends StatelessWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // decoration: const BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage("assets/images/homepage.png"),
            //         fit: BoxFit.cover)),
            height: MediaQuery.of(context).size.height + 100,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Mobile',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6), fontSize: 20),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        '1 product',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6), fontSize: 16),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/iphone13.png"),
                                fit: BoxFit.fill),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                          height: 250,
                          width: 150,
                        ),
                      ),
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 10 , left: 10 , bottom: 35),
                            child: Text(
                              'Apple iPhone 13 Pro (128GB, Sierra\n Blue) [Locked] + Carrier Subscription...',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 100 , right: 190),
                            child: Text(
                              r'Price: &999.00',
                              style: TextStyle(fontStyle: FontStyle.italic),textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
