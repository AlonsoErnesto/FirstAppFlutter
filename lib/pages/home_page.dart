import 'package:flutter/material.dart';
//icos con vacion en la imagen
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/parser.dart';
import 'package:miproyect01/widgets/avatar.dart';
import 'package:flutter/src/cupertino/button.dart';
import 'package:miproyect01/widgets/cronometer.dart';
import '../widgets/circle_Container.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isEnabled = false;
  double _fontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Profile")),
          BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app_rounded), title: Text("Exit"))
        ]),
        // backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          bottom: true,
          child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Avatar(),
                  Text("Bienvenido"),
                  Text("Ernesto Mamani",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  _isEnabled == true
                      ? Cronometer(
                          initTime: 990,
                          fontSize: _fontSize,
                        )
                      : Container(),
                  SizedBox(
                    height: 30,
                  ),
                  CupertinoButton(
                      child: Text("enable : $_isEnabled"),
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          _isEnabled = !_isEnabled;
                        });
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:
                            Container(width: 50, height: 50, color: Colors.red),
                        flex: 2,
                      ),
                      Expanded(
                          child: Container(
                              width: 50, height: 50, color: Colors.blue),
                          flex: 1),
                    ],
                  )
                  //
                  //         color: Colors.green)),
                  // Cronometer(initTime: 90, fontSize: 70),
                  // FlatButton(
                  //   child:Text("UPLOAD"),
                  //   color:Colors.red,
                  //   onPressed:(){
                  //   print("Uploading");
                  // },),
                  // CupertinoButton(child:
                  // Text("Saludame"),
                  // padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  // color:Colors.blue,
                  //   onPressed:(){
                  //   print("Saludame");
                  // },),
                ],
              )),
        ));
  }
}

//Center(
//   child: CircleContainer(
//     //child: Icon(CupertinoIcons.add, size: 50, color: Colors.blue),
//     child: SvgPicture.asset('assets/icons/configuration-gears.svg',
//         width: 40, height: 50, color: Colors.black),
//     width: 100,
//     height: 100,
//   ),
// )
