import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class App {
  // static FlutterSecureStorage localStorage;
  static var localStorage;
  static Future init()  {
    // Create storage
    localStorage = new FlutterSecureStorage();
  }
}