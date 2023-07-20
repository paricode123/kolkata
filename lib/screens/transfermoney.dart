import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransferMoney extends StatefulWidget {
  const TransferMoney({Key? key}) : super(key: key);

  @override
  State<TransferMoney> createState() => _TransferMoneyState();
}

class _TransferMoneyState extends State<TransferMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Transfer Money'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w), // Add ".w" for width scaling
        child: Column(
          children: [
            SizedBox(height: 10.h), // Add ".h" for height scaling
            Center(
              child: Text(
                'Now you can transfer your point to another number',
                style: TextStyle(fontSize: 14.sp, color: Colors.grey), // Add ".sp" for font size scaling
              ),
            ),
            SizedBox(height: 50.h), // Add ".h" for height scaling
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.r), // Add ".r" for radius scaling
                ),
                hintText: 'Enter Phone Number',
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 30.h), // Add ".h" for height scaling
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.r), // Add ".r" for radius scaling
                ),
                hintText: 'Enter Points',
                prefixIcon: Icon(Icons.control_point),
              ),
            ),
            SizedBox(height: 70.h), // Add ".h" for height scaling
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HomePage()),
                // );
              },
              child: Container(
                width: double.infinity,
                height: 47.h, // Add ".h" for height scaling
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue, Colors.purple],
                  ),
                  borderRadius: BorderRadius.circular(30.r), // Add ".r" for radius scaling
                ),
                child: Center(
                  child: Text(
                    'Transfer Points',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 18.sp, // Add ".sp" for font size scaling
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}