import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeButtons extends StatefulWidget {
  @override
  _HomeButtonsState createState() => _HomeButtonsState();
}

class _HomeButtonsState extends State<HomeButtons> {

  @override
  Widget build(BuildContext context) {

    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    return Container(
      height: ScreenUtil.instance.setHeight(250),
      width: ScreenUtil.instance.setWidth(360),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: (){},
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.call_outlined,
                            color: const Color(0xff387b96),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Call',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: ScreenUtil.instance.setSp(10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    height: ScreenUtil.instance.setHeight(40), width: 1,
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(3.0, 8.0, 0.0, 8.0),
                    child: FlatButton(
                      onPressed: (){},
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.calendar_today_outlined,
                            color: const Color(0xffd17b58),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Appointments',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: ScreenUtil.instance.setSp(10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    height: ScreenUtil.instance.setHeight(40), width: 1,
                    margin: EdgeInsets.fromLTRB(8.0, 0.0, 10.0, 0.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: (){},
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.message_outlined,
                            color: const Color(0xff387b96),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Messages',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: ScreenUtil.instance.setSp(10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
              Divider(
                color: Colors.grey,
                height: 5,
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: (){},
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.note_add_outlined,
                            color: const Color(0xff387b96),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Doctor\'s\nNote',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: ScreenUtil.instance.setSp(10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    height: ScreenUtil.instance.setHeight(40), width: 1,
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: (){},
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.upload_outlined,
                            color: const Color(0xffd17b58),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Upload',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: ScreenUtil.instance.setSp(10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    height: ScreenUtil.instance.setHeight(40), width: 1,
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: (){},
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: const Color(0xff387b96),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Add\nReadings',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: ScreenUtil.instance.setSp(10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
              Divider(
                color: Colors.grey,
                height: 5,
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: (){},
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.find_in_page_outlined,
                            color: const Color(0xff387b96),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Symptom\nChecker',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: ScreenUtil.instance.setSp(10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    height: ScreenUtil.instance.setHeight(40), width: 1,
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: (){},
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: const Color(0xffd17b58),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Packages',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: ScreenUtil.instance.setSp(10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    height: ScreenUtil.instance.setHeight(40), width: 1,
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: (){},
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.view_module_rounded,
                            color: const Color(0xff387b96),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'More',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: ScreenUtil.instance.setSp(10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
