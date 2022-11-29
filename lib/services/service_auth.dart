import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService extends ChangeNotifier {
  final String _baseURL = 'identitytoolkit.googleapis.com';
  final String _firebaseKey = 'AIzaSyCrk-t3t_qFKoy_PJrXmvdxjSQY7ySvwK0';
  final storage = const FlutterSecureStorage();
  //Register
  Future<String?> createUser(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
    };
    final url = Uri.https(
      _baseURL,
      '/v1/accounts:signUp',
      {'key': _firebaseKey},
    );
    final response = await http.post(
      url,
      body: json.encode(authData),
    );
    final Map<String, dynamic> decodeResponse = json.decode(response.body);

    if (decodeResponse.containsKey('idToken')) {
      storage.write(key: 'token', value: decodeResponse['idToken']);
      return null;
    } else {
      return decodeResponse['error']['message'];
    }
  }

  //Login
  Future<String?> login(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
    };
    final url = Uri.https(
      _baseURL,
      '/v1/accounts:signInWithPassword',
      {'key': _firebaseKey},
    );
    final response = await http.post(
      url,
      body: json.encode(authData),
    );
    final Map<String, dynamic> decodeResponse = json.decode(response.body);

    if (decodeResponse.containsKey('idToken')) {
      storage.write(key: 'token', value: decodeResponse['idToken']);
      return null;
    } else {
      return decodeResponse['error']['message'];
    }
  }

  //Logout
  Future logout() async {
    await storage.delete(key: 'token');
    return;
  }

  //verify token
  Future<String> readToken() async {
    return await storage.read(key: 'token') ?? '';
  }
}
