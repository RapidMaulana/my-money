import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              child: Image.asset('public/images/Artwork.png'),
            ),
            Container(
                margin: EdgeInsets.only(top: 50, bottom: 5, right: 45),
                width: 300,
                child: Text(
                  "All your finances in one app",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 32),
                )),
            Container(
              margin: EdgeInsets.only(right: 100),
              width: 250,
              child: Text(
                "Manage your finances is our app. We do everything to keep your money save",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Text(
          'Regist Now',
          style: TextStyle(
              backgroundColor: Color(0x5C85E6),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 12),
        ),
      ),
    );
  }
}
