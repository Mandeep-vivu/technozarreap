import 'dart:convert';
import 'package:http/http.dart' as http;

// Define the API endpoint URL
const String apiUrl = 'https://example.com/api/registration';

Future<void> sendRegistrationData(
    String name, String mobile, String email, List<String> addedToCartTitles) async {
  try {
    // Encode the data as JSON
    final data = jsonEncode({
      'name': name,
      'mobile': mobile,
      'email': email,
      'addedToCartTitles': addedToCartTitles,
    });

    // Send the HTTP POST request to the server
    final response = await http.post(Uri.parse(apiUrl),
        body: data,
        headers: {
          'Content-Type': 'application/json',
        });

    // Check if the server responded with a success status code
    if (response.statusCode == 200) {
      print('Registration data sent successfully!');
    } else {
      print('Failed to send registration data!');
    }
  } catch (error) {
    print('Error sending registration data: $error');
  }
}