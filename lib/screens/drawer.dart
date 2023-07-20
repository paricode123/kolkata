import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("User Name", style: TextStyle(fontSize: 18.w)),
            accountEmail: Text("your.email@example.com", style: TextStyle(fontSize: 15.w)),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/dp.jpg"),
              backgroundColor: Colors.blue.shade100,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue, Colors.purple],
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          ListTile(
            leading: Icon(Icons.home, size: 25.w),
            title: Text('Home', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 18.w),
            onTap: () => {
    //Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Home_Page()),
            // )
            },
          ),
          ListTile(
            leading: Icon(Icons.lock, size: 25.w),
            title: Text('Change Password', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 18.w),
            // onTap: () => {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => MockTest()),
            //   )
            // },
          ),
          ListTile(
            leading: Icon(Icons.history_toggle_off, size: 25.w),
            title: Text('Bid History', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 18.w),
          ),
          ListTile(
            leading: Icon(Icons.history, size: 25.w),
            title: Text('Winning History', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 18.w),
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => TeamPage()),
              // )
            },
          ),
          ListTile(
            leading: Icon(Icons.games, size: 25.w),
            title: Text('Game Rate', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 18.w),
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => JobPage()),
              // )
            },
          ),
          ListTile(
            leading: Icon(Icons.play_arrow, size: 25.w),
            title: Text('How To Play', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 18.w),
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => ContactPage()),
              // )
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_phone_outlined, size: 25.w),
            title: Text('Contact Us', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 18.w),
            // onTap: () => {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => Home_Page()),
            //   )
            // },
          ),
          ListTile(
            leading: Icon(Icons.share, size: 25.w),
            title: Text('Share', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 18.w),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.star, size: 25.w),
            title: Text('Rate App', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 18.w),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.logout, size: 25.w),
            title: Text('Logout', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 18.w),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}