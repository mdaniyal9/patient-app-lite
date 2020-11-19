import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:language_pickers/language_pickers.dart';
// import 'package:language_pickers/languages.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
// import 'package:lite_rolling_switch/lite_rolling_switch.dart';

const en = Locale("en", "UK");
const ar = Locale("ar", "AE");
var currentLocale = en;
var currentLanguage = "Enhlish";
TextDirection currentTextDir = TextDirection.ltr;


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController usernameControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  bool _passwordVisible = false;
  bool isSwitched = false;
  List<String> _locations = ["Arabic-SA", "English-United States"];
  String _selectedLocation;


  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    usernameControler.dispose();
    passwordControler.dispose();
    super.dispose();
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
            padding: const EdgeInsets.fromLTRB(16.0, 60.0, 16.0, 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: ScreenUtil.instance.setHeight(50.0),
                  backgroundImage: AssetImage('assets/chi_logo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 7.0),
                  child: Row(
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: ScreenUtil.instance.setSp(50.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 20.0),
                  child: Row(
                    children: [
                      Text(
                        "Sign in to continue",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: ScreenUtil.instance.setSp(20.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                  child: DropdownButtonFormField(
                    decoration: const InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                    ),
                    hint: Row(
                      children: [
                        Container(
                          child: Icon(Icons.g_translate_outlined),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                          child: Container(
                            child: Text('Select Language'),
                          ),
                        ),
                      ],
                    ),
                    icon: Icon(
                        Icons.arrow_forward_ios_outlined
                    ),
                    onChanged: (value) {
                      setState(() {
                        _selectedLocation = value;
                      });
                    },
                    items: _locations.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                  child: TextField(
                    controller: usernameControler,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                  child: TextField(
                    obscureText: !_passwordVisible,
                    controller: passwordControler,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock_outline,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: (){
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                        child: Text(
                            "Remember me"
                        ),
                      ),
                      FlutterSwitch(
                        height: 20.0,
                        width: 40.0,
                        padding: 4.0,
                        toggleSize: 15.0,
                        borderRadius: 10.0,
                        activeColor: Colors.cyan,
                        value: isSwitched,
                        onToggle: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                      ),
                      Spacer(),
                      TextButton(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.blue
                          ),
                        ),
                        onPressed: (){},
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 68.0,
                  margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  child: RaisedButton(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil.instance.setSp(24.0)
                      ),
                    ),
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(40.0),
                    ),
                    onPressed: (){},
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
}
