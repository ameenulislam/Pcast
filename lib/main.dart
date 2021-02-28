import 'package:flutter/material.dart';
import 'package:pcast/screens/home/home.dart';
import 'package:pcast/screens/login/login.dart';
import 'package:pcast/screens/search/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: Color(0x9121C)),
      title: 'Pcast',
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        '/home': (context) => Home(),
        '/search': (context) => Search(),
      },
    );
  }
}
