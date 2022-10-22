import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:inifity_scroll/userModel.dart';

class Provider {
  final _baseUrl = 'http://172.18.0.2:3020';
  final header = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'authoritzation':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiZW1haWwiOiJBbGFubmEuTWFudGVAZ21haWwuY29tIiwibmFtZSI6IldpbGhlbG0iLCJsYXN0bmFtZSI6IkRlbmVzaWsiLCJyb2xlSWQiOjEsImlhdCI6MTY2NjQyMDU3MX0.xCxGLZmiM5j4RioY70C8UkLQFUjqs0867g4RWgwdUYE'
  };

  Future<List<UserModel>> getUserList(int pageKey, int pageSize) async {
    print('pageKey $pageKey');
    print('pageSize $pageSize');
    final response = await http.get(
        Uri.parse('$_baseUrl/clients?page=$pageKey&size=$pageSize'),
        headers: header);
    final data = await json.decode(response.body);
    final List<UserModel> users = [];
    data['responseData']['data'].forEach((user) {
      users.add(UserModel.fromJson(user));
    });
    return users;
  }
}
