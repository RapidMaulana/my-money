
import 'package:flutter/material.dart';

void main() {
  runApp(HistoryApp());
}

class HistoryApp extends StatelessWidget {
  const HistoryApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Container(
                height: 106,
                width: 375,
                decoration:
                    BoxDecoration(color: Color.fromARGB(1, 92, 133, 230)),
                child: Row(children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/dashboard');
                      },
                      child: Image.asset(
                        'public/images/back.png',
                        width: 20,
                        height: 20,
                      )),
                  Text('History',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ]),
              )
            ],
          ),
        ));
  }
}
