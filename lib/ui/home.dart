import 'dart:async';

import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/services.dart';
import 'package:analog_clock/analog_clock.dart';
import 'package:page_view_indicators/page_view_indicators.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:fl_chart/fl_chart.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _currentPageNotifier = ValueNotifier<int>(0);
  final controller = PageController(viewportFraction: 1.0);

  LineChartData sampleData2() {
    return LineChartData(
      lineTouchData: LineTouchData(
        enabled: false,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
            // color: Color(0xff72719b),
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          margin: 10,
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'SEPT';
              case 7:
                return 'OCT';
              case 12:
                return 'DEC';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            // color: Color(0xff75729e),
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '1m';
              case 2:
                return '2m';
              case 3:
                return '3m';
              case 4:
                return '5m';
              case 5:
                return '6m';
            }
            return '';
          },
          margin: 8,
          reservedSize: 30,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: const Border(
            bottom: BorderSide(
              // color: Color(0xff4e4965),
              color: Colors.white,
              width: 4,
            ),
            left: BorderSide(
              color: Colors.transparent,
            ),
            right: BorderSide(
              color: Colors.transparent,
            ),
            top: BorderSide(
              color: Colors.transparent,
            ),
          )),
      minX: 0,
      maxX: 14,
      maxY: 6,
      minY: 0,
      lineBarsData: linesBarData2(),
    );
  }

  List<LineChartBarData> linesBarData2() {
    return [
      // LineChartBarData(
      //   spots: [
      //     FlSpot(1, 1),
      //     FlSpot(3, 4),
      //     FlSpot(5, 1.8),
      //     FlSpot(7, 5),
      //     FlSpot(10, 2),
      //     FlSpot(12, 2.2),
      //     FlSpot(13, 1.8),
      //   ],
      //   isCurved: true,
      //   curveSmoothness: 0,
      //   colors: const [
      //     Color(0x444af699),
      //   ],
      //   barWidth: 4,
      //   isStrokeCapRound: true,
      //   dotData: FlDotData(
      //     show: false,
      //   ),
      //   belowBarData: BarAreaData(
      //     show: false,
      //   ),
      // ),
      // LineChartBarData(
      //   spots: [
      //     FlSpot(1, 1),
      //     FlSpot(3, 2.8),
      //     FlSpot(7, 1.2),
      //     FlSpot(10, 2.8),
      //     FlSpot(12, 2.6),
      //     FlSpot(13, 3.9),
      //   ],
      //   isCurved: true,
      //   colors: const [
      //     Color(0x99aa4cfc),
      //   ],
      //   barWidth: 4,
      //   isStrokeCapRound: true,
      //   dotData: FlDotData(
      //     show: false,
      //   ),
      //   belowBarData: BarAreaData(show: true, colors: [
      //     const Color(0x33aa4cfc),
      //   ]),
      // ),
      LineChartBarData(
        spots: [
          FlSpot(1, 3.8),
          FlSpot(3, 1.9),
          FlSpot(6, 5),
          FlSpot(10, 3.3),
          FlSpot(13, 4.5),
        ],
        isCurved: true,
        curveSmoothness: 0,
        colors: const [
          // Color(0x4427b6fc),
          Color(0xffffffff),
        ],
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(show: true),
        belowBarData: BarAreaData(
          show: false,
        ),
      ),
    ];
  }

  _buildCircleIndicator2() {
    return CirclePageIndicator(
      size: 16.0,
      selectedSize: 18.0,
      itemCount: 7,
      borderWidth: 0.5,
      borderColor: Colors.black,
      currentPageNotifier: _currentPageNotifier,
    );
  }

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
                    child: Stack(
                      alignment: FractionalOffset.bottomCenter,
                      children: [
                        PageView(
                          // controller: controller,
                          children: <Widget>[
                            Container(
                              // height: ScreenUtil.instance.setHeight(300),
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
                                child: Stack(
                                  children: [
                                    Container(
                                        child: Center(
                                            child: CircleAvatar(
                                              child: Text(
                                                '120/90',
                                                style: TextStyle(
                                                  fontSize: ScreenUtil.instance.setSp(40.0),
                                                  color: Colors.white
                                                ),
                                              ),
                                              backgroundColor: const Color(0x33ffffff),
                                              // backgroundColor: Colors.transparent,
                                              radius: ScreenUtil.instance.setHeight(100.0),
                                            ),
                                        ),
                                    ),
                                    Container(
                                      child: Center(
                                        child: AnalogClock(
                                          decoration: BoxDecoration(
                                              border: Border.all(width: ScreenUtil.instance.setWidth(10.0), color: const Color(0x33ffffff)),
                                              color: Colors.transparent,
                                              shape: BoxShape.circle),
                                          width: ScreenUtil.instance.setWidth(270.0),
                                          height: ScreenUtil.instance.setHeight(270.0),
                                          isLive: true,
                                          hourHandColor: Colors.transparent,
                                          minuteHandColor: Colors.transparent,
                                          showSecondHand: false,
                                          numberColor: Colors.white,
                                          showNumbers: true,
                                          textScaleFactor: 1.4,
                                          showTicks: false,
                                          showDigitalClock: false,
                                          // datetime: DateTime(2019, 1, 1, 9, 12, 15),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              // height: ScreenUtil.instance.setHeight(300),
                              // color: Colors.cyan,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffd17b58),
                              ),
                              // child: ListView.separated(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                // mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Recents",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      itemBuilder: (context, position) {
                                        return Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: Text(
                                                "09:30 AM",
                                                style: TextStyle(
                                                  color: Colors.white
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: Colors.white,
                                              height: ScreenUtil.instance.setHeight(68), width: 2,
                                              margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                color: const Color(0x33ffffff),
                                                height: ScreenUtil.instance.setHeight(52),
                                                width: ScreenUtil.instance.setWidth(250),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.medical_services_outlined,
                                                      color: Colors.white,
                                                    ),
                                                    // Spacer(),
                                                    Column(
                                                      children: <Widget>[
                                                        Text(
                                                          "Blood Pressure",
                                                          style: TextStyle(
                                                              color: Colors.white
                                                          ),
                                                        ),
                                                        Text(
                                                          "Critical",
                                                          style: TextStyle(
                                                              color: Colors.white,
                                                              fontSize: ScreenUtil.instance.setSp(5.0)
                                                          ),
                                                        ),
                                                      ],
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                    ),
                                                    // Spacer(),
                                                    Column(
                                                      children: <Widget>[
                                                        Text(
                                                          "120/52",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: ScreenUtil.instance.setSp(20.0)
                                                          ),
                                                        ),
                                                        Text(
                                                          "Systolic Diastolic",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: ScreenUtil.instance.setSp(5.0)
                                                          ),
                                                        ),
                                                      ],
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                    ),
                                                  ],
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                ),
                                              ),
                                            ),
                                          ],
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        );
                                      },
                                      itemCount: 20,
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.white,
                                    height: 5,
                                    thickness: 2,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                                      child: RaisedButton(
                                        color: const Color(0xffd17b58),
                                        onPressed: (){},
                                        child: Text(
                                          "See All",
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            side: BorderSide(color: Colors.black26)
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // height: 130,
                              // color: Colors.deepPurple,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff387b96),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                // mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Oderable Schedule",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      itemBuilder: (context, position) {
                                        return Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: Text(
                                                "09:30 AM",
                                                style: TextStyle(
                                                    color: Colors.white
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: Colors.white,
                                              height: ScreenUtil.instance.setHeight(68), width: 2,
                                              margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                color: const Color(0x33ffffff),
                                                height: ScreenUtil.instance.setHeight(52),
                                                width: ScreenUtil.instance.setWidth(250),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.medical_services_outlined,
                                                      color: Colors.white,
                                                    ),
                                                    Text(
                                                      "SpO2",
                                                      style: TextStyle(
                                                          color: Colors.white
                                                      ),
                                                    ),
                                                    Text(
                                                      "Missed",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: ScreenUtil.instance.setSp(10.0)
                                                      ),
                                                    ),
                                                  ],
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                ),
                                              ),
                                            ),
                                          ],
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        );
                                      },
                                      itemCount: 20,
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.white,
                                    height: 5,
                                    thickness: 2,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                                      child: RaisedButton(
                                        color: const Color(0xff387b96),
                                        onPressed: (){},
                                        child: Text(
                                          "See All",
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            side: BorderSide(color: Colors.black26)
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // height: 130,
                              // color: Colors.blue,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff387b96),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                // mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Medication Schedule",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      itemBuilder: (context, position) {
                                        return Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: Text(
                                                "09:30 AM",
                                                style: TextStyle(
                                                    color: Colors.white
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: Colors.white,
                                              height: ScreenUtil.instance.setHeight(68), width: 2,
                                              margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                color: const Color(0x33ffffff),
                                                height: ScreenUtil.instance.setHeight(52),
                                                width: ScreenUtil.instance.setWidth(250),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.medical_services_outlined,
                                                      color: Colors.white,
                                                    ),
                                                    Text(
                                                      "Amoxicillin",
                                                      style: TextStyle(
                                                          color: Colors.white
                                                      ),
                                                    ),
                                                    Text(
                                                      "Missed",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: ScreenUtil.instance.setSp(10.0)
                                                      ),
                                                    ),
                                                  ],
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                ),
                                              ),
                                            ),
                                          ],
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        );
                                      },
                                      itemCount: 20,
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.white,
                                    height: 5,
                                    thickness: 2,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                                      child: RaisedButton(
                                        color: const Color(0xff387b96),
                                        onPressed: (){},
                                        child: Text(
                                          "See All",
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            side: BorderSide(color: Colors.black26)
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // height: 130,
                              // color: Colors.grey,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffd17b58),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                // mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Historical",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      itemBuilder: (context, position) {
                                        return Column(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                color: const Color(0x33ffffff),
                                                height: ScreenUtil.instance.setHeight(58),
                                                width: ScreenUtil.instance.setWidth(51),
                                                child: Column(
                                                  children: <Widget>[
                                                    Text(
                                                      "B.P",
                                                      style: TextStyle(
                                                          color: Colors.white
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.medical_services_outlined,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                ),
                                              ),
                                            ),
                                          ],
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        );
                                      },
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 20,
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.white,
                                    height: 5,
                                    thickness: 2,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Container(
                                    height: ScreenUtil.instance.setHeight(200),
                                    width: ScreenUtil.instance.setWidth(350),
                                    // child: BezierChart(
                                    //   bezierChartScale: BezierChartScale.CUSTOM,
                                    //   xAxisCustomValues: const [0, 5, 10, 15, 20, 25, 30, 35],
                                    //   series: const [
                                    //     BezierLine(
                                    //       label: "Custom 1",
                                    //       data: const [
                                    //         DataPoint<double>(value: 10, xAxis: 0),
                                    //         DataPoint<double>(value: 130, xAxis: 5),
                                    //         DataPoint<double>(value: 50, xAxis: 10),
                                    //         DataPoint<double>(value: 150, xAxis: 15),
                                    //         DataPoint<double>(value: 75, xAxis: 20),
                                    //         DataPoint<double>(value: 0, xAxis: 25),
                                    //         DataPoint<double>(value: 5, xAxis: 30),
                                    //         DataPoint<double>(value: 45, xAxis: 35),
                                    //       ],
                                    //     ),
                                    //     BezierLine(
                                    //       lineColor: Colors.blue,
                                    //       lineStrokeWidth: 2.0,
                                    //       label: "Custom 2",
                                    //       data: const [
                                    //         DataPoint<double>(value: 5, xAxis: 0),
                                    //         DataPoint<double>(value: 50, xAxis: 5),
                                    //         DataPoint<double>(value: 30, xAxis: 10),
                                    //         DataPoint<double>(value: 30, xAxis: 15),
                                    //         DataPoint<double>(value: 50, xAxis: 20),
                                    //         DataPoint<double>(value: 40, xAxis: 25),
                                    //         DataPoint<double>(value: 10, xAxis: 30),
                                    //         DataPoint<double>(value: 30, xAxis: 35),
                                    //       ],
                                    //     ),
                                    //   ],
                                    //   config: BezierChartConfig(
                                    //     verticalIndicatorStrokeWidth: 3.0,
                                    //     verticalIndicatorColor: Colors.black26,
                                    //     showVerticalIndicator: true,
                                    //     backgroundColor: const Color(0xffd17b58),
                                    //     snap: false,
                                    //   ),
                                    // ),
                                    child: LineChart(
                                        sampleData2(),
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.white,
                                    height: 5,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                                      child: RaisedButton(
                                        color: const Color(0xffd17b58),
                                        onPressed: (){},
                                        child: Text(
                                          "See All",
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            side: BorderSide(color: Colors.black26)
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                          onPageChanged: (int index) {
                            _currentPageNotifier.value = index;
                            },
                        ),
                        // _buildCircleIndicator2(),
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
