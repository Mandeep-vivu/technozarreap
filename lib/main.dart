import 'package:flutter/material.dart';
import 'package:technozarre/eventpage.dart';
import 'loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() {
  runApp(  const MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'My App',
      home: FutureBuilder<bool>(
        future: isLoggedIn(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!) {
              return const MyApp();
            } else {
              return const LoginPage();
            }
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
  Future<bool> isLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String authToken = prefs.getString('auth_token') ?? '';
    return authToken.isNotEmpty;
  }
}