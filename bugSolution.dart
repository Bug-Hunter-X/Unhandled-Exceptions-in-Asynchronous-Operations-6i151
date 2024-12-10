```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      print('Data fetched successfully: $jsonData');
    } else {
      // Handle specific HTTP error
      throw Exception('HTTP error! Status code: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    //Handle JSON decoding error
    print('JSON format error: $e');
    rethrow;
  } catch (e) {
    // Handle other exceptions
    print('An error occurred: $e');
    rethrow; //Re-throw the exception to be handled higher up the call stack
  }
}

void main() async {
  try{
    await fetchData();
  } catch(e) {
    print("An error occurred in main: $e");
  }
}
```