
class APIResponse {
  final String token;

  APIResponse({this.token});

  factory APIResponse.fromJson(Map<String, dynamic> json) {
    return APIResponse(
      token: json["data"]["Token"],
        );
  }
}

class SystemLanguage {
  final String language_id;
  final String language_name;
  final String language_native_name;
  final String language_version;

  SystemLanguage({this.language_id, this.language_name, this.language_native_name, this.language_version});

  factory SystemLanguage.fromJson(Map<String, dynamic> json){
    return SystemLanguage(
        language_id: json["data"]["language_id"],
        language_name: json["data"]["language_id"],
        language_native_name: json["data"]["language_id"],
        language_version: json["data"]["language_id"]
    );
  }

}
