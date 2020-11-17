import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/services.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 100.0),
                child: CircleAvatar(
                  radius: 130.0,
                  backgroundImage: AssetImage('assets/chi_logo.png'),
                ),
              ),
              SizedBox(height: 100.0,),
              LinearPercentIndicator(
                alignment: MainAxisAlignment.center,
                width: MediaQuery.of(context).size.width - 110,
                animation: true,
                lineHeight: 10.0,
                animationDuration: 2000,
                percent: 1.0,
                // center: Text("100.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.blue,
                onAnimationEnd: (){
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),),
    );
  }
}
