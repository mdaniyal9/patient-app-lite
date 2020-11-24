import 'package:analog_clock/analog_clock.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_view_indicators/page_view_indicators.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePagger extends StatefulWidget {
  @override
  _HomePaggerState createState() => _HomePaggerState();
}

class _HomePaggerState extends State<HomePagger> {
  final _currentPageNotifier = ValueNotifier<int>(0);

  LineChartData sampleData2() {
    return LineChartData(
      lineTouchData: LineTouchData(
        enabled: true,
      ),
      gridData: FlGridData(
        show: true,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
            // color: Color(0xff72719b),
            color: Colors.white,
            // fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
          margin: 5.0,
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '1';
              case 2:
                return '2';
              case 3:
                return '3';
              case 4:
                return '4';
              case 5:
                return '5';
              case 6:
                return '6';
              case 7:
                return '7';
              case 8:
                return '8';
              case 9:
                return '9';
              case 10:
                return '10';
              case 11:
                return '11';
              case 12:
                return '12';
              case 13:
                return '13';
            // case 14:
            //   return '14';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            // color: Color(0xff75729e),
            color: Colors.white,
            // fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '1';
              case 2:
                return '2';
              case 3:
                return '3';
              case 4:
                return '4';
              case 5:
                return '5';
            // case 6:
            //   return '6';
            }
            return '';
          },
          margin: 5.0,
          reservedSize: 30,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: const Border(
            bottom: BorderSide(
              // color: Color(0xff4e4965),
              // color: Colors.white,
              color: Colors.transparent,
              // width: 3,
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
  Widget build(BuildContext context) {

    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    return Container(
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
                                  // color: const Color(0x33ffffff),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: const Color(0x33ffffff),
                                  ),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Compliance",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: const Color(0x33ffffff),
                                  height: ScreenUtil.instance.setHeight(44),
                                  width: ScreenUtil.instance.setWidth(155),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.medical_services_outlined,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5.0),
                                            child: Text(
                                              "Medication",
                                              style: TextStyle(
                                                  color: Colors.white
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "73%",
                                            style: TextStyle(
                                                color: Colors.white
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            height: ScreenUtil.instance.setHeight(10.0),
                                            width: ScreenUtil.instance.setWidth(120.0),
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 20.0),
                                              child: LinearPercentIndicator(
                                                alignment: MainAxisAlignment.center,
                                                width: MediaQuery.of(context).size.width - 310,
                                                animation: false,
                                                lineHeight: 8.0,
                                                // animationDuration: 2000,
                                                percent: 0.5,
                                                // center: Text("100.0%"),
                                                // linearStrokeCap: LinearStrokeCap.roundAll,
                                                linearStrokeCap: LinearStrokeCap.butt,
                                                progressColor: Colors.white,
                                                onAnimationEnd: (){
                                                  Navigator.pushReplacementNamed(context, '/login');
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  ),
                                ),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: const Color(0x33ffffff),
                                  height: ScreenUtil.instance.setHeight(44),
                                  width: ScreenUtil.instance.setWidth(155),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.medical_services_outlined,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5.0),
                                            child: Text(
                                              "Homecare",
                                              style: TextStyle(
                                                  color: Colors.white
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "55%",
                                            style: TextStyle(
                                                color: Colors.white
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            height: ScreenUtil.instance.setHeight(10.0),
                                            width: ScreenUtil.instance.setWidth(120.0),
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 20.0),
                                              child: LinearPercentIndicator(
                                                alignment: MainAxisAlignment.center,
                                                width: MediaQuery.of(context).size.width - 310,
                                                animation: false,
                                                lineHeight: 8.0,
                                                // animationDuration: 2000,
                                                percent: 0.5,
                                                // center: Text("100.0%"),
                                                // linearStrokeCap: LinearStrokeCap.roundAll,
                                                linearStrokeCap: LinearStrokeCap.butt,
                                                progressColor: Colors.white,
                                                onAnimationEnd: (){
                                                  Navigator.pushReplacementNamed(context, '/login');
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  ),
                                ),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                          ),
                        ],
                        scrollDirection: Axis.horizontal,
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
                      height: ScreenUtil.instance.setHeight(110),
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
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, position) {
                          return Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  // color: const Color(0x33ffffff),
                                  height: ScreenUtil.instance.setHeight(60),
                                  width: ScreenUtil.instance.setWidth(70),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "80%",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: ScreenUtil.instance.setSp(15.0),
                                        ),
                                      ),
                                      Text(
                                        "Exforge",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: ScreenUtil.instance.setSp(15.0),
                                        ),
                                      ),
                                      Text(
                                        "1000mg",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: ScreenUtil.instance.setSp(8.0),
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
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
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
                // color: Colors.yellow,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffd17b58),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Appointments",
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
                                padding: const EdgeInsets.fromLTRB(8.0, 4.0, 0.0, 6.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Colors.white,
                                  ),
                                  // color: Colors.white,
                                  height: ScreenUtil.instance.setHeight(65),
                                  width: ScreenUtil.instance.setWidth(58),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "October",
                                        style: TextStyle(
                                          color: const Color(0xff387b96),
                                          fontSize: ScreenUtil.instance.setSp(10.0),
                                        ),
                                      ),
                                      Text(
                                        "09",
                                        style: TextStyle(
                                          color: const Color(0xff387b96),
                                          fontSize: ScreenUtil.instance.setSp(15.0),
                                        ),
                                      ),
                                      Text(
                                        "Friday",
                                        style: TextStyle(
                                          color: const Color(0xff387b96),
                                          fontSize: ScreenUtil.instance.setSp(8.0),
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(6.0, 4.0, 0.0, 6.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: const Color(0x33ffffff),
                                  ),
                                  // color: const Color(0x33ffffff),
                                  height: ScreenUtil.instance.setHeight(65),
                                  width: ScreenUtil.instance.setWidth(278),
                                  child: Column(
                                    children: <Widget>[
                                      Align(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(8.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            "Dr.Abbas",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: ScreenUtil.instance.setSp(14.0),
                                            ),
                                          ),
                                        ),
                                        alignment: Alignment.topLeft,
                                      ),
                                      Align(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(8.0, 2.0, 0.0, 0.0),
                                          child: Text(
                                            "Follow Up",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: ScreenUtil.instance.setSp(10.0),
                                            ),
                                          ),
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      Align(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 16.0, 2.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Online",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: ScreenUtil.instance.setSp(8.0),
                                                ),
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.watch_later_outlined,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "12:30 PM",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: ScreenUtil.instance.setSp(14.0),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          ),
                                        ),
                                        alignment: Alignment.bottomLeft,
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  ),
                                ),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.start,
                          );
                        },
                        itemCount: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 0.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          color: const Color(0xffd17b58),
                          onPressed: (){},
                          child: Text(
                            "New Appointments",
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.black26)
                          ),
                        ),
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
            ],
            onPageChanged: (int index) {
              _currentPageNotifier.value = index;
            },
          ),
          // _buildCircleIndicator2(),
        ],
      ),
    );
  }
}
