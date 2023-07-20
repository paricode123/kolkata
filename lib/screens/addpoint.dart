import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPoint extends StatefulWidget {
  const AddPoint({Key? key}) : super(key: key);

  @override
  State<AddPoint> createState() => _AddPointState();
}

class _AddPointState extends State<AddPoint> {
  int selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Add Points'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Center(
              child: Text(
                'Now you can add points to your wallet',
                style: TextStyle(fontSize: 14.sp, color: Colors.grey),
              ),
            ),
            SizedBox(height: 30.h),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.r),
                ),
                hintText: 'Enter Amount',
                prefixIcon: Icon(Icons.monetization_on_outlined),
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              'Minimum Deposite Amount \$ 500',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20.h),
            ListTile(
              leading: Radio(
                value: 0,
                groupValue: selectedImageIndex,
                onChanged: (int? value) {
                  setState(() {
                    selectedImageIndex = value!;
                  });
                },
              ),
              title: Image.asset('assets/images/phonepay.png',height: 50.h,),
            ),
            ListTile(
              leading: Radio(
                value: 1,
                groupValue: selectedImageIndex,
                onChanged: (int? value) {
                  setState(() {
                    selectedImageIndex = value!;
                  });
                },
              ),
              title: Image.asset('assets/images/googlepay.png',height: 40.h,),
            ),
            ListTile(
              leading: Radio(
                value: 2,
                groupValue: selectedImageIndex,
                onChanged: (int? value) {
                  setState(() {
                    selectedImageIndex = value!;
                  });
                },
              ),
              title: Image.asset('assets/images/paytm.png',height: 60.h,),
            ),
            SizedBox(height: 70.h),
            GestureDetector(
              onTap: () {
                // Navigator.push(

                //   context,

                //   MaterialPageRoute(builder: (context) => HomePage()),

                // );
              },
              child: Container(
                width: double.infinity,
                height: 47.h,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue, Colors.purple],
                    ),
                    borderRadius: BorderRadius.circular(30.r)),
                child: Center(
                  child: Text(
                    'Proceed',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
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
