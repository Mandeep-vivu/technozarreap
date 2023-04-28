import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'loginpage.dart';

// Define the API endpoint URL
const String apiUrl = 'https://technozarre.titsbhiwani.ac.in/api/registrations/update-events';

Future<void> sendRegistrationData(List<String> addedToCartTitles, BuildContext context) async {
  try {
    // Encode the data as JSON
    final data = jsonEncode({
      'email_id' : User.currentUser?.emailId,
      'password': User.currentUser?.password,
      'events': addedToCartTitles,
    });

    // Send the HTTP POST request to the server
    final response = await http.post(
      Uri.parse(apiUrl),
      body: data,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    // Check if the server responded with a success status code
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: const [
              Icon(
                Icons.check_circle,
                color: Colors.white,
              ),
              SizedBox(width: 8),
              Text(
                'Registration data sent successfully!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.green,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: [
              const Icon(
                Icons.error,
                color: Colors.white,
              ),
              const SizedBox(width: 8),
              Text(
                'Failed to send registration data! Response status code: ${response.statusCode}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
    }
  } catch (error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(
              Icons.error,
              color: Colors.white,
            ),
            const SizedBox(width: 8),
            Text(
              'Error sending registration data: $error',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
