import 'package:flutter/material.dart';
import 'package:technozarre/MyApp.dart';
import 'package:http/http.dart' as http;


class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
  final Map<int, bool> addedToCartMap;
  RegistrationForm({required this.addedToCartMap});

}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _collegeIdController = TextEditingController();
  final TextEditingController _collegeNameController = TextEditingController();
  final TextEditingController _mobileNoController = TextEditingController();
  final TextEditingController _gmailController = TextEditingController();
  final TextEditingController _referralCodeController = TextEditingController();
  String _eventName = "";



  @override
  void initState() {
    super.initState();
    _eventName = widget.addedToCartMap.keys.firstWhere(
          (key) => widget.addedToCartMap[key] == true,
      orElse: () => -1,
    ).toString();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _collegeIdController,
                  decoration: InputDecoration(
                    labelText: 'College ID',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your college ID';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _collegeNameController,
                  decoration: InputDecoration(
                    labelText: 'College Name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your college name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _mobileNoController,
                  decoration: InputDecoration(
                    labelText: 'Mobile No.',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your mobile number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _gmailController,
                  decoration: InputDecoration(
                    labelText: 'Gmail',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your gmail';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _referralCodeController,
                  decoration: InputDecoration(
                    labelText: 'Referral Code (optional)',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Event: $_eventName',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // submit the form
                      _submitForm();
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submitForm() async{
    // TODO: send registration data to server or store locally
    // clear the form
    final Map<String, dynamic> registrationData = {
      'name': _nameController.text,
      'collegeId': _collegeIdController.text,
      'collegeName': _collegeNameController.text,
      'mobileNo': _mobileNoController.text,
      'email': _gmailController.text,
      'referralCode': _referralCodeController.text,
      'eventName': _eventName,
    };

    // Send a POST request to the server
    final response = await http.post(Uri.parse('http://your-server.com/registration'),
        body: registrationData
    );

    // Check the response status code
    if (response.statusCode == 200) {
      // Registration successful
    } else {
      // Registration failed
    }

    _nameController.clear();
    _collegeIdController.clear();
    _collegeNameController.clear();
    _mobileNoController.clear();
    _gmailController.clear();
    _referralCodeController.clear();
    setState(() {
      // update the selected event to the next one in the map
      int currentEventIndex = widget.addedToCartMap.keys.toList().indexOf(
          int.parse(_eventName));
      if (currentEventIndex < widget.addedToCartMap.length - 1) {
        _eventName = widget.addedToCartMap.keys.toList()[currentEventIndex + 1]
            .toString();
      } else {
        _eventName = "";
      }
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Registration submitted successfully!'),
      ),
    );
  }
}