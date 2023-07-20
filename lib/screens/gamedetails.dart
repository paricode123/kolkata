import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GameDetails extends StatefulWidget {
  const GameDetails({Key? key}) : super(key: key);

  @override
  State<GameDetails> createState() => _GameDetailsState();
}

class _GameDetailsState extends State<GameDetails>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> images = [
    'assets/images/jodiidigit.png',
    'assets/images/singledigit.png',
    'assets/images/gm.jpg',
    'assets/images/gm.jpg',
    'assets/images/gm.jpg',
    'assets/images/gm.jpg',
    'assets/images/gm.jpg',
    'assets/images/gm.jpg',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 1, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Game Topic',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Games'),
          ],
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    _buildContainer(
                      'Single Digit',
                      () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => DentistPage()),
                        // );
                      },
                    ),
                    _buildContainer(
                      'Jodi Digit',
                      () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => HeartSpecialistPage()),
                        // );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    _buildContainer(
                      'Single Panna',
                      () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => DentistPage()),
                        // );
                      },
                    ),
                    _buildContainer(
                      'Double Panna',
                      () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => HeartSpecialistPage()),
                        // );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    _buildContainer(
                      'Triple Panna',
                      () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => HeartSpecialistPage()),
                        // );
                      },
                    ),
                    _buildContainer(
                      'Half Sangam',
                      () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => DentistPage()),
                        // );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    _buildContainer(
                      'Full Sangam',
                      () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => HeartSpecialistPage()),
                        // );
                      },
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildContainer(String text, VoidCallback onTap) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100.h,
        margin: EdgeInsets.all(17.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.purple],
          ),
          // border: Border.all(
          //   color: Colors.deepPurple.shade300,
          //   width: 2.0,
          // ),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.dancingScript(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
