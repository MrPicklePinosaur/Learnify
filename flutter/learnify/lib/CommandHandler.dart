import 'dart:convert';
import 'package:http/http.dart';

class CommandHandler {
  static String accessToken;
  static String refreshToken;
  String ip = "http://172.17.51.223:8000";
  static CommandHandler ref;

  CommandHandler(){
    ref=this;
  }

  Future<bool> createUser(String user,String pwd,String experience,String language, String commitment,List<String> interests,String depth) async {
    Map<String, String> headers = {"Content-type": "application/json"};
    String json = jsonEncode({"user":user,"password":pwd,"experience":experience,"languages":languages,
      "timeCommitment":commitment,"interests":interests,"depth":depth});


    Response response = await post(ip+"/profile/create_profile", headers: headers, body: json);

    int statusCode = response.statusCode;
    Map<String, dynamic> ret = jsonDecode(response.body);

    return ret['valid'];
  }

  Future<List<String>> getRecommendations(user,pwd) async{
    Map<String, String> headers = {"Content-type": "application/json"};
    String json = jsonEncode({"user":user,"password":pwd});

    Response response = await post(ip, headers: headers, body: json);

    int statusCode = response.statusCode;
    Map<String, dynamic> ret = jsonDecode(response.body);

    return ret['valid'];


  }
  Future<bool> authenticateUser(String user,String pwd) async {
    print("rr");
    Map<String, String> headers = {"Content-type": "application/x-www-form-urlencoded"};
    String json = "username="+user+"&password="+pwd;
    print(json);
    Response response = await post(ip+"/api/token/", headers: headers, body: json);

    if (response.statusCode == 200) {
      Map<String, dynamic> ret = jsonDecode(response.body);
      if(ret.containsKey("detail")){
        return false;
      }
      accessToken=ret['access'];
      refreshToken=ret['refresh'];

      return true;
    } else {
      print(response.statusCode);
      throw "Can't get posts.";
    }
  }
  Future<Map<String,dynamic>> getStats(String user,String pwd) async {








  }
}
