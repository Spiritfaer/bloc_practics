import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../models/user.dart';

class UserProvider {
  final Uri uri = Uri.http('jsonplaceholder.typicode.com', '/users');

  Future<List<User>> loadUserList() async {
    return http.get(uri).then((http.Response responce) {
      if (responce.statusCode != 200) {
        log('statusCode != 200 ${responce.body}', name: 'loadUserList');
        return <User>[];
      } else {
        final List<dynamic> userJson = json.decode(responce.body);
        return userJson.map((json) => User.fromJson(json)).toList();
      }
    }).catchError((error) {
      log('catchError $error', name: 'loadUserList');
      return <User>[];
    });
  }
}
