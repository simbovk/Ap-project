import 'package:flutter/material.dart';

class Vorod extends StatelessWidget {
  const Vorod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Login",
          style: TextStyle(
              fontStyle: FontStyle.normal,
              color: Color.fromRGBO(255, 255, 255, 20)),
        ),
      ),
    );
  }
}
