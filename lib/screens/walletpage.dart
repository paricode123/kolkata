import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled26/screens/addpoint.dart';
import 'package:untitled26/screens/transfermoney.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}


class _WalletPageState extends State<WalletPage> {
  int selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('My Wallet'),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddPoint()),
                );
              },
              child: Text(
                'Add Fund',
                style: TextStyle(
                  color: Colors.yellow.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp, // Add ".sp" for font size scaling
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w), // Add ".w" for width scaling
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10.h), // Add ".h" for height scaling
            Center(
              child: Text(
                'Current Points :- 10',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold), // Add ".sp" for font size scaling
              ),
            ),
            SizedBox(height: 10.h), // Add ".h" for height scaling
            Divider(
              height: 2.0,
              color: Colors.black,
            ),
            SizedBox(height: 20.h), // Add ".h" for height scaling
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TransferMoney()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h), // Add ".w" and ".h" for width and height scaling
                    backgroundColor: Colors.blue,
                  ),
                  child: Text(
                    'Transfer',
                    style: TextStyle(fontSize: 16.sp), // Add ".sp" for font size scaling
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h), // Add ".w" and ".h" for width and height scaling
                    backgroundColor: Colors.green,
                  ),
                  child: Text(
                    'Withdraw',
                    style: TextStyle(fontSize: 16.sp), // Add ".sp" for font size scaling
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h), // Add ".h" for height scaling
            Divider(
              height: 2.0,
              color: Colors.black,
            ),
            SizedBox(height: 20.h), // Add ".h" for height scaling
            Text(
              'Payment Methods',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold), // Add ".sp" for font size scaling
            ),
            SizedBox(height: 20.h), // Add ".h" for height scaling
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
              title: Image.asset(
                'assets/images/phonepay.png',
                height: 50.h, // Add ".h" for height scaling
              ),
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
              title: Image.asset(
                'assets/images/googlepay.png',
                height: 40.h, // Add ".h" for height scaling
              ),
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
              title: Image.asset(
                'assets/images/paytm.png',
                height: 60.h, // Add ".h" for height scaling
              ),
            ),
            SizedBox(height: 20.h), // Add ".h" for height scaling
            Divider(
              height: 2.0,
              color: Colors.black,
            ),
            SizedBox(height: 20.h), // Add ".h" for height scaling
            Text(
              'My Transactions :-',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold), // Add ".sp" for font size scaling
            ),
            SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r), // Add ".r" for radius scaling
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Add money to Wallet',
                          style: TextStyle(
                            fontSize: 16.sp, // Add ".sp" for font size scaling
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.h), // Add ".h" for height scaling
                        Text(
                          '2023-07-10   10:15 am',
                          style: TextStyle(
                            fontSize: 13.sp, // Add ".sp" for font size scaling
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '10 Points',
                          style: TextStyle(
                            fontSize: 16.sp, // Add ".sp" for font size scaling
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.h), // Add ".h" for height scaling
                        Text(
                          'Trans5894',
                          style: TextStyle(
                            fontSize: 13.sp, // Add ".sp" for font size scaling
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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


