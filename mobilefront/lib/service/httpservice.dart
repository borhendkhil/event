import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

enum UserRole { client, seller }

class Authservice {
  final String baseUrl = "http://10.0.2.2:8080";

  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/user/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      // Successfully logged in, parse the response
      Map<String, dynamic> data = jsonDecode(response.body);
      return {'success': true, 'token': data['token']};
    } else {
      // Login failed, return error message
      return {'success': false, 'message': 'Login failed'};
    }
  }

  Future<Map<String, dynamic>> signUp({
    required String email,
    required String username,
    required String password,
    required UserRole role,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/user/create'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': email,
          'name': username,
          'password': password,
          'role': role.toString().split('.').last, // Convert enum to string
        }),
      );

      if (response.statusCode == 200) {
        // Successfully registered, parse the response
        Map<String, dynamic> data = jsonDecode(response.body);
        return {'success': true, 'message': 'Registration successful'};
      } else {
        // Registration failed, return error message
        Map<String, dynamic> error = jsonDecode(response.body);
        return {
          'success': false,
          'message': error['message'] ?? 'Unknown error'
        };
      }
    } catch (e) {
      // Handle exceptions such as FormatException
      return {'success': false, 'message': 'Error occurred: $e'};
    }
  }
}
