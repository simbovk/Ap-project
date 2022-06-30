import 'dart:io';
import 'dart:ui';
import 'package:digikala/Global.dart';
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

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showPass = false;
  String? passErrorMessage;
  String? emailErrorMessage;
  String _log = '';
  bool? goNextPage;
  final TextEditingController _controllerFirstName =
      TextEditingController(text: "");

  final TextEditingController _controllerLastName =
      TextEditingController(text: "");

  final TextEditingController _controllerPhoneNumber =
      TextEditingController(text: "");

  final TextEditingController _controllerEmail =
      TextEditingController(text: "");

  final TextEditingController _controllerPassword =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/homepage.png"),
                    fit: BoxFit.cover)),
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Create Account',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                          hintText: 'Firstname',
                          iconColor: Colors.black),
                      controller: _controllerFirstName,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                          hintText: 'Lastname',
                          iconColor: Colors.black),
                      controller: _controllerLastName,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      onChanged: (value) {
                        setState(
                          () {
                            passErrorMessage = checkPass();
                          },
                        );
                      },
                      obscureText: showPass,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                showPass = !showPass;
                              },
                              icon: Icon(Icons.remove_red_eye_outlined)),
                          errorText: passErrorMessage,
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                          hintText: 'Password',
                          iconColor: Colors.black),
                      controller: _controllerPassword,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                          hintText: 'Phonenumber',
                          iconColor: Colors.black),
                      controller: _controllerPhoneNumber,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      onChanged: (value) {
                        setState(
                          () {
                            emailErrorMessage = checkEmail();
                          },
                        );
                      },
                      decoration: InputDecoration(
                          errorText: emailErrorMessage,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                          hintText: 'email',
                          iconColor: Colors.black),
                      controller: _controllerEmail,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        sendInfoToServer(
                            _controllerFirstName.text,
                            _controllerLastName.text,
                            _controllerPassword.text,
                            _controllerPhoneNumber.text,
                            _controllerEmail.text);
                      },
                      child: const Text('Sign in'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side:
                                        const BorderSide(color: Colors.black))),
                      ),
                    ),
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
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      _log,
                      style: const TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  sendInfoToServer(String firstName, String lastName, String password,
      String phoneNumber, String email) async {
    String request =
        "Signup\n$firstName/$lastName/$password/$phoneNumber/$email\u0000";

    await Socket.connect("10.0.2.2", 8000).then((ServerSocket) {
      ServerSocket.write(request);
      ServerSocket.flush();
      ServerSocket.listen((response) {
        setState(() {
          _log += (checkedResponse(String.fromCharCodes(response), firstName,
              lastName, phoneNumber, email));
        });
      });
    });
  }

  String checkedResponse(String data, String firstName, String lastName,
      String phoneNumber, String email) {
    switch (data) {
      case '0':
        return 'Please fill in all of the fields\n';
      case '1':
        String userName = firstName + ' ' + lastName;
        mainPhoneNumber = phoneNumber;
        mainEmail = email;
        mainUserName = userName;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
        break;
    }
    return '';
  }

  checkPass() {
    if (_controllerPassword.text.length < 8) {
      return 'not valid';
    } else {
      return null;
    }
  }

  checkPassSmallElement() {
    for (int i = 0; i < _controllerPassword.text.split('').length; i++) {
      if (!(_controllerPassword.text.split('')[i] == ['a', 'z'])) {
        return false;
      }
      return true;
    }
  }

  checkEmail() {
    if (_controllerEmail.text.contains('@gmail.com'))
      return null;
    else
      return 'not valid';
  }
}
