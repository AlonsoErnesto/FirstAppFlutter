import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'FirstApp',
          textAlign: TextAlign.center,
        )),
        //body: Center(child: Text('CENTER',style: TextStyle(color: Colors.red),)));
        body: Center(
            child: Text('AppFirst',
                style: TextStyle(
                    color: Color(0xff0000ff),
                    fontSize: 25,
                    letterSpacing: 2.5,
                    shadows: [
                      Shadow(
                          color: Colors.black,
                          blurRadius: 3,
                          offset: Offset(1, 10))
                    ],
                    fontWeight: FontWeight.w300))));
  }
}
