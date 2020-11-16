import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:language_pickers/language_pickers.dart';
import 'package:language_pickers/languages.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController usernameControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  bool _passwordVisible = false;

  Language _selectedDropdownLanguage = LanguagePickerUtils.getLanguageByIsoCode('en');


  // It's sample code of Dropdown Item.
  Widget _buildDropdownItem(Language language) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 8.0,
        ),
        Text("${language.name} (${language.isoCode})"),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/chi_logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 50.0, 8.0, 8.0),
              child: Row(
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 8.0, 8.0),
              child: Row(
                children: [
                  Text(
                    "Sign in to continue",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            LanguagePickerDropdown(
              initialValue: 'en',
              itemBuilder: _buildDropdownItem,
              onValuePicked: (Language language) {
                _selectedDropdownLanguage = language;
                print(_selectedDropdownLanguage.name);
                print(_selectedDropdownLanguage.isoCode);
              },
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: usernameControler,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person_outline),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: !_passwordVisible,
                controller: passwordControler,
                focusNode: FocusNode(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock_open_outlined),
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
          ],
        ),
      ),
    );
  }
}
