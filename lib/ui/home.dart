import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

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

    return DefaultTabController(
      length: 5,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: ScreenUtil.instance.setHeight(10.0),
                    backgroundImage: AssetImage('assets/chi_logo.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'CHI Health Buddy',
                      style: TextStyle(
                        color: const Color(0xff387b96),
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.wifi_tethering_outlined,
                      color: const Color(0xfffd3027),
                    ),
                    onPressed: (){},
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(
                    height: 45.0,
                    width: 45.0,
                    child: TextButton(
                      onPressed: (){},
                      child: Text(
                        'SOS',
                        style: TextStyle(
                          color: const Color(0xfffd3027),
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      style: TextButton.styleFrom(
                        // primary: Colors.white,
                        // backgroundColor: Colors.teal,
                        // onSurface: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
        ),
        body: TabBarView(
          children: [
            Icon(Icons.sync),
            Icon(Icons.calendar_today_outlined),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: ScreenUtil.instance.setHeight(360),
                    width: ScreenUtil.instance.setWidth(360),
                    child: PageView(
                      children: <Widget>[
                        Container(
                          // height: 130,
                          // color: Colors.pink,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [const Color(0xff387b96), const Color(0xffd17b58)]),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff387b96)
                          ),
                          child: Container(
                            child: Container(
                                child: Center(
                                    child: CircleAvatar(
                                      child: Text(
                                        '120/90',
                                      ),
                                      backgroundColor: const Color(0xffffffff),
                                      radius: ScreenUtil.instance.setHeight(100.0),
                                    ),
                                ),
                            ),
                          ),
                        ),
                        Container(
                          // height: 130,
                          // color: Colors.cyan,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffd17b58),
                          ),
                        ),
                        Container(
                          // height: 130,
                          // color: Colors.deepPurple,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff387b96),
                          ),
                        ),
                        Container(
                          // height: 130,
                          // color: Colors.blue,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff387b96),
                          ),
                        ),
                        Container(
                          // height: 130,
                          // color: Colors.grey,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffd17b58),
                          ),
                        ),
                        Container(
                          // height: 130,
                          // color: Colors.orange,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff387b96),
                          ),
                        ),
                        Container(
                          // height: 130,
                          // color: Colors.yellow,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffd17b58),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Table(
                        border: TableBorder(
                            verticalInside: new BorderSide(color: Colors.grey, width: 1.0),
                            horizontalInside: new BorderSide(color: Colors.grey, width: 1.0)
                        ),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: [
                          TableRow(
                            children: <Widget>[
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FlatButton(
                                    onPressed: (){},
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.call_outlined,
                                          color: const Color(0xff387b96),
                                        ),
                                        Text(
                                          'Call',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: ScreenUtil.instance.setSp(10.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FlatButton(
                                    onPressed: (){},
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.calendar_today_outlined,
                                          color: const Color(0xffd17b58),
                                        ),
                                        Text(
                                          'Appointments',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: ScreenUtil.instance.setSp(10.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FlatButton(
                                    onPressed: (){},
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.message_outlined,
                                          color: const Color(0xff387b96),
                                        ),
                                        Text(
                                          'Messages',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: ScreenUtil.instance.setSp(10.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FlatButton(
                                    onPressed: (){},
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.note_add_outlined,
                                          color: const Color(0xff387b96),
                                        ),
                                        Text(
                                          'Doctor\'s Note',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: ScreenUtil.instance.setSp(10.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FlatButton(
                                    onPressed: (){},
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.upload_outlined,
                                          color: const Color(0xffd17b58),
                                        ),
                                        Text(
                                          'Upload',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: ScreenUtil.instance.setSp(10.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FlatButton(
                                    onPressed: (){},
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.add,
                                          color: const Color(0xff387b96),
                                        ),
                                        Text(
                                          'Add Readings',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: ScreenUtil.instance.setSp(10.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: <Widget>[
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FlatButton(
                                    onPressed: (){},
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.find_in_page_outlined,
                                          color: const Color(0xff387b96),
                                        ),
                                        Text(
                                          'Symptom Checker',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: ScreenUtil.instance.setSp(10.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FlatButton(
                                    onPressed: (){},
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.shopping_bag_outlined,
                                          color: const Color(0xffd17b58),
                                        ),
                                        Text(
                                          'Packages',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: ScreenUtil.instance.setSp(10.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FlatButton(
                                    onPressed: (){},
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.view_module_rounded,
                                          color: const Color(0xff387b96),
                                        ),
                                        Text(
                                          'More',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: ScreenUtil.instance.setSp(10.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.history),
            Icon(Icons.notifications_none_outlined),
          ],
        ),
        bottomNavigationBar: Container(
          // color: Colors.black,
          child: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Recent',
                icon: Icon(
                  Icons.sync,
                  // color: Colors.grey,
                ),
              ),
              Tab(
                text: 'Schedule',
                icon: Icon(
                  Icons.calendar_today_outlined,
                  // color: Colors.grey,
                ),
              ),
              Tab(
                icon: CircleAvatar(
                  child: Icon(
                    Icons.home_outlined,
                    // color: Colors.grey,
                  ),
                  backgroundColor: const Color(0xff387b96),
                ),
              ),
              Tab(
                text: 'Historical',
                icon: Icon(
                  Icons.history,
                  // color: Colors.grey,
                ),
              ),
              Tab(
                text: 'Notification',
                icon: Icon(
                  Icons.notifications_none_outlined,
                  // color: Colors.grey,
                ),
              ),
            ],
            labelColor: const Color(0xff387b96),
            labelStyle: TextStyle(
              fontSize: ScreenUtil.instance.setSp(8.0),
            ),
            // indicator: BoxDecoration(
            //     gradient: LinearGradient(
            //         colors: [Colors.redAccent, Colors.orangeAccent]),
            //     borderRadius: BorderRadius.circular(50),
            //     color: Colors.redAccent),
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
