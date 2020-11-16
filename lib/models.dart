class APIResponse {
  final String token;

  APIResponse({this.token});

  factory APIResponse.fromJson(Map<String, dynamic> json) {
    return APIResponse(
      token: json["data"]["Token"],
        );
  }
}
