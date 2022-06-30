import 'dart:io';
import 'dart:ui';
import 'package:digikala/Global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String? emailErrorMessage;
  String _log = '';
  final TextEditingController _controllerFirstName =
      TextEditingController(text: "");

  final TextEditingController _controllerLastName =
      TextEditingController(text: "");

  final TextEditingController _controllerPhoneNumber =
      TextEditingController(text: "");

  final TextEditingController _controllerEmail =
      TextEditingController(text: "");
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
                      'Edit Profile',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 50),
                    TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                          hintText: 'firstname',
                          iconColor: Color.fromARGB(255, 78, 255, 223)),
                      controller: _controllerFirstName,
                    ),
                    const SizedBox(height: 40),
                    TextField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                          hintText: 'lastname',
                          iconColor: Color.fromARGB(255, 78, 175, 255)),
                      controller: _controllerLastName,
                    ),
                    const SizedBox(height: 40),
                    TextField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                          hintText: 'phonenumber',
                          iconColor: Color.fromARGB(255, 78, 175, 255)),
                      controller: _controllerPhoneNumber,
                    ),
                    const SizedBox(height: 40),
                    TextField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                          hintText: 'email',
                          iconColor: Color.fromARGB(255, 78, 175, 255)),
                      controller: _controllerEmail,
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
                                _controllerFirstName.text,
                                _controllerLastName.text,
                                _controllerPhoneNumber.text,
                                _controllerEmail.text);
                          },
                          child: const Text('Submit'),
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

  sendInfoToServer(String firstName, String lastName, String phoneNumber,
      String email) async {
    String request =
        "EditProfile\n$firstName/$lastName/$phoneNumber/$email\u0000";
    await Socket.connect("10.0.2.2", 8000).then((ServerSocket) {
      ServerSocket.write(request);
      ServerSocket.flush();
      ServerSocket.listen((response) {
        setState(() {
          _log = (checkedResponse(String.fromCharCodes(response), firstName,
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
        return 'Changed Successfully';
      case '2':
        return 'User Not Found';
    }
    return '';
  }

  checkEmail() {
    if (_controllerEmail.text.contains('@gmail.com'))
      return null;
    else
      return 'not valid';
  }
}
