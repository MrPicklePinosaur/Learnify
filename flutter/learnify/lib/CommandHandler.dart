import 'dart:convert';
import 'package:http/http.dart';

class CommandHandler {
  String url = "http://localhost:8800";
  Future<bool> createUser(Map<String, dynamic> params) async {
    Map<String, String> headers = {"Content-type": "application/json"};
    String json = '{"title": "Hello", "body": "body text", "userId": 1}';
    Response response = await post(url, headers: headers, body: json);

    int statusCode = response.statusCode;
    Map<String, dynamic> ret = jsonDecode(response.body);

    return ret['valid'];
  }

  String getRecommendations() {}
  String authenticateUser() {}
}
