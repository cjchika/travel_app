import 'dart:convert';

import 'package:http/http.dart' as http;

class DataServices {
  String baseUrl = "http://mark.bsmeiyu.com/api";

  getInfo() async {
    var apiUrl = "/getplaces";
    http.Response response = await http.get(Uri.parse(baseUrl+apiUrl));
    try{
      if(response.statusCode==200){
        List<dynamic> list = json.decode(response.body);
      }
    }catch(e) {
      print(e);
    }
  }
}













