import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

import 'loginpage.dart';

// Define the API endpoint URL
const String apiUrl = 'http://titsfest.weeb-developerz.xyz:9090/registrations/update-events';

Future<void> sendRegistrationData(

    List<String> addedToCartTitles,

    ) async {
  final logger = Logger();
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
      logger.i('Registration data sent successfully!');
    } else {
      logger.e(
          'Failed to send registration data! Response status code: ${response.statusCode}');
    }
  } catch (error) {
    logger.e('Error sending registration data: $error');
  }
}
