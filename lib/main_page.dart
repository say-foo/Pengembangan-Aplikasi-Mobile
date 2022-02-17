import 'package:dotchu_uas/second_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("img/dotchu.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: SizedBox(
          height: 50.0,
          width: 100.0,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 81, 146, 177),
              child: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              },
            ),
          ),
        ),
      ),
    );
  }
}
