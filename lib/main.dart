
import 'package:digikala/homePage.dart';
import 'package:digikala/voorood.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/login.png"),
                  fit: BoxFit.cover)),
          padding: const EdgeInsets.only(right: 30, left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Create Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                height: 50,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Firstname',
                    iconColor: Color.fromARGB(255, 78, 175, 255)),
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Lastname',
                    iconColor: Color.fromARGB(255, 78, 175, 255)),
              ),
              const SizedBox(height: 40),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    iconColor: Color.fromARGB(255, 78, 175, 255)),
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Phonenumber',
                    iconColor: Color.fromARGB(255, 78, 175, 255)),
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'email',
                    iconColor: Color.fromARGB(255, 78, 175, 255)),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 30,
                width: 100,
              child: ElevatedButton(onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
              }, child: const Text('Sign in'),style: ButtonStyle(
                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                       RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: const BorderSide(color: Color.fromARGB(255, 54, 200, 244))
                    )
                 )
                ),
               ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                child: const Text('already have an account?'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Vorod(),
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
