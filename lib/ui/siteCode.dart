import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:patient_app_test_flutter/global/globals.dart';
import 'package:patient_app_test_flutter/repository/repo.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/services.dart';
import 'package:patient_app_test_flutter/models/language.dart';
import 'package:toast/toast.dart';

class SiteCode extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SiteCode> {

  TextEditingController siteCodeControler = TextEditingController();
  bool _validate = false;


  // Create storage
  final storage = new FlutterSecureStorage();


  Repository _Repository;
  @override
  void initState() {
    super.initState();
    SystemChannels.textInput.invokeMethod('TextInput.hide');

    _Repository = Repository();
  }

  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      body: Center(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onPanDown: (_) {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SingleChildScrollView(
            child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 100.0, 16.0, 100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: ScreenUtil.instance.setHeight(110.0),
                  backgroundImage: AssetImage('assets/chi_logo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 7.0),
                  child: Text(
                    "Welcome to CHI",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 25.0),
                  child: Text(
                    "Enter site code to continue",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil.instance.setSp(20.0),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 21.0),
                  child: TextField(
                    controller: siteCodeControler,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                      labelText: 'Site Code',
                      errorText: _validate ? 'Site Code Can\'t Be Empty' : null,
                      prefixIcon: _validate ? Icon(
                        Icons.location_on_outlined,
                        color: Colors.red,
                      ) : Icon(
                        Icons.location_on_outlined,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 68.0,
                  margin: EdgeInsets.fromLTRB(0.0, 21.0, 0.0, 0.0),
                  child: RaisedButton(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil.instance.setSp(24.0),
                      ),
                    ),
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(40.0),
                    ),
                    onPressed: () async {
                      setState(() {
                        siteCodeControler.text.isEmpty ? _validate = true : _validate = false;
                      });
                      if(!_validate) {
                        try {
                          Languages languages = await _Repository.GetSystemLanguages(siteCodeControler.text);
                          List<Data> data = languages.data;
                          print("First language is ${data[0].languageName}");
                          // App.localStorage.write(key: null, value: null);
                          Navigator.pushReplacementNamed(context, '/');
                        } catch (e) {
                          Toast.show("Invalid Site Code", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                          print(e);
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    siteCodeControler.dispose();
    super.dispose();
  }

}
