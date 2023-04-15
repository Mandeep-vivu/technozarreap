import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'MyApp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class User {
  static User? currentUser;

  String? id;
  String? name;
  String? college;
  String? gender;
  String? emailId;
  String? phone;
  int? year;
  String? city;
  List<String>? events;
  String? password;


  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    college = json['college'];
    gender = json['gender'];
    emailId = json['email_id'];
    phone = json['phone'];
    year = json['year'];
    city = json['city'];
    events = List<String>.from(json['events'] ?? []);
    password=json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data1 = Map<String, dynamic>();
    data1['id'] = id;
    data1['name'] = name;
    data1['college'] = college;
    data1['gender'] = gender;
    data1['email_id'] = emailId;
    data1['phone'] = phone;
    data1['year'] = year;
    data1['city'] = city;
    data1['events'] = events;
    data1['password']=password;
    return data1;
  }
  void addEvents(List<String> newEvents) {
    if (events == null) {
      events = [];
    }
    events!.addAll(newEvents);
  }
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
        var responseJson = Map<String, dynamic>.from(json.decode(responseString));
        User.currentUser = User.fromJson(responseJson); // store the user object

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp(
          )),
        );
      } else {
        final String responseString = loginResponse.body;
        var responseJson = Map<String, dynamic>.from(json.decode(responseString));
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

  Widget _loginButtonPressed(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: login(emailController.text, passController.text),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          } else if (snapshot.hasError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Login failed! Please try again."),
            ));
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size ScreenSize = MediaQuery.of(context).size;
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login.jpeg'), fit: BoxFit.contain)),
        child:
     Scaffold(
       backgroundColor: Colors.transparent,
      body:Stack(
          children: [
      Container(
      padding: EdgeInsets.only(
      left: ScreenSize.width * 0.03, top: ScreenSize.height * 0.23),
       child: const Text(
         'Welcome Back! \n TITS Bhiwani',
         style: TextStyle(
             color: Color.fromARGB(255, 53, 51, 51), fontSize: 35),
       ),
     ),
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
              left: ScreenSize.width * 0.03,
              top: ScreenSize.height * 0.55,
              right: ScreenSize.width * 0.03),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                  CircleAvatar(
                    radius: 30,

                    child: IconButton(
                      color: Colors.white,
                      onPressed: () async {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  _loginButtonPressed(context),));
                      },
                      icon: const Icon(Icons.arrow_forward),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ]))
    )
    ;
  }
}
