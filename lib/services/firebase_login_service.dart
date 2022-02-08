import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class FirebaseLoginService extends ChangeNotifier {
  //_ == privado!
  final String _baseUrl = 'https://identitytoolkit.googleapis.com';
  final String _firebaseToken = 'AIzaSyBQRMkIcAxvuE_9rDEHWLA-K44zoSGmObQ';

    Future<String?> login( String email, String password ) async {

    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true
    };

    final url = Uri.https(_baseUrl, '/v1/accounts:signInWithPassword', {
      'key': _firebaseToken
    });

    final resp = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic> decodedResp = json.decode( resp.body );    
  }
}
