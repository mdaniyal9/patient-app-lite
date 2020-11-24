import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:patient_app_test_flutter/global/globals.dart';
import 'dart:convert';
import 'appExceptions.dart';

class ApiBaseHelper {

  String _baseUrl = "";

  Map loginBody = {
    "username": "", //"daniyalP",
    "password": "", //"Daniyal@1",
    "device_id": "c5d1a020b3f0d620",
    "device_name": "RNE-L21",
    "device_model": "RNE-L21",
    "device_type": "Android",
    "os_name": "Android",
    "os_version": "8.0.0",
    "pn_type": "Firebase",
    "pn_token": "cl0KtMnVOBo:APA91bFxNN8mJLSWKvTmWaTApqypvzDkbH-Eq1FkqyXlZDHwaeZKjZqqlP3lS_FjCl-g18GZdb9B4yuWpW3ThmEypD2nIQYq70O6elGRLRBFnNKOduzzlEfPQK9KE27B7tOlRwTXihMX",
    "app_version": "2.3.42-000",
    "app_type": "Patient",
    "is_patient": true,
    "lang": "en"
  };

  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      final response = await http.get(_baseUrl + url);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> post(String url, String siteCode) async {
    var responseJson;
    _baseUrl = "https://$siteCode.cognitivehealthintl.com";
    try {
      final response = await http.post(
        _baseUrl + url,
        headers: {
          "Cookie": "_xsrf=2|0a03a1c2|c45f715c5df81edf12b3a274d39cad5c|1575446079",
          "X-XSRFToken": "2|0a03a1c2|c45f715c5df81edf12b3a274d39cad5c|1575446079"
        },

      );
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> postWithBody(String url, String username, String password) async {
    var responseJson;
    String siteCode = await App.localStorage.read(key: 'siteCode');
    loginBody['username'] = username;
    loginBody['password'] = password;
    _baseUrl = "https://$siteCode.cognitivehealthintl.com";
    try {
      final response = await http.post(
        _baseUrl + url,
        headers: {
          "Cookie": "_xsrf=2|0a03a1c2|c45f715c5df81edf12b3a274d39cad5c|1575446079",
          "X-XSRFToken": "2|0a03a1c2|c45f715c5df81edf12b3a274d39cad5c|1575446079"
        },
          body: jsonEncode(loginBody),

      );
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> postWithBodyAndToken(String url) async {
    var responseJson;
    String siteCode = await App.localStorage.read(key: 'siteCode');
    String token = await App.localStorage.read(key: 'token');
    _baseUrl = "https://$siteCode.cognitivehealthintl.com";
    try {
      final response = await http.post(
        _baseUrl + url,
        headers: {
          "Cookie": "_xsrf=2|0a03a1c2|c45f715c5df81edf12b3a274d39cad5c|1575446079",
          "X-XSRFToken": "2|0a03a1c2|c45f715c5df81edf12b3a274d39cad5c|1575446079",
          "Authorization": token
        },
        // body: jsonEncode(body),

      );
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        print(responseJson);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}