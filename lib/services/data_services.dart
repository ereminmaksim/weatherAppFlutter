import 'dart:convert';

import 'package:flutter_cubit/model/data_model.dart';
import 'package:http/http.dart' as http;

class DataServices {
  String baseUrl = "http://mark.bslmeiyu.com/api/getplaces";

  Future<List<DataModel>> getInfo() async {
    var apiUrl = "/getplaces";
    http.Response res = await http.get(Uri.parse(baseUrl));

    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);

        return list.map((item) => DataModel.fromJson(item)).toList();
      } else {
        return <DataModel>[];
      }
    } catch (e) {
      print("Произошла ошибка при получении данных, getInfo: $e");
      return <DataModel>[];
    }
  }
}
