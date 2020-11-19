/// data : [{"language_id":"ar-SA","language_version":"v1.0","language_name":"Arabic-SA","language_native_name":"Arabic-SA","remaining_translations_count":0},{"language_id":"en-US","language_version":"1.0","language_name":"English - United States","language_native_name":"English - United States","remaining_translations_count":273}]
/// total_records : 2
/// Status : "Ok"
/// Time : 1605703580.789
/// Duration : 0.041

class Languages {
  List<LanguageData> _data;
  int _totalRecords;
  String _status;
  double _time;
  double _duration;

  List<LanguageData> get data => _data;
  int get totalRecords => _totalRecords;
  String get status => _status;
  double get time => _time;
  double get duration => _duration;

  Languages({
      List<LanguageData> data, 
      int totalRecords, 
      String status, 
      double time, 
      double duration}){
    _data = data;
    _totalRecords = totalRecords;
    _status = status;
    _time = time;
    _duration = duration;
}

  Languages.fromJson(dynamic json) {
    if (json["data"] != null) {
      _data = [];
      json["data"].forEach((v) {
        _data.add(LanguageData.fromJson(v));
      });
    }
    _totalRecords = json["total_records"];
    _status = json["Status"];
    _time = json["Time"];
    _duration = json["Duration"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_data != null) {
      map["data"] = _data.map((v) => v.toJson()).toList();
    }
    map["total_records"] = _totalRecords;
    map["Status"] = _status;
    map["Time"] = _time;
    map["Duration"] = _duration;
    return map;
  }

}

/// language_id : "ar-SA"
/// language_version : "v1.0"
/// language_name : "Arabic-SA"
/// language_native_name : "Arabic-SA"
/// remaining_translations_count : 0

class LanguageData {
  String _languageId;
  String _languageVersion;
  String _languageName;
  String _languageNativeName;
  int _remainingTranslationsCount;

  String get languageId => _languageId;
  String get languageVersion => _languageVersion;
  String get languageName => _languageName;
  String get languageNativeName => _languageNativeName;
  int get remainingTranslationsCount => _remainingTranslationsCount;

  LanguageData({
      String languageId, 
      String languageVersion, 
      String languageName, 
      String languageNativeName, 
      int remainingTranslationsCount}){
    _languageId = languageId;
    _languageVersion = languageVersion;
    _languageName = languageName;
    _languageNativeName = languageNativeName;
    _remainingTranslationsCount = remainingTranslationsCount;
}

  LanguageData.fromJson(dynamic json) {
    _languageId = json["language_id"];
    _languageVersion = json["language_version"];
    _languageName = json["language_name"];
    _languageNativeName = json["language_native_name"];
    _remainingTranslationsCount = json["remaining_translations_count"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["language_id"] = _languageId;
    map["language_version"] = _languageVersion;
    map["language_name"] = _languageName;
    map["language_native_name"] = _languageNativeName;
    map["remaining_translations_count"] = _remainingTranslationsCount;
    return map;
  }

}