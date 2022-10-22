import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/user_model.dart';
class ServiceUser {
  static Future <List<UserModel>> getUser() async {
    Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    dynamic response = await http.get(url);
    return (jsonDecode(response.body) as List)
        .map((e) => UserModel.fromJson(e)).toList();
  }
}
