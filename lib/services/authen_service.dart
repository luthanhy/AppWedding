import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:appwedding/models/User/user.dart';
class AuthController with ChangeNotifier {
  final Dio _dio = Dio();

  final String apiUrl = 'https://ce97-42-115-94-145.ngrok-free.app/abcd-4b368/us-central1';

  // Function đăng nhập (Login)
  Future<String> login(String username, String password) async {
    try {
      final response = await _dio.post('https://ce97-42-115-94-145.ngrok-free.app/abcd-4b368/us-central1/LoginService', data: jsonEncode({
        'email': username,
        'password': password,
      }),);
      print(response.statusCode);
      if (response.statusCode == 200) {
        final token = response.data['message'] ?? '';
        if (token.isNotEmpty) {
            if(token == "Login successful"){
              return "Login successful";
            }
            return token;
        } else {
          throw Exception('Invalid response data');
        }
      } else if (response.statusCode == 401) {
        throw Exception('Invalid credentials');
      } else {
        throw Exception('Failed to log in');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  // Function đăng xuất (Logout)
  Future<void> logout() async {
    try {
      final response = await _dio.post('https://ce97-42-115-94-145.ngrok-free.app/abcd-4b368/us-central1/logout');

      if (response.statusCode != 200) {
        throw Exception('Failed to log out');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  // Function đăng ký (SignUp)
  Future<String> signUp(String username, String email, String password) async {
    try {
      final response = await _dio.post('https://ce97-42-115-94-145.ngrok-free.app/abcd-4b368/us-central1/RegisterAcount', data: jsonEncode({
        'username':username,
        'email': email,
        'password': password,
      }),);
      print(response.statusCode);

      if(response.statusCode == 200){
        if(response.data['success'] == 'true'){
          return response.data['message'];
        }
      }
      return response.data['message'];
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
  Future<User> getUserByEmail(String email) async {
      try{
        final response = await _dio.post('https://ce97-42-115-94-145.ngrok-free.app/abcd-4b368/us-central1/GetUserInfoByEmail', data: jsonEncode({
          'email': email,
        }),);
        if(response.data['success'] == true){
          return User(username:  response.data['data']['displayName'], email: response.data['data']['email']);
        }
        return User(username: '', email: '');
      }catch (e) {
        throw Exception('Error: $e');
      }
  }
}
