import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

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
                  radius: ScreenUtil.instance.setHeight(110.0),
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
