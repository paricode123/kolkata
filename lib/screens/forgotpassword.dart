import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled26/screens/textfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue ,
        elevation: 0,
        title: Text('Forgot Password',style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(18.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                reusableTextField("Phone Number", Icons.phone, true,
                    _otpController),
                SizedBox(height: 27.h),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                SizedBox(height: 100.h),
                GestureDetector(
                  // onTap: (){
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => MyHomePage()),
                  //   );
                  // },
                  child: Container(
                    width: double.infinity,
                    height: 47.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.r)),
                    child: Center(
                      child: Text(
                        'Confirm',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 18.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
