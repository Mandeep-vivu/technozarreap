import 'package:flutter/material.dart';

import 'MyApp.dart';
import 'loginpage.dart';

void main() {
  runApp(  MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}