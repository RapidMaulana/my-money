import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp();

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
                margin: EdgeInsets.only(top: 10, bottom: 5, right: 45),
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
            Container(
              margin: EdgeInsets.only(left: 30, top: 30),
              child: Row(
                children: <Widget>[
                  TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff1f1f1f)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(vertical: 15, horizontal: 38)),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/dashboard');
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 24),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff5C85E6)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(vertical: 15, horizontal: 55)),
                        
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/dashboard');
                      },
                      child: Text(
                        'Regist Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                    ))
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
