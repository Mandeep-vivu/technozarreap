import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

// Define the API endpoint URL
const String apiUrl = 'http://210.212.116.123:9090/registrations/new';

Future<void> sendRegistrationData(
    String name,
    String mobile,
    String email,
    List<String> addedToCartTitles,
    String college,
    String gender,
    int courseYear,
    String city, {
      String? paymentType,
      String? transactionId,
      String? paymentScreenshotUrl,
    }) async {
  final logger = Logger();
  try {
    // Encode the data as JSON
    final data = jsonEncode({
      'name': name,
      'phone': mobile,
      'email_id': email,
      'events': addedToCartTitles,
      'College': college,
      'gender': gender,
      'year': courseYear,
      'city': city,
      'is_paid': paymentType == 'online',
      'transaction_id': transactionId,
      'referral': paymentScreenshotUrl,
    });
    print(data);
    print(paymentType);

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
