
import 'package:flutter/material.dart';
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

  String _name = '';
  String _mobile = '';
  String _email = '';
  String _college = '';
  String _city = '';
  String _gender = '';
  int _courseYear = 1;
  bool _payOnline = false;
  String _transactionId = '';
  String _paymentScreenshotUrl = '';



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
              padding: const EdgeInsets.fromLTRB(16.0, 120.0, 16.0, 0.0),

              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .stretch,
                  children: [

                    const SizedBox(height: 16.0),
                    TextFormField(
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
                          return 'Please enter your mobile number';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _mobile = value!;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(

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
                        _email = value!;
                      },
                    ),
                    const SizedBox(height: 16.0),
                  TextFormField(
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

                    Text('Payment Method:'),
                    Row(
                      children: [
                        Checkbox(
                          value: _payOnline,
                          onChanged: (value) {
                            setState(() {
                              _payOnline = value!;
                            });
                          },
                        ),
                        Text('Pay online'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: !_payOnline,
                          onChanged: (value) {
                            setState(() {
                              _payOnline = !value!;
                            });
                          },
                        ),
                        Text('Pay on counter'),
                      ],
                    ),
                    if (_payOnline) ...[
                      Text('Scan the QR code to pay:'),
                      Image.asset('assets/posters/4.png'),
                      Text('Transaction ID:'),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter transaction ID';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _transactionId = value!;
                        },
                      ),
                      Text('Payment Screenshot:'),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter payment screenshot URL';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _paymentScreenshotUrl = value!;
                        },
                      ),
                    ],

                    const SizedBox(
                        height: 16.0),
                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Map<String, dynamic> data = {
                            'name': _name,
                            'mobile': _mobile,
                            'email': _email,
                            'events': widget.addedToCartTitles,
                            'College Name': _college,
                            'gender': _gender,
                            'Course Year': _courseYear,
                            'city': _city,
                          };
                          if (_payOnline) {
                            // handle online payment
                            if (_transactionId.isNotEmpty && _paymentScreenshotUrl.isNotEmpty) {
                              // call sendRegistrationData with payment data
                              await sendRegistrationData(
                                _name,
                                _mobile,
                                _email,
                                widget.addedToCartTitles,
                                _college,
                                _gender,
                                _courseYear,
                                _city,
                                paymentType: 'online',
                                transactionId: _transactionId,
                                paymentScreenshotUrl: _paymentScreenshotUrl,
                              );
                            } else {
                              // show error message
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Please enter transaction ID and payment screenshot URL')),
                              );
                              return;
                            }
                          } else {
                            // handle on-counter payment
                            // call sendRegistrationData with payment data
                            await sendRegistrationData(
                              _name,
                              _mobile,
                              _email,
                              widget.addedToCartTitles,
                              _college,
                              _gender,
                              _courseYear,
                              _city,
                              paymentType: 'counter',
                            );
                          }
                          try {
                            // Show success message using SnackBar
                            _scaffoldKey.currentState!.showSnackBar(const SnackBar(
                              content: Text('Registration successful.'),
                              duration: Duration(seconds: 3),
                            ));
                            // Clear the form fields
                            _formKey.currentState!.reset();
                          } catch (e) {
                            // Show error message using SnackBar
                            _scaffoldKey.currentState!.showSnackBar(const SnackBar(
                              content: Text('Error: Registration failed.'),
                              duration: Duration(seconds: 3),
                            ));
                          }
                        }
                      },
                      child: const Text('Submit'),
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