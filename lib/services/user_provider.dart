import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../models/user.dart';

class UserProvider {
  final Uri uri = Uri(host: 'jsonplaceholder.typicode.com', path: '/users');

  Future<List<User>> loadUserList() async {
    final http.Response responce = await http.get(uri);
    if (responce.statusCode != 200) {
      log('loadUserList statusCode != 200 ${responce.body}');
      return <User>[];
    } else {
      final List<dynamic> userJson = json.decode(responce.body);
      print(userJson);
      return userJson.map((json) => User.fromJson(json)).toList();
    }
  }
}
