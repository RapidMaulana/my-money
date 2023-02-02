import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => new _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new MainAppAfter(),
      backgroundColor: Colors.black,
      title: new Text(
        'MYMONEY',
        style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 40),
      ),
    );
  }
}

class MainAppAfter extends StatelessWidget {
  const MainAppAfter();

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
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff1f1f1f))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/dashboard');
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
