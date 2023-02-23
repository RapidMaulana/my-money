import 'package:flutter/material.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp();
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
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            //   child: TextFormField(
            //       decoration: InputDecoration(
            //           border: UnderlineInputBorder(), labelText: 'E-mail ')),
            // )
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)),
                    fillColor: Colors.grey.shade200,
                    filled: true),
              ),
            )
          ],
        ),
      ),
    );
  }
}
