import 'package:flutter/material.dart';
import 'package:technozarre/developer.dart';
import 'package:technozarre/eventpage.dart';
import 'package:technozarre/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Drawert extends StatelessWidget {
  const Drawert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 149, 33, 243),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'TECHNOZARRE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    ' 2k23',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.home_outlined,
                      color: Color.fromRGBO(38, 8, 173, 0.69),
                    ),
                    title: const Text('Home'),
                    onTap: () {
                      // do something when Home is selected
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp()),
                      );
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(
                      Icons.code,
                      color: Color.fromRGBO(38, 8, 173, 0.69),
                    ),
                    title: const Text('Developer'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DeveloperPage()),
                      );
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(
                      Icons.code,
                      color: Color.fromRGBO(38, 8, 173, 0.69),
                    ),
                    title: const Text('Developer'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DeveloperPage()),
                      );
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(
                      Icons.exit_to_app,
                      color: Color.fromRGBO(38, 8, 173, 0.69),
                    ),
                    title: const Text('Logout'),
                    onTap: () async {
                      // do something when Logout is selected
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.setBool('isLoggedIn', false);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
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
