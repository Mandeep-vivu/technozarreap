
import 'package:flutter/material.dart';
import 'submitbt.dart';
class RegistrationForm extends StatefulWidget {
  final Map<String, bool> addedToCartMap;
  final List<String> addedToCartTitles;

  RegistrationForm({required this.addedToCartMap, required this.addedToCartTitles});

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<
      FormState>();
  String _name = '';
  String _mobile = '';
  String _email = '';

  @override
  Widget build(
      BuildContext context) {
    return Scaffold(
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
              padding: EdgeInsets.fromLTRB(16.0, 120.0, 16.0, 0.0),

              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .stretch,
                  children: [

                    SizedBox(
                        height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                      ),
                      validator: (
                          value) {
                        if (value ==
                            null ||
                            value
                                .isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      onSaved: (
                          value) {
                        _name =
                        value!;
                      },
                    ),
                    SizedBox(
                        height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Mobile',
                        border: OutlineInputBorder(),
                      ),
                      validator: (
                          value) {
                        if (value ==
                            null ||
                            value
                                .isEmpty) {
                          return 'Please enter your mobile number';
                        }
                        return null;
                      },
                      onSaved: (
                          value) {
                        _mobile =
                        value!;
                      },
                    ),
                    SizedBox(
                        height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      validator: (
                          value) {
                        if (value ==
                            null ||
                            value
                                .isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      onSaved: (
                          value) {
                        _email =
                        value!;
                      },
                    ),
                    SizedBox(
                        height: 16.0),
                    Text(
                      'Added to Cart:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight
                            .bold,
                      ),
                    ),
                    SizedBox(
                        height: 8.0),
                    widget
                        .addedToCartTitles
                        .isEmpty
                        ? Text(
                        'No events added to cart.')
                        : ListView
                        .builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: widget
                          .addedToCartTitles
                          .length,
                      itemBuilder: (
                          context,
                          index) {
                        return Text(
                            widget
                                .addedToCartTitles[index]);
                      },
                    ),
                    SizedBox(
                        height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey
                            .currentState!
                            .validate()) {
                          _formKey
                              .currentState!
                              .save();
                          Map<
                              String,
                              dynamic> data = {
                            'name': _name,
                            'mobile': _mobile,
                            'email': _email,
                            'events': widget
                                .addedToCartTitles,
                          };
                          // call sendRegistrationData with the registration data
                          sendRegistrationData(
                              _name,
                              _mobile,
                              _email,
                              widget
                                  .addedToCartTitles);
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
    );
  }
}