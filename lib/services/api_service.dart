import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://688c6baccd9d22dda5cd0d98.mockapi.io/login';

  Future<List<dynamic>> fetchUsers() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load users');
    }
  }

  Future<List<dynamic>> getSales(String userID) async {
    final users = await fetchUsers();
    // Return a list with just the logged-in user's sale info
    return users.where((u) => u['id'] == userID).toList();
  }

  Future<Map<String, dynamic>> getProfile(String userID) async {
    final users = await fetchUsers();
    return users.firstWhere((u) => u['id'] == userID);
  }
}
