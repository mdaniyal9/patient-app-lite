import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:patient_app_test_flutter/global/globals.dart';
import 'package:patient_app_test_flutter/ui/home/home.dart';
import 'package:patient_app_test_flutter/ui/login.dart';
import 'package:patient_app_test_flutter/ui/siteCode.dart';
import 'package:patient_app_test_flutter/ui/splash.dart';
import 'models/models.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:local_auth/local_auth.dart';



// void main() => runApp(MyAPPHTTP());
void main() async{
  App.init();
  runApp(MaterialApp(
    initialRoute: '/siteCode',
    routes: {
      '/siteCode': (context) => SiteCode(),
      '/': (context) => Splash(),
      '/login': (context) => Login(),
      '/home': (context) => Home(),

    },
  ));
}

class MyAPPHTTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter HTTP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyApp(),
    );
  }
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  TextEditingController usernameControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();


  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  // Create storage
  // final storage = new FlutterSecureStorage();


  String url = "https://dev4.cognitivehealthintl.com/auth/Login2";

  Map body = {
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

  Future<String> doLogin(String username, String password) async {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    print('Running on ${androidInfo.model}');

    // IosDeviceInfo iosInfo = await deviceInfo.androidInfo;
    // print('Running on ${iosInfo.utsname.machine}');

    body['username'] = username;
    body['password'] = password;
    body['device_name'] = androidInfo.model;
    body['device_model'] = androidInfo.model;

    print(body);

    final resp = await http.post(
        url,
        headers: {
          "Cookie": "_xsrf=2|0a03a1c2|c45f715c5df81edf12b3a274d39cad5c|1575446079",
          "X-XSRFToken": "2|0a03a1c2|c45f715c5df81edf12b3a274d39cad5c|1575446079"
        },
        body: jsonEncode(body),
    );
    APIResponse response = new APIResponse();
    // response = resp;
    final jsonResponse = jsonDecode(resp.body);

    if (resp.statusCode == 200) {
      print(jsonResponse);

      response = APIResponse.fromJson(jsonResponse);
      // Write value
      // await storage.write(key: "token", value: response.token);++++++++++++++++++++++++++++

      return response.token;
    }
    else{
      print(resp);
      throw Exception('A network error occurred');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            // leading: BackButton(color: Colors.white),
            title: Text("CHI"),
            // centerTitle: true,
          ),
          body: Padding(
              padding: EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Cognitive Healthcare',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text('Sign in',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        )),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: usernameControler,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: passwordControler,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      //forgot screen
                    },
                    textColor: Colors.blue,
                    child: Text('Forgot Password'),
                  ),
                  Container(
                      height: 50,
                      child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text('Login'),
                        onPressed: () async {
                          print(usernameControler.text);
                          print(passwordControler.text);
                          await doLogin(usernameControler.text, passwordControler.text);
                          // Read value
                          // String value = await storage.read(key: "token");++++++++++++++++++++++++++++++
                          // print("Token is $value");
                        },
                      )),
                  Container(
                      child: Row(
                    children: <Widget>[
                      Text('Does not have account?'),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text('Sign up'),
                        onPressed: () {
                          //Sign up screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ))
                ],
              ))),
    );
  }
}

// class HTTPScreen extends StatelessWidget {
//   String url = "https://dev4.cognitivehealthintl.com/auth/Login2";
//
//   Map body = {
//     "username": "daniyalP",
//     "password": "Daniyal@1",
//     "device_id": "c5d1a020b3f0d620",
//     "device_name": "RNE-L21",
//     "device_model": "RNE-L21",
//     "device_type": "Android",
//     "os_name": "Android",
//     "os_version": "8.0.0",
//     "pn_type": "Firebase",
//     "pn_token": "cl0KtMnVOBo:APA91bFxNN8mJLSWKvTmWaTApqypvzDkbH-Eq1FkqyXlZDHwaeZKjZqqlP3lS_FjCl-g18GZdb9B4yuWpW3ThmEypD2nIQYq70O6elGRLRBFnNKOduzzlEfPQK9KE27B7tOlRwTXihMX",
//     "app_version": "2.3.42-000",
//     "app_type": "Patient",
//     "is_patient": true,
//     "lang": "en"
//   };
//
//   Future<APIResponse> getData() async {
//     // final resp = await http.get("http://10.8.100.40/");
//     // final resp = await http.get("https://api.jsonbin.io/b/5e1219328d761771cc8b9394");
//     final resp = await http.post(
//         url,
//         headers: {
//           "Cookie": "_xsrf=2|0a03a1c2|c45f715c5df81edf12b3a274d39cad5c|1575446079",
//           "X-XSRFToken": "2|0a03a1c2|c45f715c5df81edf12b3a274d39cad5c|1575446079"
//         },
//         body: jsonEncode(body),
//     );
//     // APIResponse response = new APIResponse();
//     // response = resp;
//     final jsonResponse = jsonDecode(resp.body);
//
//     // if (resp.statusCode == 200) {
//     print(jsonResponse);
//
//     return APIResponse.fromJson(jsonResponse);
//     // } else {
//     //   print('A network error occurred');
//     // }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: FutureBuilder<APIResponse>(
//           future: getData(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               final apiresponse = snapshot.data;
//               return Text("Token====: ${apiresponse.token}");
//             } else if (snapshot.hasError) {
//               return Text(snapshot.error.toString());
//             } else {
//               return Text("No data found");
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
