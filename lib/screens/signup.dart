import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled26/screens/textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text(
          'Sign Up',
          style: TextStyle(color: Colors.white),
        ),
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
            padding: EdgeInsets.all(18.w), // Add ".w" for width scaling
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                reusableTextField(
                    "Enter Username", Icons.person, true, _usernameController),
                SizedBox(height: 27.h), // Add ".h" for height scaling
                reusableTextField(
                    "Phone Number", Icons.phone, true, _phoneController),
                SizedBox(height: 27.h), // Add ".h" for height scaling
                reusableTextField(
                    "Enter Password", Icons.lock_outline, true, _passwordTextController),
                SizedBox(height: 27.h), // Add ".h" for height scaling
                reusableTextField(
                    "Confirm Password", Icons.lock_clock_outlined, true, _confirmController),
                SizedBox(height: 100.h), // Add ".h" for height scaling
                GestureDetector(
                  // onTap: (){
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => MyHomePage()),
                  //   );
                  // },
                  child: Container(
                    width: double.infinity,
                    height: 47.h, // Add ".h" for height scaling
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.r), // Add ".r" for radius scaling
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
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
      ),
    );
  }
}
