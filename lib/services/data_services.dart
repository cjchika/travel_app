import 'dart:convert';
import 'package:travel_app/model/data_model.dart';
import 'package:http/http.dart' as http;

class DataServices {
  String baseUrl = "http://mark.bsmeiyu.com/api";

  Future<List<DataModel>> getInfo() async {
    var apiUrl = "/getplaces";
    http.Response response = await http.get(Uri.parse(baseUrl+apiUrl));
    try{
      if(response.statusCode==200){
        List<dynamic> list = json.decode(response.body);
        print(list);
        return list.map((data) => DataModel.fromJson(data)).toList();
      }
    }catch(e) {
      print(e);
    }
    return <DataModel>[];
  }
}













