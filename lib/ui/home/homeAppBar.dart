import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatefulWidget {
  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
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
      height: ScreenUtil.instance.setHeight(56),
      width: ScreenUtil.instance.setWidth(360),
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
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'CHI Health Buddy',
                style: TextStyle(
                  color: const Color(0xff387b96),
                  fontSize: ScreenUtil.instance.setSp(20.0),
                ),
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.wifi_tethering_outlined,
                color: const Color(0xfffd3027),
                size: ScreenUtil.instance.setHeight(20.0),
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
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil.instance.setSp(12.0),
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
    );
  }
}
