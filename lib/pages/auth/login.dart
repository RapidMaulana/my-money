import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 5, right: 45),
              width: 250,
              child: Text(
                "Hey,",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 32),
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 100),
                width: 250,
                child: Text(
                  "Login Now",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 32),
                )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'E-mail ')),
            )
          ],
        ),
      ),
    );
  }
}
