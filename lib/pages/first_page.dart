import 'package:flutter/material.dart';


class First extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: [
          new Container(
            width: double.infinity,
            height: double.infinity,
            child: new Image.asset('assets/images/intro.gif', fit: BoxFit.fill),
            ),
          new Align(
            alignment: Alignment.bottomCenter,
            child: new Container(
              height: 250.0,
              width: 300.0,
              margin: const EdgeInsets.only(bottom: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ),
            ),
        ],
        ),
      );
  }
}
