
import 'dart:convert';

import 'package:consumindo_api/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  Future<List<UserModel>> fetchAllUsers() async {
    final response = await http.get(Uri.parse('https://60e46b305bcbca001749e996.mockapi.io/users'));
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap.map<UserModel>((e) => UserModel.fromMap(e)).toList();
  }
  
}