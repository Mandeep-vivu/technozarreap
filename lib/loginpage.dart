import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'MyApp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  Future<http.Response?> login(String emailId, String password) async {
    const String apiUrl =
        "http://titsfest.weeb-developerz.xyz:9090/registrations/login";

    try {
      var loginResponse = await http.post(Uri.parse(apiUrl), headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      }, body: jsonEncode(<String, String>{
        "email_id": emailId,
        "password": password,
      }));

      if (loginResponse.statusCode == 200) {
        final String responseString = loginResponse.body;
        var responseJson =
        Map<String, dynamic>.from(json.decode(responseString));
        print(responseJson);
        print(loginResponse.headers);
        print(loginResponse);
        return loginResponse;
      } else {
        final String responseString = loginResponse.body;
        var responseJson =
        Map<String, dynamic>.from(json.decode(responseString));
        print(responseJson);
        print(loginResponse.headers);
        print(loginResponse);
        return null;
      }
    } catch (err) {
      print("Error" + err.toString());
      return null;
    }
  }

  void _loginButtonPressed(BuildContext context) async {
    var response = await login(emailController.text, passController.text);
    if (response != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Login failed! Please try again."),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              TextField(
                controller: passController,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
                obscureText: true,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              ElevatedButton(
                onPressed: () => _loginButtonPressed(context),
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
