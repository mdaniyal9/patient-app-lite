import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class App {
  static FlutterSecureStorage localStorage;
  static Future init() async {
    // Create storage
    final localStorage = await FlutterSecureStorage();
  }
}