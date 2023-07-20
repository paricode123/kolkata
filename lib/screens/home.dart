import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled26/screens/addpoint.dart';
import 'package:untitled26/screens/gamedetails.dart';
import 'package:untitled26/screens/walletpage.dart';

import 'drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  String operatingSystem = Platform.operatingSystem;

  final PageController _controller = PageController(initialPage: 0);
  late Timer _timer;
  int _currentPage = 0;
  bool isLastPage = false;

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_currentPage < 7) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'FF King',
              style: GoogleFonts.dancingScript(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.wallet,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WalletPage()),
                    );
                  },
                ),
                Text(
                  '10',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: NavDrawer(),
      body: Container(
        width: screenWidth,
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.25,
              child: PageView(
                controller: _controller,
                children: [
                  Image.asset('assets/images/game1.png', fit: BoxFit.cover),
                  Image.asset('assets/images/game2.png', fit: BoxFit.cover),
                  Image.asset('assets/images/game3.png', fit: BoxFit.cover),
                  Image.asset('assets/images/game4.png', fit: BoxFit.cover),
                  Image.asset('assets/images/game5.png', fit: BoxFit.cover),
                  Image.asset('assets/images/game6.png', fit: BoxFit.cover),
                  Image.asset('assets/images/game7.png', fit: BoxFit.cover),
                  Image.asset('assets/images/game8.png', fit: BoxFit.cover),
                ],
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                    isLastPage = page == 7;
                  });
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
            onTap:()
        {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddPoint()),
        );
        },
                    child: Container(
                      height: 55.h,
                      margin: EdgeInsets.all(10.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.shade300,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add Money',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5.w),
                          CircleAvatar(
                            child: Icon(
                              Icons.add_circle_outline_outlined,
                              color: Colors.blue.shade300,
                            ),
                            radius: 10.r,
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 55.h,
                    margin: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green.shade500,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WhatsApp',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/wp.png'),
                          radius: 15.r,
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 55.h,
                    margin: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Withdrawl',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        CircleAvatar(
                          child: Icon(
                            Icons.login,
                            color: Colors.blue,
                            size: 20.sp,
                          ),
                          radius: 13.r,
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.h),
            Divider(
              height: 2.0,
              color: Colors.grey,
            ),
            SizedBox(height: 3.h),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50.h,
                    margin: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23.r),
                        color: Colors.yellow.shade800),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'CHENNAI FF',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50.h,
                    margin: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23.r),
                        color: Colors.yellow.shade700),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'MAIN BAZAR',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50.h,
                    margin: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23.r),
                        color: Colors.yellow.shade700),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'COMMING SOON',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50.h,
                    margin: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23.r),
                        color: Colors.yellow.shade800),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'COMMING SOON',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.h),
            Divider(
              height: 2.0,
              color: Colors.grey,
            ),
            SizedBox(height: 3.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GameDetails()),
                        );
                      },
                      child: _buildListItem(
                        'Market Running',
                        'open 11:15am  close 12:15 pm',
                        'SRIDEVI',
                        Colors.green,
                      ),
                    ),
                    _buildListItem(
                      'Market Close',
                      'open 11:15am  close 12:15 pm',
                      'SRIDEVI',
                      Colors.red,
                    ),
                    _buildListItem(
                      'Market Close',
                      'open 11:15am  close 12:15 pm',
                      'SRIDEVI',
                      Colors.red,
                    ),
                    _buildListItem(
                      'Market Close',
                      'open 11:15am  close 12:15 pm',
                      'SRIDEVI',
                      Colors.red,
                    ),
                    _buildListItem(
                      'Market Running',
                      'open 11:15am  close 12:15 pm',
                      'SRIDEVI',
                      Colors.green,
                    ),
                    _buildListItem(
                      'Market Running',
                      'open 11:15am  close 12:15 pm',
                      'SRIDEVI',
                      Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildListItem(
    String status,
    String time,
    String topic,
    Color circleColor,
    ) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5.h),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purple],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: circleColor,
                  radius: 34.r,
                  child: Padding(
                    padding: EdgeInsets.all(9.0),
                    child: Text(
                      status,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      topic,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.white),
                        Icon(Icons.star, color: Colors.white),
                        Icon(Icons.star, color: Colors.white),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 27.r,
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            height: 40.h,
            color: Colors.yellow.shade700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.analytics_outlined, color: Colors.white),
                SizedBox(width: 15.w),
                Text(
                  'click here to open chart',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
