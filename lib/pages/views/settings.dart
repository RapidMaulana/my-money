import 'package:flutter/material.dart';

void main() {
  runApp(SettingsApp());
}

class SettingsApp extends StatelessWidget {
  const SettingsApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                    iconSize: 24,
                    onPressed: () {
                      Navigator.pushNamed(context, '/dashboard');
                    },
                    icon: Image.asset('public/images/back.png')),
                Align(
                    widthFactor: 3,
                    alignment: Alignment.center,
                    child: Text(
                      'MYMONEY.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Alatsi'),
                    ))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 44, bottom: 27),
              child: Image.asset(
                'public/images/profile.png',
                width: 100,
                height: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 57),
              child: Text(
                'Dilan Abdulrahman',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text('Dilan Abdulrahman',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        )),
                    Text('Phone Number',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        )),
                    Text('+62 800 1222 2020',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        )),
                    Text('Date of birth',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        )),
                    Text('Choose',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        )),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 24),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Switch Account',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff1f1f1f)),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(vertical: 15, horizontal: 38)),
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff5C85E6)),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(vertical: 15, horizontal: 55)),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
