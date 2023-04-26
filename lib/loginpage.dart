import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'eventpage.dart';
import 'package:flutter/foundation.dart';
import 'package:rive/rive.dart';
import 'package:shared_preferences/shared_preferences.dart';


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
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data1 = <String, dynamic>{};
    data1['id'] = id;
    data1['name'] = name;
    data1['college'] = college;
    data1['gender'] = gender;
    data1['email_id'] = emailId;
    data1['phone'] = phone;
    data1['year'] = year;
    data1['city'] = city;
    data1['events'] = events;
    data1['password'] = password;
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
  late String animationURL;
  Artboard? _teddyArtboard;
  SMITrigger? successTrigger, failTrigger;
  SMIBool? isHandsUp, isChecking;
  SMINumber? numLook;

  StateMachineController? stateMachineController;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  Future<http.Response?> login(String emailId, String password) async {
    const String apiUrl = "https://technozarre.titsbhiwani.ac.in/api/registrations/login";

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
        User.currentUser = User.fromJson(responseJson);
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('auth_token', User.currentUser?.authToken ?? '');// store the user object
        return loginResponse; // return the response
      } else {
        // Login failed, show an error message
        return null;
      }

    } catch (err) {
      print("Error" + err.toString());
      return null;
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationURL = defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS
        ? 'assets/login.riv'
        : 'animations/login.riv';
    rootBundle.load(animationURL).then(
          (data) {
        final file = RiveFile.import(data);
        final artboard = file.mainArtboard;
        stateMachineController =
            StateMachineController.fromArtboard(artboard, "Login Machine");
        if (stateMachineController != null) {
          artboard.addController(stateMachineController!);

          stateMachineController!.inputs.forEach((e) {
            debugPrint(e.runtimeType.toString());
            debugPrint("name${e.name}End");
          });

          stateMachineController!.inputs.forEach((element) {
            if (element.name == "trigSuccess") {
              successTrigger = element as SMITrigger;
            } else if (element.name == "trigFail") {
              failTrigger = element as SMITrigger;
            } else if (element.name == "isHandsUp") {
              isHandsUp = element as SMIBool;
            } else if (element.name == "isChecking") {
              isChecking = element as SMIBool;
            } else if (element.name == "numLook") {
              numLook = element as SMINumber;
            }
          });
        }

        setState(() => _teddyArtboard = artboard);
      },
    );
  }

  void handsOnTheEyes() {
    isHandsUp?.change(true);
  }

  void lookOnTheTextField() {
    isHandsUp?.change(false);
    isChecking?.change(true);
    numLook?.change(0);
  }

  void moveEyeBalls(val) {
    numLook?.change(val.length.toDouble());
  }

  @override
  Widget build(BuildContext context) {
    Size ScreenSize = MediaQuery.of(context).size;
    return Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    body: Stack(
    children: [
    SingleChildScrollView(
    padding: EdgeInsets.only(
    left: ScreenSize.width * 0.1,
      right: ScreenSize.width * 0.1,
      top: ScreenSize.width * 0.3,
    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (_teddyArtboard != null)
            SizedBox(
              width: ScreenSize.width * 0.8,
              height: ScreenSize.height * 0.3,
              child: Rive(
                artboard: _teddyArtboard!,
                fit: BoxFit.fitWidth,
              ),
            ),

          TextField(
            controller: emailController,
            onTap: lookOnTheTextField,
            onChanged: moveEyeBalls,
            decoration: const InputDecoration(
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            obscureText: true,
            controller: passController,
            onTap: handsOnTheEyes,
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
// Call the login function when the login button is pressed
              isChecking?.change(false);
              isHandsUp?.change(false);
              var response = await login(emailController.text, passController.text);
              if (response != null) {
                successTrigger?.fire();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              } else {
// Show an error message
                failTrigger?.fire();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Invalid email or password',
                      style: TextStyle(fontSize: 18),
                    ),
                    backgroundColor: Colors.red,
                    duration: Duration(seconds: 3),
                    action: SnackBarAction(
                      label: 'OK',
                      textColor: Colors.blue,
                      onPressed: () {},
                    ),
                  ),
                );

              }
            },
            child: const Text('Login'),
          ),
        ],
      ),
    ),
    ],
    ),
    ),
    );
  }
}