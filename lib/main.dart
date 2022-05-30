// ignore_for_file: prefer_const_constructors

import 'package:digikala/voorood.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   shadowColor: Color.fromARGB(255, 19, 234, 249),
      //   centerTitle: true,
      //   title: const Text(
      //     "Create Account",
      //     style: TextStyle(
      //       color: Color.fromARGB(255, 19, 234, 249),
      //       fontWeight: FontWeight.w500,
      //       fontFamily: "Roboto",
      //       fontStyle:  FontStyle.normal,
      //       fontSize: 19.0
      //       ),
      //   ),
      // ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/login.PNG"),
                  fit: BoxFit.cover)),
          padding: EdgeInsets.only(right: 30, left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Create Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Firstname',
                    iconColor: Color.fromARGB(255, 78, 175, 255)),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Lastname',
                    iconColor: Color.fromARGB(255, 78, 175, 255)),
              ),
              SizedBox(height: 40),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    iconColor: Color.fromARGB(255, 78, 175, 255)),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Phonenumber',
                    iconColor: Color.fromARGB(255, 78, 175, 255)),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'email',
                    iconColor: Color.fromARGB(255, 78, 175, 255)),
              ),
              SizedBox(height: 40),
              ElevatedButton(onPressed: () {}, child: Text('Sign in')),
              SizedBox(
                height: 30,
              ),
              TextButton(
                child: Text('already have an account?'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Vorod(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
