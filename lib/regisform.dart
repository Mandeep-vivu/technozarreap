
import 'package:flutter/material.dart';

import 'loginpage.dart';
import 'submitbt.dart';
class RegistrationForm extends StatefulWidget {
  final Map<String, bool> addedToCartMap;
  final List<String> addedToCartTitles;

  const RegistrationForm({super.key, required this.addedToCartMap, required this.addedToCartTitles});

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<
      FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  String? _name;
  String? _mobile;
  String? _email;
  String? _college;
  String? _city;
  String? _gender;
  int? _courseYear;
  @override
  void initState() {
    super.initState();
    _name = User.currentUser?.name ?? '';
    _mobile = User.currentUser?.phone ?? '';
    _email = User.currentUser?.emailId;
    _college = User.currentUser?.college ?? '';
    _city = User.currentUser?.city ?? '';
    _gender = User.currentUser?.gender ?? '';
    _courseYear = User.currentUser?.year;
  }


  @override
  Widget build(
      BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Navigator.pop(context); // Navigate back to the previous screen
          return false; // Return false to prevent the app from being closed
        },
      child: Scaffold(

      body: Stack(
        children: [
          Container(
            width: double
                .infinity,
            height: double
                .infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/bg.png'),
                fit: BoxFit
                    .cover,

              ),
            ),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 120.0, 16.0, 0.0),

              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .stretch,
                  children: [

                    const SizedBox(height: 16.0),
                    TextFormField(
                      initialValue: _name,
                      enabled: false,
                      decoration:  InputDecoration(
                        labelText: 'Name',
                        labelStyle: const TextStyle(
                          color: Colors.purple,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,

                        ),
                        filled: true,


                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.purple,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),

                      style: const TextStyle(color: Colors.purple),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _name = value!;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      initialValue: _mobile,
                      enabled: false,
                      decoration: InputDecoration(
                        labelText: 'Mobile',
                        labelStyle: const TextStyle(
                          color: Colors.purple,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,

                        ),
                        filled: true,


                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.purple,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),

                      style: const TextStyle(color: Colors.purple),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _mobile= value!;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      initialValue: _email,
                      enabled: false,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          color: Colors.purple,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,

                        ),
                        filled: true,


                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.purple,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),

                      ),
                      style: const TextStyle(color: Colors.purple),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        final RegExp emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
                        if (!emailRegex.hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _email= value!;
                      },
                    ),
                    const SizedBox(height: 16.0),
                  TextFormField(
                    initialValue: _college,
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'College Name',
                      labelStyle: const TextStyle(
                        color: Colors.purple,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,

                      ),
                      filled: true,

                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2.0,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2.0,
                          color: Colors.purple,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2.0,
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2.0,
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: const TextStyle(color: Colors.purple),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your college name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _college = value!;
                    },
                  ),

                  const SizedBox(height: 16.0),
                    TextFormField(
                      initialValue: _city,
                      enabled: false,
                      decoration: InputDecoration(
                        labelText: 'City',
                        labelStyle: const TextStyle(
                          color: Colors.purple,
                          fontSize: 18.0,

                          fontWeight: FontWeight.bold,
                        ),
                        filled: true,


                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.purple,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),

                      style: const TextStyle(color: Colors.purple),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your city';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _city = value!;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      initialValue: _gender,
                      enabled: false,
                      decoration: InputDecoration(
                        labelText: 'Gender',
                        labelStyle: const TextStyle(
                          color: Colors.purple,

                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        filled: true,


                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.purple,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),

                      style: const TextStyle(color: Colors.purple),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your gender';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _gender = value!;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    DropdownButtonFormField<int>(
                      decoration: InputDecoration(
                        labelText: 'Course Year',
                        labelStyle: const TextStyle(
                          color: Colors.purple,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,

                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.purple,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,


                      ),
                      style: const TextStyle(color: Colors.purple),
                      value: _courseYear,

                      onChanged: (value) {
                        setState(() {
                          _courseYear = value!;
                        });
                      },
                      items: [1, 2, 3, 4]
                          .map<DropdownMenuItem<int>>((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text('$value'),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Events you added to register:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    widget.addedToCartTitles.isEmpty
                        ? const Text(
                      'No events added to list.',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                        : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: widget.addedToCartTitles.length,
                      itemBuilder: (context, index) {
                        return Text(
                          widget.addedToCartTitles[index],
                          style: const TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        );
                      },
                    ),


                    const SizedBox(
                        height: 16.0),
                    ElevatedButton(
                      onPressed: () async{
                        if (_formKey
                            .currentState!
                            .validate()) {
                          _formKey
                              .currentState!
                              .save();
                          Map<
                              String,
                              dynamic> data = {
                            'name': User.currentUser?.name ?? _name,
                            'mobile': User.currentUser?.phone ?? _mobile,
                            'email': User.currentUser?.emailId ?? _email,
                            'events': widget.addedToCartTitles,
                            'college': User.currentUser?.college ?? _college,
                            'gender': User.currentUser?.gender ?? _gender,
                            'courseYear': User.currentUser?.year ?? _courseYear,
                            'city': User.currentUser?.city ?? _city,
                          };
                          // call sendRegistrationData with the registration data
                          await sendRegistrationData(widget.addedToCartTitles, context);


                        }
                      },

                      child: Text(
                          'Submit'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}