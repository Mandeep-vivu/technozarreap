import 'package:flutter/material.dart';

import 'eventpage.dart';
import 'loginpage.dart';

void main() {
  runApp(  MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}