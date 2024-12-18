```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('API request failed with status: ${response.statusCode}');
    }
  } on http.ClientException catch (e) {
    // Handle network errors
    print('Network error: $e');
    return null; // or show a user-friendly network error message
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON decoding error: $e');
    return null; // or show a user-friendly error message
  } catch (e) {
    // Handle other exceptions
    print('An unexpected error occurred: $e');
    return null; // or show a generic error message to the user
  }
}
```