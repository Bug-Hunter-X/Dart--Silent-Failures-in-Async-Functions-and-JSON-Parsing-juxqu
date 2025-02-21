```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonResponse = jsonDecode(response.body);
      // Accessing a non-existent key will throw an exception, but it won't be handled properly here
      final data = jsonResponse['nonExistentKey'];
    } else {
      // Handle error responses appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, but this will catch all types of errors, making debugging difficult
    print('Error fetching data: $e');
  } 
}
```