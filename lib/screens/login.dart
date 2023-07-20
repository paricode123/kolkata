import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled26/screens/forgotpassword.dart';
import 'package:untitled26/screens/home.dart';
import 'package:untitled26/screens/signup.dart';
import 'package:untitled26/screens/textfield.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Container(
                height: 450.h, // Add ".h" for height scaling
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r), // Add ".r" for radius scaling
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue.shade400, Colors.purple.shade300],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(18.w), // Add ".w" for width scaling
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      reusableTextField(
                          "Phone Number", Icons.phone, true, _phoneController),
                       SizedBox(
                        height: 5.h
                      ),
                      SizedBox(height: 16.h), // Add ".h" for height scaling
                      reusableTextField(
                          "Enter Password", Icons.lock_outline, true, _passwordTextController),
                      SizedBox(height: 16.h), // Add ".h" for height scaling
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUp()),
                              );
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(color: Colors.white,),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ForgotPassword()),
                              );
                            },
                            child: Text(
                              'Forgot ?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 70.h), // Add ".h" for height scaling
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 47.h, // Add ".h" for height scaling
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.r), // Add ".r" for radius scaling
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 18.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
