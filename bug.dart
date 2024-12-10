```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! Parse the JSON response.
      final jsonData = jsonDecode(response.body);
      // Use the jsonData
    } else {
      // Handle the error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any other exceptions
    print('Error: $e');
    //Consider rethrowing the exception to handle it at higher levels
    rethrow; 
  }
}
```