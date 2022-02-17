import 'dart:ui';

import 'package:dotchu_uas/main_page.dart';
import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 171, 255, 255),
      body: Center(
          child: TextButton(
        child: Text("DOTCHU"),
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return MainPage();
          }));
        },
      )),
    );
  }
}
