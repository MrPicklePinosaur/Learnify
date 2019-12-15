import 'dart:convert';
import 'package:http/http.dart';

class CommandHandler {
  String url = "http://localhost:8800";
  Future<bool> createUser(String user,String pwd) async {
    Map<String, String> headers = {"Content-type": "application/json"};
    String json = jsonEncode({"user":user,"password":pwd});

    Response response = await post(url, headers: headers, body: json);

    int statusCode = response.statusCode;
    Map<String, dynamic> ret = jsonDecode(response.body);

    return ret['valid'];
  }

  Future<List<String>> getRecommendations(user,pwd) async{
    Map<String, String> headers = {"Content-type": "application/json"};
    String json = jsonEncode({"user":user,"password":pwd});

    Response response = await post(url, headers: headers, body: json);

    int statusCode = response.statusCode;
    Map<String, dynamic> ret = jsonDecode(response.body);

    return ret['valid'];


  }
  Future<bool> authenticateUser(String user,String pwd) async {
    Map<String, String> headers = {"Content-type": "application/json"};
    String json = jsonEncode({"user":user,"password":pwd});

    Response response = await post(url, headers: headers, body: json);

    int statusCode = response.statusCode;
    Map<String, dynamic> ret = jsonDecode(response.body);

    return ret['valid'];



  }
}
