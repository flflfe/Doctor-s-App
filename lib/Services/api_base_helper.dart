import 'dart:convert';

import 'package:doctor_app/Utilities/api_constants.dart';
import 'package:doctor_app/Utilities/color_constants.dart';
import 'package:doctor_app/Utilities/toast_message.dart';
import 'package:http/http.dart' as http;
class ApiBaseHelper{
  Future<dynamic> getRequest(String endPoint, List<int> statusCodes, {var queryParam}) async {
    final http.Response response = await http.get(
      Uri.parse(API_BASE_URL + endPoint),
      headers: queryParam
    );
    print("--------------------------------------------------------");
    print(API_BASE_URL + endPoint);
    print(response.statusCode);
    print(response.body.toString());
    print("--------------------------------------------------------");
    if (statusCodes.contains(response.statusCode)){
      var data = json.decode(response.body);
      return data;
    }
    else{
      flutterToast("Something went wrong", DARK_BLUE);
    }
  }

  Future<dynamic> postRequest(String endPoint, List<int> statusCodes, {var queryParam, var headers}) async {
    var _headers = {
      "Content-Type" : "application/json"
    };
    if(headers != null) _headers.addAll(headers);
    final http.Response response = await http.post(
      Uri.parse(API_BASE_URL + endPoint),
      body: json.encode(queryParam),
      headers: _headers
    );
    print("--------------------------------------------------------");
    print(API_BASE_URL + endPoint);
    print(response.statusCode);
    print(response.body.toString());
    print("--------------------------------------------------------");
    if (statusCodes.contains(response.statusCode)){
      var data = json.decode(response.body);
      return data;
    }
    else{
      flutterToast("Something went wrong", DARK_BLUE);
    }
  }
}