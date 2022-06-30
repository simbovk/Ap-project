import 'dart:io';
import 'dart:ui';

import 'package:digikala/Global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'homePage.dart';

class Vorod extends StatefulWidget {
  const Vorod({Key? key}) : super(key: key);

  @override
  State<Vorod> createState() => _VorodState();
}

class _VorodState extends State<Vorod> {
  String? errorMessage;
  String _log = '';
  final TextEditingController _controllerPhoneNumber =
      TextEditingController(text: "");
  final TextEditingController _controllerPassword =
      TextEditingController(text: "");

  bool showPass = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'LOGIN',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 50),
                    TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                          hintText: 'Phonenumber',
                          iconColor: Color.fromARGB(255, 78, 255, 223)),
                      controller: _controllerPhoneNumber,
                    ),
                    const SizedBox(height: 40),
                    TextField(
                      obscureText: showPass,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                showPass = !showPass;
                              },
                              icon: Icon(Icons.remove_red_eye_outlined)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                          hintText: 'Password',
                          iconColor: Color.fromARGB(255, 78, 175, 255)),
                      controller: _controllerPassword,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                        height: 30,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {
                            sendInfoToServer(
                              _controllerPhoneNumber.text,
                              _controllerPassword.text,
                            );
                          },
                          child: const Text('Login'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        _log,
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/homepage.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ),
    );
  }

  sendInfoToServer(String phoneNumber, String password) async {
    String request = "Login\n$phoneNumber/$password\u0000";

    await Socket.connect("10.0.2.2", 8000).then((ServerSocket) {
      ServerSocket.write(request);
      ServerSocket.flush();
      ServerSocket.listen((response) {
        setState(() {
          _log +=
              (checkedResponse(String.fromCharCodes(response), phoneNumber));
        });
      });
    });
  }

  String checkedResponse(String data, String phoneNumber) {
    switch (data) {
      case '0':
        return 'Please fill in all of the fields\n';
      case '1':
        sendPhoneNumberToServer(phoneNumber);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
        break;
      case '2':
        return 'user not found\n';
    }
    return '';
  }

  sendPhoneNumberToServer(String phoneNumber) async {
    String request = "profile\n$phoneNumber\u0000";

    await Socket.connect("10.0.2.2", 8000).then((ServerSocket) {
      ServerSocket.write(request);
      ServerSocket.flush();
      ServerSocket.listen((response) {
        mainUserName = String.fromCharCodes(response).split("/")[0];
        mainPhoneNumber = String.fromCharCodes(response).split("/")[1];
        mainEmail = String.fromCharCodes(response).split("/")[2];
      });
    });
  }
}
