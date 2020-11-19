/// data : {"redirect_url":"/","Token":"VeH47XB5jcmrA4NuCfPCo3wsuj0lSPZMNHW2Y304to9pN6WyDUi0p0Qt7-3aiYbjXt6wxp15jLQJyxu1lW5azDX2EApqsdwuc7w3Fk3_fXs-LEIS35SxR5_j9Kx3zvw6WgwD8YQ-xRlDdhG8nlCttq-3rxERGg6fU9o5Qykzotw="}
/// Status : "Ok"
/// Time : 1605801280.331
/// Duration : 1.75

class LoginResponse {
  LoginData _data;
  String _status;
  double _time;
  double _duration;

  LoginData get data => _data;
  String get status => _status;
  double get time => _time;
  double get duration => _duration;

  LoginResponse({
      LoginData data, 
      String status, 
      double time, 
      double duration}){
    _data = data;
    _status = status;
    _time = time;
    _duration = duration;
}

  LoginResponse.fromJson(dynamic json) {
    _data = json["data"] != null ? LoginData.fromJson(json["data"]) : null;
    _status = json["Status"];
    _time = json["Time"];
    _duration = json["Duration"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_data != null) {
      map["data"] = _data.toJson();
    }
    map["Status"] = _status;
    map["Time"] = _time;
    map["Duration"] = _duration;
    return map;
  }

}

/// redirect_url : "/"
/// Token : "VeH47XB5jcmrA4NuCfPCo3wsuj0lSPZMNHW2Y304to9pN6WyDUi0p0Qt7-3aiYbjXt6wxp15jLQJyxu1lW5azDX2EApqsdwuc7w3Fk3_fXs-LEIS35SxR5_j9Kx3zvw6WgwD8YQ-xRlDdhG8nlCttq-3rxERGg6fU9o5Qykzotw="

class LoginData {
  String _redirectUrl;
  String _token;

  String get redirectUrl => _redirectUrl;
  String get token => _token;

  LoginData({
      String redirectUrl, 
      String token}){
    _redirectUrl = redirectUrl;
    _token = token;
}

  LoginData.fromJson(dynamic json) {
    _redirectUrl = json["redirect_url"];
    _token = json["Token"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["redirect_url"] = _redirectUrl;
    map["Token"] = _token;
    return map;
  }

}