import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return MaterialApp(
      home: HomePage(),
      //la etiqueta del debugh
      debugShowCheckedModeBanner: false,
    );
  }
}
