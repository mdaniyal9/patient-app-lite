import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/services.dart';

class SiteCode extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SiteCode> {

  TextEditingController siteCodeControler = TextEditingController();

  @override
  void initState() {
    super.initState();
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 100.0, 16.0, 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 110.0,
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
                    fontSize: 20.0,
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
                    prefixIcon: Icon(Icons.location_on_outlined),
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
                      fontSize: 24.0,
                    ),
                  ),
                  color: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(40.0),
                  ),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/');
                  },
                ),
              ),
            ],
          ),
        ),
      ),),
    );
  }
}
