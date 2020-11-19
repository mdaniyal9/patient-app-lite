import 'dart:convert';

import 'package:language_pickers/languages.dart';
import 'package:patient_app_test_flutter/models/models.dart';
import 'package:patient_app_test_flutter/models/language.dart';
import 'package:patient_app_test_flutter/network/apiBaseHelper.dart';

class Repository {
  final String _apiKey = "Paste your api key here";

  ApiBaseHelper _helper = ApiBaseHelper();


  Future<Languages> GetSystemLanguages(String siteCode) async {
    final response = await _helper.post("/auth/GetSystemLanguages", siteCode);
    return Languages.fromJson(response);
  }
}